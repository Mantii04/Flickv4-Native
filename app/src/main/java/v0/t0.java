package v0;

/* loaded from: classes.dex */
public final class t0 {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f20539a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20540b;

    /* renamed from: c, reason: collision with root package name */
    public int f20541c;

    /* renamed from: d, reason: collision with root package name */
    public int f20542d;

    public t0(byte[] bArr) {
        this.f20539a = bArr;
        this.f20540b = bArr.length;
    }

    public int getPosition() {
        return (this.f20541c * 8) + this.f20542d;
    }

    public boolean readBit() {
        boolean z6 = (((this.f20539a[this.f20541c] & 255) >> this.f20542d) & 1) == 1;
        skipBits(1);
        return z6;
    }

    public int readBits(int i2) {
        int i7 = this.f20541c;
        int min = Math.min(i2, 8 - this.f20542d);
        int i8 = i7 + 1;
        byte[] bArr = this.f20539a;
        int i9 = ((bArr[i7] & 255) >> this.f20542d) & (255 >> (8 - min));
        while (min < i2) {
            i9 |= (bArr[i8] & 255) << min;
            min += 8;
            i8++;
        }
        int i10 = i9 & ((-1) >>> (32 - i2));
        skipBits(i2);
        return i10;
    }

    public void skipBits(int i2) {
        int i7;
        int i8 = i2 / 8;
        int i9 = this.f20541c + i8;
        this.f20541c = i9;
        int i10 = (i2 - (i8 * 8)) + this.f20542d;
        this.f20542d = i10;
        boolean z6 = true;
        if (i10 > 7) {
            this.f20541c = i9 + 1;
            this.f20542d = i10 - 8;
        }
        int i11 = this.f20541c;
        if (i11 < 0 || (i11 >= (i7 = this.f20540b) && (i11 != i7 || this.f20542d != 0))) {
            z6 = false;
        }
        P3.v.checkState(z6);
    }
}
