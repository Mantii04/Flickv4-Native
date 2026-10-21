package C5;

/* loaded from: classes2.dex */
public abstract class d {
    public static final int getProgressionLastElement(int i2, int i7, int i8) {
        if (i8 > 0) {
            if (i2 < i7) {
                int i9 = i7 % i8;
                if (i9 < 0) {
                    i9 += i8;
                }
                int i10 = i2 % i8;
                if (i10 < 0) {
                    i10 += i8;
                }
                int i11 = (i9 - i10) % i8;
                if (i11 < 0) {
                    i11 += i8;
                }
                return i7 - i11;
            }
        } else {
            if (i8 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (i2 > i7) {
                int i12 = -i8;
                int i13 = i2 % i12;
                if (i13 < 0) {
                    i13 += i12;
                }
                int i14 = i7 % i12;
                if (i14 < 0) {
                    i14 += i12;
                }
                int i15 = (i13 - i14) % i12;
                if (i15 < 0) {
                    i15 += i12;
                }
                return i15 + i7;
            }
        }
        return i7;
    }
}
