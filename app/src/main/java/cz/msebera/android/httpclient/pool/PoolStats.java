package cz.msebera.android.httpclient.pool;

import A.i;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import java.io.Serializable;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
public class PoolStats implements Serializable {
    private static final long serialVersionUID = -2807686144795228544L;
    private final int available;
    private final int leased;
    private final int max;
    private final int pending;

    public PoolStats(int i2, int i7, int i8, int i9) {
        this.leased = i2;
        this.pending = i7;
        this.available = i8;
        this.max = i9;
    }

    public int getAvailable() {
        return this.available;
    }

    public int getLeased() {
        return this.leased;
    }

    public int getMax() {
        return this.max;
    }

    public int getPending() {
        return this.pending;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[leased: ");
        sb.append(this.leased);
        sb.append("; pending: ");
        sb.append(this.pending);
        sb.append("; available: ");
        sb.append(this.available);
        sb.append("; max: ");
        return i.m(sb, this.max, "]");
    }
}
