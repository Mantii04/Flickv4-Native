package m1;

/* loaded from: classes.dex */
public final class Q0 {

    /* renamed from: a, reason: collision with root package name */
    public int f18325a;

    /* renamed from: b, reason: collision with root package name */
    public int f18326b;

    /* renamed from: c, reason: collision with root package name */
    public int f18327c;

    /* renamed from: d, reason: collision with root package name */
    public int f18328d;

    /* renamed from: e, reason: collision with root package name */
    public int f18329e;

    public final boolean a() {
        int i2 = this.f18325a;
        int i7 = 2;
        if ((i2 & 7) != 0) {
            int i8 = this.f18328d;
            int i9 = this.f18326b;
            if (((i8 > i9 ? 1 : i8 == i9 ? 2 : 4) & i2) == 0) {
                return false;
            }
        }
        if ((i2 & 112) != 0) {
            int i10 = this.f18328d;
            int i11 = this.f18327c;
            if ((((i10 > i11 ? 1 : i10 == i11 ? 2 : 4) << 4) & i2) == 0) {
                return false;
            }
        }
        if ((i2 & 1792) != 0) {
            int i12 = this.f18329e;
            int i13 = this.f18326b;
            if ((((i12 > i13 ? 1 : i12 == i13 ? 2 : 4) << 8) & i2) == 0) {
                return false;
            }
        }
        if ((i2 & 28672) != 0) {
            int i14 = this.f18329e;
            int i15 = this.f18327c;
            if (i14 > i15) {
                i7 = 1;
            } else if (i14 != i15) {
                i7 = 4;
            }
            if ((i2 & (i7 << 12)) == 0) {
                return false;
            }
        }
        return true;
    }
}
