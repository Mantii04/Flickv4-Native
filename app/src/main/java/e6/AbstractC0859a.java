package e6;

import java.util.Arrays;
import okio.ByteString;

/* renamed from: e6.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0859a {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f14002a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f14003b;

    static {
        C0873o c0873o = ByteString.f19159j;
        f14002a = c0873o.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").getData$okio();
        f14003b = c0873o.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").getData$okio();
    }

    public static final byte[] decodeBase64ToArray(String str) {
        int i2;
        char charAt;
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        int length = str.length();
        while (length > 0 && ((charAt = str.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        int i7 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i7];
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char charAt2 = str.charAt(i11);
            if ('A' <= charAt2 && charAt2 < '[') {
                i2 = charAt2 - 'A';
            } else if ('a' <= charAt2 && charAt2 < '{') {
                i2 = charAt2 - 'G';
            } else if ('0' <= charAt2 && charAt2 < ':') {
                i2 = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i2 = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i2 = 63;
            } else {
                if (charAt2 != '\n' && charAt2 != '\r' && charAt2 != ' ' && charAt2 != '\t') {
                    return null;
                }
            }
            i9 = (i9 << 6) | i2;
            i8++;
            if (i8 % 4 == 0) {
                bArr[i10] = (byte) (i9 >> 16);
                int i12 = i10 + 2;
                bArr[i10 + 1] = (byte) (i9 >> 8);
                i10 += 3;
                bArr[i12] = (byte) i9;
            }
        }
        int i13 = i8 % 4;
        if (i13 == 1) {
            return null;
        }
        if (i13 == 2) {
            bArr[i10] = (byte) ((i9 << 12) >> 16);
            i10++;
        } else if (i13 == 3) {
            int i14 = i9 << 6;
            int i15 = i10 + 1;
            bArr[i10] = (byte) (i14 >> 16);
            i10 += 2;
            bArr[i15] = (byte) (i14 >> 8);
        }
        if (i10 == i7) {
            return bArr;
        }
        byte[] copyOf = Arrays.copyOf(bArr, i10);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        return copyOf;
    }

    public static final String encodeBase64(byte[] bArr, byte[] map) {
        kotlin.jvm.internal.j.checkNotNullParameter(bArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(map, "map");
        byte[] bArr2 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i2 = 0;
        int i7 = 0;
        while (i2 < length) {
            byte b7 = bArr[i2];
            int i8 = i2 + 2;
            byte b8 = bArr[i2 + 1];
            i2 += 3;
            byte b9 = bArr[i8];
            bArr2[i7] = map[(b7 & 255) >> 2];
            bArr2[i7 + 1] = map[((b7 & 3) << 4) | ((b8 & 255) >> 4)];
            int i9 = i7 + 3;
            bArr2[i7 + 2] = map[((b8 & 15) << 2) | ((b9 & 255) >> 6)];
            i7 += 4;
            bArr2[i9] = map[b9 & 63];
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b10 = bArr[i2];
            bArr2[i7] = map[(b10 & 255) >> 2];
            bArr2[i7 + 1] = map[(b10 & 3) << 4];
            bArr2[i7 + 2] = 61;
            bArr2[i7 + 3] = 61;
        } else if (length2 == 2) {
            int i10 = i2 + 1;
            byte b11 = bArr[i2];
            byte b12 = bArr[i10];
            bArr2[i7] = map[(b11 & 255) >> 2];
            bArr2[i7 + 1] = map[((b11 & 3) << 4) | ((b12 & 255) >> 4)];
            bArr2[i7 + 2] = map[(b12 & 15) << 2];
            bArr2[i7 + 3] = 61;
        }
        return Q.toUtf8String(bArr2);
    }

    public static /* synthetic */ String encodeBase64$default(byte[] bArr, byte[] bArr2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            bArr2 = f14002a;
        }
        return encodeBase64(bArr, bArr2);
    }

    public static final byte[] getBASE64_URL_SAFE() {
        return f14003b;
    }
}
