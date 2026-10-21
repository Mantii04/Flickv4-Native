package cz.msebera.android.httpclient.pool;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.concurrent.FutureCallback;
import cz.msebera.android.httpclient.pool.PoolEntry;
import cz.msebera.android.httpclient.util.Args;
import cz.msebera.android.httpclient.util.Asserts;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
/* loaded from: classes2.dex */
public abstract class AbstractConnPool<T, C, E extends PoolEntry<T, C>> implements ConnPool<T, E>, ConnPoolControl<T> {
    private final LinkedList<E> available;
    private final Condition condition;
    private final ConnFactory<T, C> connFactory;
    private volatile int defaultMaxPerRoute;
    private volatile boolean isShutDown;
    private final Set<E> leased;
    private final Lock lock;
    private final Map<T, Integer> maxPerRoute;
    private volatile int maxTotal;
    private final LinkedList<Future<E>> pending;
    private final Map<T, RouteSpecificPool<T, C, E>> routeToPool;
    private volatile int validateAfterInactivity;

    public AbstractConnPool(ConnFactory<T, C> connFactory, int i2, int i7) {
        this.connFactory = (ConnFactory) Args.notNull(connFactory, "Connection factory");
        this.defaultMaxPerRoute = Args.positive(i2, "Max per route value");
        this.maxTotal = Args.positive(i7, "Max total value");
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
        this.routeToPool = new HashMap();
        this.leased = new HashSet();
        this.available = new LinkedList<>();
        this.pending = new LinkedList<>();
        this.maxPerRoute = new HashMap();
    }

    private int getMax(T t6) {
        Integer num = this.maxPerRoute.get(t6);
        return num != null ? num.intValue() : this.defaultMaxPerRoute;
    }

    private RouteSpecificPool<T, C, E> getPool(final T t6) {
        RouteSpecificPool<T, C, E> routeSpecificPool = this.routeToPool.get(t6);
        if (routeSpecificPool != null) {
            return routeSpecificPool;
        }
        RouteSpecificPool<T, C, E> routeSpecificPool2 = (RouteSpecificPool<T, C, E>) new RouteSpecificPool<T, C, E>(t6) { // from class: cz.msebera.android.httpclient.pool.AbstractConnPool.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // cz.msebera.android.httpclient.pool.RouteSpecificPool
            public E createEntry(C c7) {
                return (E) AbstractConnPool.this.createEntry(t6, c7);
            }
        };
        this.routeToPool.put(t6, routeSpecificPool2);
        return routeSpecificPool2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public E getPoolEntryBlocking(T t6, Object obj, long j7, TimeUnit timeUnit, Future<E> future) throws IOException, InterruptedException, TimeoutException {
        E e3;
        Date date = j7 > 0 ? new Date(timeUnit.toMillis(j7) + System.currentTimeMillis()) : null;
        this.lock.lock();
        try {
            RouteSpecificPool pool = getPool(t6);
            while (true) {
                boolean z6 = true;
                Asserts.check(!this.isShutDown, "Connection pool shut down");
                while (true) {
                    e3 = (E) pool.getFree(obj);
                    if (e3 == null) {
                        break;
                    }
                    if (e3.isExpired(System.currentTimeMillis())) {
                        e3.close();
                    }
                    if (!e3.isClosed()) {
                        break;
                    }
                    this.available.remove(e3);
                    pool.free(e3, false);
                }
                if (e3 != null) {
                    this.available.remove(e3);
                    this.leased.add(e3);
                    onReuse(e3);
                    this.lock.unlock();
                    return e3;
                }
                int max = getMax(t6);
                int max2 = Math.max(0, (pool.getAllocatedCount() + 1) - max);
                if (max2 > 0) {
                    for (int i2 = 0; i2 < max2; i2++) {
                        PoolEntry lastUsed = pool.getLastUsed();
                        if (lastUsed == null) {
                            break;
                        }
                        lastUsed.close();
                        this.available.remove(lastUsed);
                        pool.remove(lastUsed);
                    }
                }
                if (pool.getAllocatedCount() < max) {
                    int max3 = Math.max(this.maxTotal - this.leased.size(), 0);
                    if (max3 > 0) {
                        if (this.available.size() > max3 - 1 && !this.available.isEmpty()) {
                            E removeLast = this.available.removeLast();
                            removeLast.close();
                            getPool(removeLast.getRoute()).remove(removeLast);
                        }
                        E e7 = (E) pool.add(this.connFactory.create(t6));
                        this.leased.add(e7);
                        this.lock.unlock();
                        return e7;
                    }
                }
                try {
                    if (future.isCancelled()) {
                        throw new InterruptedException("Operation interrupted");
                    }
                    pool.queue(future);
                    this.pending.add(future);
                    if (date != null) {
                        z6 = this.condition.awaitUntil(date);
                    } else {
                        this.condition.await();
                    }
                    if (future.isCancelled()) {
                        throw new InterruptedException("Operation interrupted");
                    }
                    pool.unqueue(future);
                    this.pending.remove(future);
                    if (!z6 && date != null && date.getTime() <= System.currentTimeMillis()) {
                        throw new TimeoutException("Timeout waiting for connection");
                    }
                } finally {
                    pool.unqueue(future);
                    this.pending.remove(future);
                }
            }
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    private void purgePoolMap() {
        Iterator<Map.Entry<T, RouteSpecificPool<T, C, E>>> it = this.routeToPool.entrySet().iterator();
        while (it.hasNext()) {
            RouteSpecificPool<T, C, E> value = it.next().getValue();
            if (value.getPendingCount() + value.getAllocatedCount() == 0) {
                it.remove();
            }
        }
    }

    public void closeExpired() {
        final long currentTimeMillis = System.currentTimeMillis();
        enumAvailable(new PoolEntryCallback<T, C>() { // from class: cz.msebera.android.httpclient.pool.AbstractConnPool.4
            @Override // cz.msebera.android.httpclient.pool.PoolEntryCallback
            public void process(PoolEntry<T, C> poolEntry) {
                if (poolEntry.isExpired(currentTimeMillis)) {
                    poolEntry.close();
                }
            }
        });
    }

    public void closeIdle(long j7, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j7);
        if (millis < 0) {
            millis = 0;
        }
        final long currentTimeMillis = System.currentTimeMillis() - millis;
        enumAvailable(new PoolEntryCallback<T, C>() { // from class: cz.msebera.android.httpclient.pool.AbstractConnPool.3
            @Override // cz.msebera.android.httpclient.pool.PoolEntryCallback
            public void process(PoolEntry<T, C> poolEntry) {
                if (poolEntry.getUpdated() <= currentTimeMillis) {
                    poolEntry.close();
                }
            }
        });
    }

    public abstract E createEntry(T t6, C c7);

    public void enumAvailable(PoolEntryCallback<T, C> poolEntryCallback) {
        this.lock.lock();
        try {
            Iterator<E> it = this.available.iterator();
            while (it.hasNext()) {
                E next = it.next();
                poolEntryCallback.process(next);
                if (next.isClosed()) {
                    getPool(next.getRoute()).remove(next);
                    it.remove();
                }
            }
            purgePoolMap();
            this.lock.unlock();
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    public void enumLeased(PoolEntryCallback<T, C> poolEntryCallback) {
        this.lock.lock();
        try {
            Iterator<E> it = this.leased.iterator();
            while (it.hasNext()) {
                poolEntryCallback.process(it.next());
            }
        } finally {
            this.lock.unlock();
        }
    }

    @Override // cz.msebera.android.httpclient.pool.ConnPoolControl
    public int getDefaultMaxPerRoute() {
        this.lock.lock();
        try {
            return this.defaultMaxPerRoute;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // cz.msebera.android.httpclient.pool.ConnPoolControl
    public int getMaxPerRoute(T t6) {
        Args.notNull(t6, "Route");
        this.lock.lock();
        try {
            return getMax(t6);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // cz.msebera.android.httpclient.pool.ConnPoolControl
    public int getMaxTotal() {
        this.lock.lock();
        try {
            return this.maxTotal;
        } finally {
            this.lock.unlock();
        }
    }

    public Set<T> getRoutes() {
        this.lock.lock();
        try {
            return new HashSet(this.routeToPool.keySet());
        } finally {
            this.lock.unlock();
        }
    }

    @Override // cz.msebera.android.httpclient.pool.ConnPoolControl
    public PoolStats getStats(T t6) {
        Args.notNull(t6, "Route");
        this.lock.lock();
        try {
            RouteSpecificPool<T, C, E> pool = getPool(t6);
            return new PoolStats(pool.getLeasedCount(), pool.getPendingCount(), pool.getAvailableCount(), getMax(t6));
        } finally {
            this.lock.unlock();
        }
    }

    @Override // cz.msebera.android.httpclient.pool.ConnPoolControl
    public PoolStats getTotalStats() {
        this.lock.lock();
        try {
            return new PoolStats(this.leased.size(), this.pending.size(), this.available.size(), this.maxTotal);
        } finally {
            this.lock.unlock();
        }
    }

    public int getValidateAfterInactivity() {
        return this.validateAfterInactivity;
    }

    public boolean isShutdown() {
        return this.isShutDown;
    }

    @Override // cz.msebera.android.httpclient.pool.ConnPool
    public Future<E> lease(final T t6, final Object obj, final FutureCallback<E> futureCallback) {
        Args.notNull(t6, "Route");
        Asserts.check(!this.isShutDown, "Connection pool shut down");
        return (Future<E>) new Future<E>() { // from class: cz.msebera.android.httpclient.pool.AbstractConnPool.2
            private final AtomicBoolean cancelled = new AtomicBoolean(false);
            private final AtomicBoolean done = new AtomicBoolean(false);
            private final AtomicReference<E> entryRef = new AtomicReference<>(null);

            @Override // java.util.concurrent.Future
            public boolean cancel(boolean z6) {
                if (!this.cancelled.compareAndSet(false, true)) {
                    return false;
                }
                this.done.set(true);
                AbstractConnPool.this.lock.lock();
                try {
                    AbstractConnPool.this.condition.signalAll();
                    AbstractConnPool.this.lock.unlock();
                    FutureCallback futureCallback2 = futureCallback;
                    if (futureCallback2 != null) {
                        futureCallback2.cancelled();
                    }
                    return true;
                } catch (Throwable th) {
                    AbstractConnPool.this.lock.unlock();
                    throw th;
                }
            }

            @Override // java.util.concurrent.Future
            public boolean isCancelled() {
                return this.cancelled.get();
            }

            @Override // java.util.concurrent.Future
            public boolean isDone() {
                return this.done.get();
            }

            @Override // java.util.concurrent.Future
            public E get() throws InterruptedException, ExecutionException {
                try {
                    return (E) get(0L, TimeUnit.MILLISECONDS);
                } catch (TimeoutException e3) {
                    throw new ExecutionException(e3);
                }
            }

            @Override // java.util.concurrent.Future
            public E get(long j7, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
                AnonymousClass2 anonymousClass2;
                E e3;
                E e7 = this.entryRef.get();
                if (e7 != null) {
                    return e7;
                }
                synchronized (this) {
                    while (true) {
                        try {
                            anonymousClass2 = this;
                            long j8 = j7;
                            TimeUnit timeUnit2 = timeUnit;
                            try {
                                try {
                                    e3 = (E) AbstractConnPool.this.getPoolEntryBlocking(t6, obj, j8, timeUnit2, anonymousClass2);
                                    if (AbstractConnPool.this.validateAfterInactivity <= 0 || e3.getUpdated() + AbstractConnPool.this.validateAfterInactivity > System.currentTimeMillis() || AbstractConnPool.this.validate(e3)) {
                                        break;
                                    }
                                    e3.close();
                                    AbstractConnPool.this.release((AbstractConnPool) e3, false);
                                    j7 = j8;
                                    timeUnit = timeUnit2;
                                } catch (Throwable th) {
                                    th = th;
                                    throw th;
                                }
                            } catch (IOException e8) {
                                e = e8;
                                IOException iOException = e;
                                anonymousClass2.done.set(true);
                                FutureCallback futureCallback2 = futureCallback;
                                if (futureCallback2 != null) {
                                    futureCallback2.failed(iOException);
                                }
                                throw new ExecutionException(iOException);
                            }
                        } catch (IOException e9) {
                            e = e9;
                            anonymousClass2 = this;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    anonymousClass2.entryRef.set(e3);
                    anonymousClass2.done.set(true);
                    AbstractConnPool.this.onLease(e3);
                    FutureCallback futureCallback3 = futureCallback;
                    if (futureCallback3 != null) {
                        futureCallback3.completed(e3);
                    }
                    return e3;
                }
            }
        };
    }

    public void onLease(E e3) {
    }

    public void onRelease(E e3) {
    }

    public void onReuse(E e3) {
    }

    @Override // cz.msebera.android.httpclient.pool.ConnPoolControl
    public void setDefaultMaxPerRoute(int i2) {
        Args.positive(i2, "Max per route value");
        this.lock.lock();
        try {
            this.defaultMaxPerRoute = i2;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // cz.msebera.android.httpclient.pool.ConnPoolControl
    public void setMaxPerRoute(T t6, int i2) {
        Args.notNull(t6, "Route");
        this.lock.lock();
        try {
            if (i2 > -1) {
                this.maxPerRoute.put(t6, Integer.valueOf(i2));
            } else {
                this.maxPerRoute.remove(t6);
            }
            this.lock.unlock();
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    @Override // cz.msebera.android.httpclient.pool.ConnPoolControl
    public void setMaxTotal(int i2) {
        Args.positive(i2, "Max value");
        this.lock.lock();
        try {
            this.maxTotal = i2;
        } finally {
            this.lock.unlock();
        }
    }

    public void setValidateAfterInactivity(int i2) {
        this.validateAfterInactivity = i2;
    }

    public void shutdown() throws IOException {
        if (this.isShutDown) {
            return;
        }
        this.isShutDown = true;
        this.lock.lock();
        try {
            Iterator<E> it = this.available.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            Iterator<E> it2 = this.leased.iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
            Iterator<RouteSpecificPool<T, C, E>> it3 = this.routeToPool.values().iterator();
            while (it3.hasNext()) {
                it3.next().shutdown();
            }
            this.routeToPool.clear();
            this.leased.clear();
            this.available.clear();
            this.lock.unlock();
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    public String toString() {
        this.lock.lock();
        try {
            return "[leased: " + this.leased + "][available: " + this.available + "][pending: " + this.pending + "]";
        } finally {
            this.lock.unlock();
        }
    }

    public boolean validate(E e3) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cz.msebera.android.httpclient.pool.ConnPool
    public void release(E e3, boolean z6) {
        this.lock.lock();
        try {
            if (this.leased.remove(e3)) {
                RouteSpecificPool pool = getPool(e3.getRoute());
                pool.free(e3, z6);
                if (!z6 || this.isShutDown) {
                    e3.close();
                } else {
                    this.available.addFirst(e3);
                }
                onRelease(e3);
                Future<E> nextPending = pool.nextPending();
                if (nextPending != null) {
                    this.pending.remove(nextPending);
                } else {
                    nextPending = this.pending.poll();
                }
                if (nextPending != null) {
                    this.condition.signalAll();
                }
            }
            this.lock.unlock();
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    public Future<E> lease(T t6, Object obj) {
        return lease(t6, obj, null);
    }
}
