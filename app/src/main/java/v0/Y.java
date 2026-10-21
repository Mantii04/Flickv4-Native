package v0;

import androidx.media3.exoplayer.RendererCapabilities;

/* loaded from: classes.dex */
public final class Y {

    /* renamed from: a, reason: collision with root package name */
    public int f20414a;

    /* renamed from: b, reason: collision with root package name */
    public String f20415b;

    /* renamed from: c, reason: collision with root package name */
    public int f20416c;

    /* renamed from: d, reason: collision with root package name */
    public int f20417d;

    /* renamed from: e, reason: collision with root package name */
    public int f20418e;

    /* renamed from: f, reason: collision with root package name */
    public int f20419f;

    /* renamed from: g, reason: collision with root package name */
    public int f20420g;

    public Y() {
    }

    public boolean setForHeaderData(int i2) {
        int i7;
        int i8;
        int i9;
        int i10;
        if (!((i2 & (-2097152)) == -2097152) || (i7 = (i2 >>> 19) & 3) == 1 || (i8 = (i2 >>> 17) & 3) == 0 || (i9 = (i2 >>> 12) & 15) == 0 || i9 == 15 || (i10 = (i2 >>> 10) & 3) == 3) {
            return false;
        }
        this.f20414a = i7;
        this.f20415b = Z.f20421a[3 - i8];
        int i11 = Z.f20422b[i10];
        this.f20417d = i11;
        if (i7 == 2) {
            this.f20417d = i11 / 2;
        } else if (i7 == 0) {
            this.f20417d = i11 / 4;
        }
        int i12 = (i2 >>> 9) & 1;
        int i13 = 1152;
        if (i8 != 1) {
            if (i8 != 2) {
                if (i8 != 3) {
                    throw new IllegalArgumentException();
                }
                i13 = RendererCapabilities.DECODER_SUPPORT_MASK;
            }
        } else if (i7 != 3) {
            i13 = 576;
        }
        this.f20420g = i13;
        if (i8 == 3) {
            int i14 = i7 == 3 ? Z.f20423c[i9 - 1] : Z.f20424d[i9 - 1];
            this.f20419f = i14;
            this.f20416c = (((i14 * 12) / this.f20417d) + i12) * 4;
        } else {
            if (i7 == 3) {
                int i15 = i8 == 2 ? Z.f20425e[i9 - 1] : Z.f20426f[i9 - 1];
                this.f20419f = i15;
                this.f20416c = ((i15 * 144) / this.f20417d) + i12;
            } else {
                int i16 = Z.f20427g[i9 - 1];
                this.f20419f = i16;
                this.f20416c = (((i8 == 1 ? 72 : 144) * i16) / this.f20417d) + i12;
            }
        }
        this.f20418e = ((i2 >> 6) & 3) == 3 ? 1 : 2;
        return true;
    }

    public Y(Y y6) {
        this.f20414a = y6.f20414a;
        this.f20415b = y6.f20415b;
        this.f20416c = y6.f20416c;
        this.f20417d = y6.f20417d;
        this.f20418e = y6.f20418e;
        this.f20419f = y6.f20419f;
        this.f20420g = y6.f20420g;
    }
}
