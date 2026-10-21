package e6;

import java.nio.charset.Charset;
import okio.ByteString;

/* renamed from: e6.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0873o {
    public C0873o(kotlin.jvm.internal.g gVar) {
    }

    public static /* synthetic */ ByteString of$default(C0873o c0873o, byte[] bArr, int i2, int i7, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            i2 = 0;
        }
        if ((i8 & 2) != 0) {
            i7 = AbstractC0860b.getDEFAULT__ByteString_size();
        }
        return c0873o.of(bArr, i2, i7);
    }

    public final ByteString decodeBase64(String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        byte[] decodeBase64ToArray = AbstractC0859a.decodeBase64ToArray(str);
        if (decodeBase64ToArray != null) {
            return new ByteString(decodeBase64ToArray);
        }
        return null;
    }

    public final ByteString decodeHex(String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i7 = i2 * 2;
            bArr[i2] = (byte) (f6.b.access$decodeHexDigit(str.charAt(i7 + 1)) + (f6.b.access$decodeHexDigit(str.charAt(i7)) << 4));
        }
        return new ByteString(bArr);
    }

    public final ByteString encodeString(String str, Charset charset) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(charset, "charset");
        byte[] bytes = str.getBytes(charset);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return new ByteString(bytes);
    }

    public final ByteString encodeUtf8(String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        ByteString byteString = new ByteString(Q.asUtf8ToByteArray(str));
        byteString.setUtf8$okio(str);
        return byteString;
    }

    public final ByteString of(byte[] bArr, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(bArr, "<this>");
        int resolveDefaultParameter = AbstractC0860b.resolveDefaultParameter(bArr, i7);
        AbstractC0860b.checkOffsetAndCount(bArr.length, i2, resolveDefaultParameter);
        return new ByteString(v5.m.copyOfRange(bArr, i2, resolveDefaultParameter + i2));
    }
}
