package cz.msebera.android.httpclient.client.utils;

import A.i;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import java.util.StringTokenizer;
import org.apache.commons.lang3.ClassUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes2.dex */
public class Rfc3492Idn implements Idn {
    private static final String ACE_PREFIX = "xn--";
    private static final int base = 36;
    private static final int damp = 700;
    private static final char delimiter = '-';
    private static final int initial_bias = 72;
    private static final int initial_n = 128;
    private static final int skew = 38;
    private static final int tmax = 26;
    private static final int tmin = 1;

    private int adapt(int i2, int i7, boolean z6) {
        int i8 = z6 ? i2 / damp : i2 / 2;
        int i9 = (i8 / i7) + i8;
        int i10 = 0;
        while (i9 > 455) {
            i9 /= 35;
            i10 += base;
        }
        return ((i9 * base) / (i9 + skew)) + i10;
    }

    private int digit(char c7) {
        if (c7 >= 'A' && c7 <= 'Z') {
            return c7 - 'A';
        }
        if (c7 >= 'a' && c7 <= 'z') {
            return c7 - 'a';
        }
        if (c7 < '0' || c7 > '9') {
            throw new IllegalArgumentException(i.h("illegal digit: ", c7));
        }
        return c7 - 22;
    }

    public String decode(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        int lastIndexOf = str.lastIndexOf(45);
        int i2 = 128;
        int i7 = initial_bias;
        if (lastIndexOf != -1) {
            sb.append(str.subSequence(0, lastIndexOf));
            str = str.substring(lastIndexOf + 1);
        }
        int i8 = 0;
        while (!str.isEmpty()) {
            int i9 = base;
            int i10 = i8;
            int i11 = 1;
            while (!str.isEmpty()) {
                char charAt = str.charAt(0);
                str = str.substring(1);
                int digit = digit(charAt);
                i10 += digit * i11;
                int i12 = i9 <= i7 + 1 ? 1 : i9 >= i7 + 26 ? 26 : i9 - i7;
                if (digit < i12) {
                    break;
                }
                i11 *= 36 - i12;
                i9 += base;
            }
            i7 = adapt(i10 - i8, sb.length() + 1, i8 == 0);
            i2 += i10 / (sb.length() + 1);
            int length = i10 % (sb.length() + 1);
            sb.insert(length, (char) i2);
            i8 = length + 1;
        }
        return sb.toString();
    }

    @Override // cz.msebera.android.httpclient.client.utils.Idn
    public String toUnicode(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (sb.length() > 0) {
                sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
            }
            if (nextToken.startsWith(ACE_PREFIX)) {
                nextToken = decode(nextToken.substring(4));
            }
            sb.append(nextToken);
        }
        return sb.toString();
    }
}
