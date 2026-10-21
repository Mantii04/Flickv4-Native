package androidx.concurrent.futures;

import V3.F;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public abstract class i implements F {
    static final a ATOMIC_HELPER;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;
    volatile d listeners;
    volatile Object value;
    volatile h waiters;
    static final boolean GENERATE_CANCELLATION_CAUSES = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger log = Logger.getLogger(i.class.getName());

    static {
        a gVar;
        try {
            gVar = new e(AtomicReferenceFieldUpdater.newUpdater(h.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY), AtomicReferenceFieldUpdater.newUpdater(h.class, h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(i.class, h.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(i.class, d.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, FirebaseAnalytics.Param.VALUE));
            th = null;
        } catch (Throwable th) {
            th = th;
            gVar = new g();
        }
        ATOMIC_HELPER = gVar;
        if (th != null) {
            log.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        NULL = new Object();
    }

    public static <T> T checkNotNull(T t6) {
        t6.getClass();
        return t6;
    }

    public static void complete(i iVar) {
        d dVar;
        d dVar2;
        d dVar3 = null;
        while (true) {
            h hVar = iVar.waiters;
            if (ATOMIC_HELPER.c(iVar, hVar, h.f5215c)) {
                while (hVar != null) {
                    Thread thread = hVar.f5216a;
                    if (thread != null) {
                        hVar.f5216a = null;
                        LockSupport.unpark(thread);
                    }
                    hVar = hVar.f5217b;
                }
                iVar.afterDone();
                do {
                    dVar = iVar.listeners;
                } while (!ATOMIC_HELPER.a(iVar, dVar, d.f5204d));
                while (true) {
                    dVar2 = dVar3;
                    dVar3 = dVar;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar = dVar3.f5207c;
                    dVar3.f5207c = dVar2;
                }
                while (dVar2 != null) {
                    dVar3 = dVar2.f5207c;
                    Runnable runnable = dVar2.f5205a;
                    if (runnable instanceof f) {
                        f fVar = (f) runnable;
                        iVar = fVar.f5213b;
                        if (iVar.value == fVar) {
                            if (ATOMIC_HELPER.b(iVar, fVar, getFutureValue(fVar.f5214e))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        d(runnable, dVar2.f5206b);
                    }
                    dVar2 = dVar3;
                }
                return;
            }
        }
    }

    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e3) {
            log.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e3);
        }
    }

    public static Object e(Object obj) {
        if (obj instanceof b) {
            CancellationException cancellationException = ((b) obj).f5201b;
            CancellationException cancellationException2 = new CancellationException("Task was cancelled.");
            cancellationException2.initCause(cancellationException);
            throw cancellationException2;
        }
        if (obj instanceof c) {
            throw new ExecutionException(((c) obj).f5203a);
        }
        if (obj == NULL) {
            return null;
        }
        return obj;
    }

    public static Object getFutureValue(F f3) {
        if (f3 instanceof i) {
            Object obj = ((i) f3).value;
            if (!(obj instanceof b)) {
                return obj;
            }
            b bVar = (b) obj;
            return bVar.f5200a ? bVar.f5201b != null ? new b(false, bVar.f5201b) : b.f5199d : obj;
        }
        boolean isCancelled = f3.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && isCancelled) {
            return b.f5199d;
        }
        try {
            Object uninterruptibly = getUninterruptibly(f3);
            return uninterruptibly == null ? NULL : uninterruptibly;
        } catch (CancellationException e3) {
            if (isCancelled) {
                return new b(false, e3);
            }
            return new c(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + f3, e3));
        } catch (ExecutionException e7) {
            return new c(e7.getCause());
        } catch (Throwable th) {
            return new c(th);
        }
    }

    public static <V> V getUninterruptibly(Future<V> future) throws ExecutionException {
        V v6;
        boolean z6 = false;
        while (true) {
            try {
                v6 = future.get();
                break;
            } catch (InterruptedException unused) {
                z6 = true;
            } catch (Throwable th) {
                if (z6) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z6) {
            Thread.currentThread().interrupt();
        }
        return v6;
    }

    @Override // V3.F
    public final void addListener(Runnable runnable, Executor executor) {
        checkNotNull(runnable);
        checkNotNull(executor);
        d dVar = this.listeners;
        d dVar2 = d.f5204d;
        if (dVar != dVar2) {
            d dVar3 = new d(runnable, executor);
            do {
                dVar3.f5207c = dVar;
                if (ATOMIC_HELPER.a(this, dVar, dVar3)) {
                    return;
                } else {
                    dVar = this.listeners;
                }
            } while (dVar != dVar2);
        }
        d(runnable, executor);
    }

    public void afterDone() {
    }

    public final void b(StringBuilder sb) {
        try {
            Object uninterruptibly = getUninterruptibly(this);
            sb.append("SUCCESS, result=[");
            sb.append(uninterruptibly == this ? "this future" : String.valueOf(uninterruptibly));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e3) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e3.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e7) {
            sb.append("FAILURE, cause=[");
            sb.append(e7.getCause());
            sb.append("]");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0058, code lost:
    
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.value
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L8
            r3 = r1
            goto L9
        L8:
            r3 = r2
        L9:
            boolean r4 = r0 instanceof androidx.concurrent.futures.f
            r3 = r3 | r4
            if (r3 == 0) goto L60
            boolean r3 = androidx.concurrent.futures.i.GENERATE_CANCELLATION_CAUSES
            if (r3 == 0) goto L1f
            androidx.concurrent.futures.b r3 = new androidx.concurrent.futures.b
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r3.<init>(r8, r4)
            goto L26
        L1f:
            if (r8 == 0) goto L24
            androidx.concurrent.futures.b r3 = androidx.concurrent.futures.b.f5198c
            goto L26
        L24:
            androidx.concurrent.futures.b r3 = androidx.concurrent.futures.b.f5199d
        L26:
            r4 = r7
            r5 = r2
        L28:
            androidx.concurrent.futures.a r6 = androidx.concurrent.futures.i.ATOMIC_HELPER
            boolean r6 = r6.b(r4, r0, r3)
            if (r6 == 0) goto L59
            if (r8 == 0) goto L35
            r4.interruptTask()
        L35:
            complete(r4)
            boolean r4 = r0 instanceof androidx.concurrent.futures.f
            if (r4 == 0) goto L58
            androidx.concurrent.futures.f r0 = (androidx.concurrent.futures.f) r0
            V3.F r0 = r0.f5214e
            boolean r4 = r0 instanceof androidx.concurrent.futures.i
            if (r4 == 0) goto L55
            r4 = r0
            androidx.concurrent.futures.i r4 = (androidx.concurrent.futures.i) r4
            java.lang.Object r0 = r4.value
            if (r0 != 0) goto L4d
            r5 = r1
            goto L4e
        L4d:
            r5 = r2
        L4e:
            boolean r6 = r0 instanceof androidx.concurrent.futures.f
            r5 = r5 | r6
            if (r5 == 0) goto L58
            r5 = r1
            goto L28
        L55:
            r0.cancel(r8)
        L58:
            return r1
        L59:
            java.lang.Object r0 = r4.value
            boolean r6 = r0 instanceof androidx.concurrent.futures.f
            if (r6 != 0) goto L28
            return r5
        L60:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.concurrent.futures.i.cancel(boolean):boolean");
    }

    public final void f(h hVar) {
        hVar.f5216a = null;
        while (true) {
            h hVar2 = this.waiters;
            if (hVar2 == h.f5215c) {
                return;
            }
            h hVar3 = null;
            while (hVar2 != null) {
                h hVar4 = hVar2.f5217b;
                if (hVar2.f5216a != null) {
                    hVar3 = hVar2;
                } else if (hVar3 != null) {
                    hVar3.f5217b = hVar4;
                    if (hVar3.f5216a == null) {
                        break;
                    }
                } else if (!ATOMIC_HELPER.c(this, hVar2, hVar4)) {
                    break;
                }
                hVar2 = hVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j7, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        boolean z6;
        long nanos = timeUnit.toNanos(j7);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof f))) {
            return e(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            h hVar = this.waiters;
            h hVar2 = h.f5215c;
            if (hVar != hVar2) {
                h hVar3 = new h();
                z6 = true;
                do {
                    a aVar = ATOMIC_HELPER;
                    aVar.d(hVar3, hVar);
                    if (aVar.c(this, hVar, hVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                f(hVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof f))) {
                                return e(obj2);
                            }
                            nanos = nanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        f(hVar3);
                    } else {
                        hVar = this.waiters;
                    }
                } while (hVar != hVar2);
            }
            return e(this.value);
        }
        z6 = true;
        while (nanos > 0) {
            Object obj3 = this.value;
            if ((obj3 != null ? z6 : false) && (!(obj3 instanceof f))) {
                return e(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String iVar = toString();
        String obj4 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = obj4.toLowerCase(locale);
        StringBuilder r6 = A.i.r(j7, "Waited ", StringUtils.SPACE);
        r6.append(timeUnit.toString().toLowerCase(locale));
        String sb = r6.toString();
        if (nanos + 1000 < 0) {
            String B6 = A.i.B(sb, " (plus ");
            long j8 = -nanos;
            long convert = timeUnit.convert(j8, TimeUnit.NANOSECONDS);
            long nanos2 = j8 - timeUnit.toNanos(convert);
            boolean z7 = (convert == 0 || nanos2 > 1000) ? z6 : false;
            if (convert > 0) {
                String str = B6 + convert + StringUtils.SPACE + lowerCase;
                if (z7) {
                    str = A.i.B(str, ",");
                }
                B6 = A.i.B(str, StringUtils.SPACE);
            }
            if (z7) {
                B6 = B6 + nanos2 + " nanoseconds ";
            }
            sb = A.i.B(B6, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(A.i.B(sb, " but future completed as timeout expired"));
        }
        throw new TimeoutException(A.i.C(sb, " for ", iVar));
    }

    public void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.value instanceof b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof f)) & (this.value != null);
    }

    public final void maybePropagateCancellationTo(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String pendingToString() {
        Object obj = this.value;
        if (obj instanceof f) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            F f3 = ((f) obj).f5214e;
            return A.i.o(sb, f3 == this ? "this future" : String.valueOf(f3), "]");
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public boolean set(Object obj) {
        if (obj == null) {
            obj = NULL;
        }
        if (!ATOMIC_HELPER.b(this, null, obj)) {
            return false;
        }
        complete(this);
        return true;
    }

    public boolean setException(Throwable th) {
        if (!ATOMIC_HELPER.b(this, null, new c((Throwable) checkNotNull(th)))) {
            return false;
        }
        complete(this);
        return true;
    }

    public boolean setFuture(F f3) {
        c cVar;
        checkNotNull(f3);
        Object obj = this.value;
        if (obj == null) {
            if (f3.isDone()) {
                if (ATOMIC_HELPER.b(this, null, getFutureValue(f3))) {
                    complete(this);
                    return true;
                }
                return false;
            }
            f fVar = new f(this, f3);
            if (ATOMIC_HELPER.b(this, null, fVar)) {
                try {
                    f3.addListener(fVar, DirectExecutor.f5196b);
                    return true;
                } catch (Throwable th) {
                    try {
                        cVar = new c(th);
                    } catch (Throwable unused) {
                        cVar = c.f5202b;
                    }
                    ATOMIC_HELPER.b(this, fVar, cVar);
                    return true;
                }
            }
            obj = this.value;
        }
        if (obj instanceof b) {
            f3.cancel(((b) obj).f5200a);
        }
        return false;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            b(sb);
        } else {
            try {
                str = pendingToString();
            } catch (RuntimeException e3) {
                str = "Exception thrown from implementation: " + e3.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                b(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof b) && ((b) obj).f5200a;
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof f))) {
                return e(obj2);
            }
            h hVar = this.waiters;
            h hVar2 = h.f5215c;
            if (hVar != hVar2) {
                h hVar3 = new h();
                do {
                    a aVar = ATOMIC_HELPER;
                    aVar.d(hVar3, hVar);
                    if (aVar.c(this, hVar, hVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.value;
                            } else {
                                f(hVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof f))));
                        return e(obj);
                    }
                    hVar = this.waiters;
                } while (hVar != hVar2);
            }
            return e(this.value);
        }
        throw new InterruptedException();
    }
}
