package s0;

/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f19990a;

    /* renamed from: b, reason: collision with root package name */
    public int f19991b;

    /* renamed from: c, reason: collision with root package name */
    public int f19992c;

    /* renamed from: d, reason: collision with root package name */
    public int f19993d;

    public y(byte[] bArr, int i2, int i7) {
        reset(bArr, i2, i7);
    }

    public final void a() {
        int i2;
        int i7 = this.f19992c;
        P3.v.checkState(i7 >= 0 && (i7 < (i2 = this.f19991b) || (i7 == i2 && this.f19993d == 0)));
    }

    public final boolean b(int i2) {
        if (2 > i2 || i2 >= this.f19991b) {
            return false;
        }
        byte[] bArr = this.f19990a;
        return bArr[i2] == 3 && bArr[i2 + (-2)] == 0 && bArr[i2 - 1] == 0;
    }

    public void byteAlign() {
        int i2 = this.f19993d;
        if (i2 > 0) {
            skipBits(8 - i2);
        }
    }

    public boolean canReadBits(int i2) {
        int i7 = this.f19992c;
        int i8 = i2 / 8;
        int i9 = i7 + i8;
        int i10 = (this.f19993d + i2) - (i8 * 8);
        if (i10 > 7) {
            i9++;
            i10 -= 8;
        }
        while (true) {
            i7++;
            if (i7 > i9 || i9 >= this.f19991b) {
                break;
            }
            if (b(i7)) {
                i9++;
                i7 += 2;
            }
        }
        int i11 = this.f19991b;
        if (i9 >= i11) {
            return i9 == i11 && i10 == 0;
        }
        return true;
    }

    public boolean canReadExpGolombCodedNum() {
        int i2 = this.f19992c;
        int i7 = this.f19993d;
        int i8 = 0;
        while (this.f19992c < this.f19991b && !readBit()) {
            i8++;
        }
        boolean z6 = this.f19992c == this.f19991b;
        this.f19992c = i2;
        this.f19993d = i7;
        return !z6 && canReadBits((i8 * 2) + 1);
    }

    public boolean readBit() {
        boolean z6 = (this.f19990a[this.f19992c] & (128 >> this.f19993d)) != 0;
        skipBit();
        return z6;
    }

    public int readBits(int i2) {
        int i7;
        this.f19993d += i2;
        int i8 = 0;
        while (true) {
            i7 = this.f19993d;
            if (i7 <= 8) {
                break;
            }
            int i9 = i7 - 8;
            this.f19993d = i9;
            byte[] bArr = this.f19990a;
            int i10 = this.f19992c;
            i8 |= (bArr[i10] & 255) << i9;
            if (!b(i10 + 1)) {
                r3 = 1;
            }
            this.f19992c = i10 + r3;
        }
        byte[] bArr2 = this.f19990a;
        int i11 = this.f19992c;
        int i12 = ((-1) >>> (32 - i2)) & (i8 | ((bArr2[i11] & 255) >> (8 - i7)));
        if (i7 == 8) {
            this.f19993d = 0;
            this.f19992c = i11 + (b(i11 + 1) ? 2 : 1);
        }
        a();
        return i12;
    }

    public int readSignedExpGolombCodedInt() {
        int i2 = 0;
        while (!readBit()) {
            i2++;
        }
        int readBits = ((1 << i2) - 1) + (i2 > 0 ? readBits(i2) : 0);
        return ((readBits + 1) / 2) * (readBits % 2 == 0 ? -1 : 1);
    }

    public int readUnsignedExpGolombCodedInt() {
        int i2 = 0;
        while (!readBit()) {
            i2++;
        }
        return ((1 << i2) - 1) + (i2 > 0 ? readBits(i2) : 0);
    }

    public void reset(byte[] bArr, int i2, int i7) {
        this.f19990a = bArr;
        this.f19992c = i2;
        this.f19991b = i7;
        this.f19993d = 0;
        a();
    }

    public void skipBit() {
        int i2 = this.f19993d + 1;
        this.f19993d = i2;
        if (i2 == 8) {
            this.f19993d = 0;
            int i7 = this.f19992c;
            this.f19992c = i7 + (b(i7 + 1) ? 2 : 1);
        }
        a();
    }

    public void skipBits(int i2) {
        int i7 = this.f19992c;
        int i8 = i2 / 8;
        int i9 = i7 + i8;
        this.f19992c = i9;
        int i10 = (i2 - (i8 * 8)) + this.f19993d;
        this.f19993d = i10;
        if (i10 > 7) {
            this.f19992c = i9 + 1;
            this.f19993d = i10 - 8;
        }
        while (true) {
            i7++;
            if (i7 > this.f19992c) {
                a();
                return;
            } else if (b(i7)) {
                this.f19992c++;
                i7 += 2;
            }
        }
    }
}
