package c1;

import java.util.Arrays;

/* renamed from: c1.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0672B {

    /* renamed from: a, reason: collision with root package name */
    public final int f8543a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8544b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8545c;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f8546d;

    /* renamed from: e, reason: collision with root package name */
    public int f8547e;

    public C0672B(int i2, int i7) {
        this.f8543a = i2;
        byte[] bArr = new byte[i7 + 3];
        this.f8546d = bArr;
        bArr[2] = 1;
    }

    public void appendToNalUnit(byte[] bArr, int i2, int i7) {
        if (this.f8544b) {
            int i8 = i7 - i2;
            byte[] bArr2 = this.f8546d;
            int length = bArr2.length;
            int i9 = this.f8547e;
            if (length < i9 + i8) {
                this.f8546d = Arrays.copyOf(bArr2, (i9 + i8) * 2);
            }
            System.arraycopy(bArr, i2, this.f8546d, this.f8547e, i8);
            this.f8547e += i8;
        }
    }

    public boolean endNalUnit(int i2) {
        if (!this.f8544b) {
            return false;
        }
        this.f8547e -= i2;
        this.f8544b = false;
        this.f8545c = true;
        return true;
    }

    public boolean isCompleted() {
        return this.f8545c;
    }

    public void reset() {
        this.f8544b = false;
        this.f8545c = false;
    }

    public void startNalUnit(int i2) {
        P3.v.checkState(!this.f8544b);
        boolean z6 = i2 == this.f8543a;
        this.f8544b = z6;
        if (z6) {
            this.f8547e = 3;
            this.f8545c = false;
        }
    }
}
