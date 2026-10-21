package n1;

import java.util.Arrays;

/* renamed from: n1.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1378q {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f18835a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean[] f18836b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f18837c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18838d;

    static {
        new C1377p(null);
    }

    public C1378q(int i2) {
        this.f18835a = new long[i2];
        this.f18836b = new boolean[i2];
        this.f18837c = new int[i2];
    }

    public final int[] getTablesToSync() {
        synchronized (this) {
            try {
                if (!this.f18838d) {
                    return null;
                }
                long[] jArr = this.f18835a;
                int length = jArr.length;
                int i2 = 0;
                int i7 = 0;
                while (i2 < length) {
                    int i8 = i7 + 1;
                    int i9 = 1;
                    boolean z6 = jArr[i2] > 0;
                    boolean[] zArr = this.f18836b;
                    if (z6 != zArr[i7]) {
                        int[] iArr = this.f18837c;
                        if (!z6) {
                            i9 = 2;
                        }
                        iArr[i7] = i9;
                    } else {
                        this.f18837c[i7] = 0;
                    }
                    zArr[i7] = z6;
                    i2++;
                    i7 = i8;
                }
                this.f18838d = false;
                return (int[]) this.f18837c.clone();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean onAdded(int... tableIds) {
        boolean z6;
        kotlin.jvm.internal.j.checkNotNullParameter(tableIds, "tableIds");
        synchronized (this) {
            z6 = false;
            for (int i2 : tableIds) {
                long[] jArr = this.f18835a;
                long j7 = jArr[i2];
                jArr[i2] = 1 + j7;
                if (j7 == 0) {
                    z6 = true;
                    this.f18838d = true;
                }
            }
        }
        return z6;
    }

    public final boolean onRemoved(int... tableIds) {
        boolean z6;
        kotlin.jvm.internal.j.checkNotNullParameter(tableIds, "tableIds");
        synchronized (this) {
            z6 = false;
            for (int i2 : tableIds) {
                long[] jArr = this.f18835a;
                long j7 = jArr[i2];
                jArr[i2] = j7 - 1;
                if (j7 == 1) {
                    z6 = true;
                    this.f18838d = true;
                }
            }
        }
        return z6;
    }

    public final void resetTriggerState() {
        synchronized (this) {
            Arrays.fill(this.f18836b, false);
            this.f18838d = true;
        }
    }
}
