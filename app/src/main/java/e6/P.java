package e6;

/* loaded from: classes2.dex */
public abstract class P {
    public static final long size(String str, int i2, int i7) {
        int i8;
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(A.i.f(i2, "beginIndex < 0: ").toString());
        }
        if (i7 < i2) {
            throw new IllegalArgumentException(A.i.e(i7, i2, "endIndex < beginIndex: ", " < ").toString());
        }
        if (i7 > str.length()) {
            StringBuilder q6 = A.i.q(i7, "endIndex > string.length: ", " > ");
            q6.append(str.length());
            throw new IllegalArgumentException(q6.toString().toString());
        }
        long j7 = 0;
        while (i2 < i7) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                j7++;
            } else {
                if (charAt < 2048) {
                    i8 = 2;
                } else if (charAt < 55296 || charAt > 57343) {
                    i8 = 3;
                } else {
                    int i9 = i2 + 1;
                    char charAt2 = i9 < i7 ? str.charAt(i9) : (char) 0;
                    if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                        j7++;
                        i2 = i9;
                    } else {
                        j7 += 4;
                        i2 += 2;
                    }
                }
                j7 += i8;
            }
            i2++;
        }
        return j7;
    }

    public static /* synthetic */ long size$default(String str, int i2, int i7, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            i2 = 0;
        }
        if ((i8 & 2) != 0) {
            i7 = str.length();
        }
        return size(str, i2, i7);
    }
}
