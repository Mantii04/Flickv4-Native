package okhttp3.internal.connection;

import A.i;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.Address;
import okhttp3.ConnectionPool;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.platform.Platform;
import v5.p;

/* loaded from: classes2.dex */
public final class RealConnectionPool {
    public static final Companion Companion = new Companion(null);
    private final TaskQueue cleanupQueue;
    private final RealConnectionPool$cleanupTask$1 cleanupTask;
    private final ConcurrentLinkedQueue<RealConnection> connections;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final RealConnectionPool get(ConnectionPool connectionPool) {
            j.checkNotNullParameter(connectionPool, "connectionPool");
            return connectionPool.getDelegate$okhttp();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [okhttp3.internal.connection.RealConnectionPool$cleanupTask$1] */
    public RealConnectionPool(TaskRunner taskRunner, int i2, long j7, TimeUnit timeUnit) {
        j.checkNotNullParameter(taskRunner, "taskRunner");
        j.checkNotNullParameter(timeUnit, "timeUnit");
        this.maxIdleConnections = i2;
        this.keepAliveDurationNs = timeUnit.toNanos(j7);
        this.cleanupQueue = taskRunner.newQueue();
        final String o6 = i.o(new StringBuilder(), Util.okHttpName, " ConnectionPool");
        this.cleanupTask = new Task(o6) { // from class: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                return RealConnectionPool.this.cleanup(System.nanoTime());
            }
        };
        this.connections = new ConcurrentLinkedQueue<>();
        if (j7 <= 0) {
            throw new IllegalArgumentException(i.i("keepAliveDuration <= 0: ", j7).toString());
        }
    }

    private final int pruneAndGetAllocationCount(RealConnection realConnection, long j7) {
        if (Util.assertionsEnabled && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + realConnection);
        }
        List<Reference<RealCall>> calls = realConnection.getCalls();
        int i2 = 0;
        while (i2 < calls.size()) {
            Reference<RealCall> reference = calls.get(i2);
            if (reference.get() != null) {
                i2++;
            } else {
                j.checkNotNull(reference, "null cannot be cast to non-null type okhttp3.internal.connection.RealCall.CallReference");
                Platform.Companion.get().logCloseableLeak("A connection to " + realConnection.route().address().url() + " was leaked. Did you forget to close a response body?", ((RealCall.CallReference) reference).getCallStackTrace());
                calls.remove(i2);
                realConnection.setNoNewExchanges(true);
                if (calls.isEmpty()) {
                    realConnection.setIdleAtNs$okhttp(j7 - this.keepAliveDurationNs);
                    return 0;
                }
            }
        }
        return calls.size();
    }

    public final boolean callAcquirePooledConnection(Address address, RealCall call, List<Route> list, boolean z6) {
        j.checkNotNullParameter(address, "address");
        j.checkNotNullParameter(call, "call");
        Iterator<RealConnection> it = this.connections.iterator();
        while (it.hasNext()) {
            RealConnection connection = it.next();
            j.checkNotNullExpressionValue(connection, "connection");
            synchronized (connection) {
                if (z6) {
                    try {
                        if (!connection.isMultiplexed$okhttp()) {
                            continue;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (connection.isEligible$okhttp(address, list)) {
                    call.acquireConnectionNoEvents(connection);
                    return true;
                }
            }
        }
        return false;
    }

    public final long cleanup(long j7) {
        Iterator<RealConnection> it = this.connections.iterator();
        int i2 = 0;
        long j8 = Long.MIN_VALUE;
        RealConnection realConnection = null;
        int i7 = 0;
        while (it.hasNext()) {
            RealConnection connection = it.next();
            j.checkNotNullExpressionValue(connection, "connection");
            synchronized (connection) {
                if (pruneAndGetAllocationCount(connection, j7) > 0) {
                    i7++;
                } else {
                    i2++;
                    long idleAtNs$okhttp = j7 - connection.getIdleAtNs$okhttp();
                    if (idleAtNs$okhttp > j8) {
                        realConnection = connection;
                        j8 = idleAtNs$okhttp;
                    }
                }
            }
        }
        long j9 = this.keepAliveDurationNs;
        if (j8 < j9 && i2 <= this.maxIdleConnections) {
            if (i2 > 0) {
                return j9 - j8;
            }
            if (i7 > 0) {
                return j9;
            }
            return -1L;
        }
        j.checkNotNull(realConnection);
        synchronized (realConnection) {
            if (!realConnection.getCalls().isEmpty()) {
                return 0L;
            }
            if (realConnection.getIdleAtNs$okhttp() + j8 != j7) {
                return 0L;
            }
            realConnection.setNoNewExchanges(true);
            this.connections.remove(realConnection);
            Util.closeQuietly(realConnection.socket());
            if (this.connections.isEmpty()) {
                this.cleanupQueue.cancelAll();
            }
            return 0L;
        }
    }

    public final boolean connectionBecameIdle(RealConnection connection) {
        j.checkNotNullParameter(connection, "connection");
        if (Util.assertionsEnabled && !Thread.holdsLock(connection)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
        }
        if (!connection.getNoNewExchanges() && this.maxIdleConnections != 0) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
            return false;
        }
        connection.setNoNewExchanges(true);
        this.connections.remove(connection);
        if (this.connections.isEmpty()) {
            this.cleanupQueue.cancelAll();
        }
        return true;
    }

    public final int connectionCount() {
        return this.connections.size();
    }

    public final void evictAll() {
        Socket socket;
        Iterator<RealConnection> it = this.connections.iterator();
        j.checkNotNullExpressionValue(it, "connections.iterator()");
        while (it.hasNext()) {
            RealConnection connection = it.next();
            j.checkNotNullExpressionValue(connection, "connection");
            synchronized (connection) {
                if (connection.getCalls().isEmpty()) {
                    it.remove();
                    connection.setNoNewExchanges(true);
                    socket = connection.socket();
                } else {
                    socket = null;
                }
            }
            if (socket != null) {
                Util.closeQuietly(socket);
            }
        }
        if (this.connections.isEmpty()) {
            this.cleanupQueue.cancelAll();
        }
    }

    public final int idleConnectionCount() {
        boolean isEmpty;
        ConcurrentLinkedQueue<RealConnection> concurrentLinkedQueue = this.connections;
        int i2 = 0;
        if ((concurrentLinkedQueue instanceof Collection) && concurrentLinkedQueue.isEmpty()) {
            return 0;
        }
        for (RealConnection it : concurrentLinkedQueue) {
            j.checkNotNullExpressionValue(it, "it");
            synchronized (it) {
                isEmpty = it.getCalls().isEmpty();
            }
            if (isEmpty && (i2 = i2 + 1) < 0) {
                p.throwCountOverflow();
            }
        }
        return i2;
    }

    public final void put(RealConnection connection) {
        j.checkNotNullParameter(connection, "connection");
        if (!Util.assertionsEnabled || Thread.holdsLock(connection)) {
            this.connections.add(connection);
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        } else {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + connection);
        }
    }
}
