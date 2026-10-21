package cz.msebera.android.httpclient.pool;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.util.Args;
import java.util.concurrent.TimeUnit;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
/* loaded from: classes2.dex */
public abstract class PoolEntry<T, C> {
    private final C conn;
    private final long created;
    private long expiry;
    private final String id;
    private final T route;
    private volatile Object state;
    private long updated;
    private final long validityDeadline;

    public PoolEntry(String str, T t6, C c7, long j7, TimeUnit timeUnit) {
        Args.notNull(t6, "Route");
        Args.notNull(c7, "Connection");
        Args.notNull(timeUnit, "Time unit");
        this.id = str;
        this.route = t6;
        this.conn = c7;
        long currentTimeMillis = System.currentTimeMillis();
        this.created = currentTimeMillis;
        this.updated = currentTimeMillis;
        if (j7 > 0) {
            long millis = timeUnit.toMillis(j7) + currentTimeMillis;
            this.validityDeadline = millis > 0 ? millis : Long.MAX_VALUE;
        } else {
            this.validityDeadline = Long.MAX_VALUE;
        }
        this.expiry = this.validityDeadline;
    }

    public abstract void close();

    public C getConnection() {
        return this.conn;
    }

    public long getCreated() {
        return this.created;
    }

    public synchronized long getExpiry() {
        return this.expiry;
    }

    public String getId() {
        return this.id;
    }

    public T getRoute() {
        return this.route;
    }

    public Object getState() {
        return this.state;
    }

    public synchronized long getUpdated() {
        return this.updated;
    }

    @Deprecated
    public long getValidUnit() {
        return this.validityDeadline;
    }

    public long getValidityDeadline() {
        return this.validityDeadline;
    }

    public abstract boolean isClosed();

    public synchronized boolean isExpired(long j7) {
        return j7 >= this.expiry;
    }

    public void setState(Object obj) {
        this.state = obj;
    }

    public String toString() {
        return "[id:" + this.id + "][route:" + this.route + "][state:" + this.state + "]";
    }

    public synchronized void updateExpiry(long j7, TimeUnit timeUnit) {
        try {
            Args.notNull(timeUnit, "Time unit");
            long currentTimeMillis = System.currentTimeMillis();
            this.updated = currentTimeMillis;
            this.expiry = Math.min(j7 > 0 ? currentTimeMillis + timeUnit.toMillis(j7) : Long.MAX_VALUE, this.validityDeadline);
        } catch (Throwable th) {
            throw th;
        }
    }

    public PoolEntry(String str, T t6, C c7) {
        this(str, t6, c7, 0L, TimeUnit.MILLISECONDS);
    }
}
