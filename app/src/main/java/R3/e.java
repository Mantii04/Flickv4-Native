package R3;

import P3.v;
import com.google.common.io.BaseEncoding$DecodingException;
import java.io.IOException;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final b f3127a;

    static {
        new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        f3127a = new b(new a("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public static e base16() {
        return f3127a;
    }

    public abstract int a(byte[] bArr, CharSequence charSequence);

    public abstract void b(StringBuilder sb, byte[] bArr, int i2, int i7);

    public abstract CharSequence c(CharSequence charSequence);

    public final byte[] decode(CharSequence charSequence) {
        try {
            int length = (int) (((((d) this).f3123b.f3116d * r6.length()) + 7) / 8);
            byte[] bArr = new byte[length];
            int a7 = a(bArr, c(charSequence));
            if (a7 == length) {
                return bArr;
            }
            byte[] bArr2 = new byte[a7];
            System.arraycopy(bArr, 0, bArr2, 0, a7);
            return bArr2;
        } catch (BaseEncoding$DecodingException e3) {
            throw new IllegalArgumentException(e3);
        }
    }

    public String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public abstract e ignoreCase();

    public abstract e lowerCase();

    public final String encode(byte[] bArr, int i2, int i7) {
        v.checkPositionIndexes(i2, i2 + i7, bArr.length);
        a aVar = ((d) this).f3123b;
        StringBuilder sb = new StringBuilder(S3.e.divide(i7, aVar.f3118f, RoundingMode.CEILING) * aVar.f3117e);
        try {
            b(sb, bArr, i2, i7);
            return sb.toString();
        } catch (IOException e3) {
            throw new AssertionError(e3);
        }
    }
}
