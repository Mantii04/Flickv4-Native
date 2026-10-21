package c1;

import java.util.Arrays;

/* renamed from: c1.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0706k {

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f8755e = {0, 0, 1};

    /* renamed from: a, reason: collision with root package name */
    public boolean f8756a;

    /* renamed from: b, reason: collision with root package name */
    public int f8757b;

    /* renamed from: c, reason: collision with root package name */
    public int f8758c;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f8759d;

    public C0706k(int i2) {
        this.f8759d = new byte[i2];
    }

    public void onData(byte[] bArr, int i2, int i7) {
        if (this.f8756a) {
            int i8 = i7 - i2;
            byte[] bArr2 = this.f8759d;
            int length = bArr2.length;
            int i9 = this.f8757b + i8;
            if (length < i9) {
                this.f8759d = Arrays.copyOf(bArr2, i9 * 2);
            }
            System.arraycopy(bArr, i2, this.f8759d, this.f8757b, i8);
            this.f8757b += i8;
        }
    }

    public boolean onStartCode(int i2, int i7) {
        if (this.f8756a) {
            int i8 = this.f8757b - i7;
            this.f8757b = i8;
            if (this.f8758c != 0 || i2 != 181) {
                this.f8756a = false;
                return true;
            }
            this.f8758c = i8;
        } else if (i2 == 179) {
            this.f8756a = true;
        }
        onData(f8755e, 0, 3);
        return false;
    }

    public void reset() {
        this.f8756a = false;
        this.f8757b = 0;
        this.f8758c = 0;
    }
}
