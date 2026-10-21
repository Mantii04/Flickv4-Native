package r2;

import java.util.Queue;

/* renamed from: r2.S, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1559S {

    /* renamed from: d, reason: collision with root package name */
    public static final Queue f19751d = G2.t.createQueue(0);

    /* renamed from: a, reason: collision with root package name */
    public int f19752a;

    /* renamed from: b, reason: collision with root package name */
    public int f19753b;

    /* renamed from: c, reason: collision with root package name */
    public Object f19754c;

    public static C1559S a(Object obj, int i2, int i7) {
        C1559S c1559s;
        Queue queue = f19751d;
        synchronized (queue) {
            c1559s = (C1559S) queue.poll();
        }
        if (c1559s == null) {
            c1559s = new C1559S();
        }
        c1559s.f19754c = obj;
        c1559s.f19753b = i2;
        c1559s.f19752a = i7;
        return c1559s;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1559S) {
            C1559S c1559s = (C1559S) obj;
            if (this.f19753b == c1559s.f19753b && this.f19752a == c1559s.f19752a && this.f19754c.equals(c1559s.f19754c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f19754c.hashCode() + (((this.f19752a * 31) + this.f19753b) * 31);
    }

    public void release() {
        Queue queue = f19751d;
        synchronized (queue) {
            queue.offer(this);
        }
    }
}
