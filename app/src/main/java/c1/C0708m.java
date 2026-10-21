package c1;

import androidx.media3.common.util.Log;
import java.util.Arrays;

/* renamed from: c1.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0708m {

    /* renamed from: f, reason: collision with root package name */
    public static final byte[] f8778f = {0, 0, 1};

    /* renamed from: a, reason: collision with root package name */
    public boolean f8779a;

    /* renamed from: b, reason: collision with root package name */
    public int f8780b;

    /* renamed from: c, reason: collision with root package name */
    public int f8781c;

    /* renamed from: d, reason: collision with root package name */
    public int f8782d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f8783e;

    public C0708m(int i2) {
        this.f8783e = new byte[i2];
    }

    public void onData(byte[] bArr, int i2, int i7) {
        if (this.f8779a) {
            int i8 = i7 - i2;
            byte[] bArr2 = this.f8783e;
            int length = bArr2.length;
            int i9 = this.f8781c + i8;
            if (length < i9) {
                this.f8783e = Arrays.copyOf(bArr2, i9 * 2);
            }
            System.arraycopy(bArr, i2, this.f8783e, this.f8781c, i8);
            this.f8781c += i8;
        }
    }

    public boolean onStartCode(int i2, int i7) {
        int i8 = this.f8780b;
        if (i8 != 0) {
            if (i8 != 1) {
                if (i8 != 2) {
                    if (i8 != 3) {
                        if (i8 != 4) {
                            throw new IllegalStateException();
                        }
                        if (i2 == 179 || i2 == 181) {
                            this.f8781c -= i7;
                            this.f8779a = false;
                            return true;
                        }
                    } else if ((i2 & 240) != 32) {
                        Log.w("H263Reader", "Unexpected start code value");
                        reset();
                    } else {
                        this.f8782d = this.f8781c;
                        this.f8780b = 4;
                    }
                } else if (i2 > 31) {
                    Log.w("H263Reader", "Unexpected start code value");
                    reset();
                } else {
                    this.f8780b = 3;
                }
            } else if (i2 != 181) {
                Log.w("H263Reader", "Unexpected start code value");
                reset();
            } else {
                this.f8780b = 2;
            }
        } else if (i2 == 176) {
            this.f8780b = 1;
            this.f8779a = true;
        }
        onData(f8778f, 0, 3);
        return false;
    }

    public void reset() {
        this.f8779a = false;
        this.f8781c = 0;
        this.f8780b = 0;
    }
}
