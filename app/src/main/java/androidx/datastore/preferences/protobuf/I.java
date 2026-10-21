package androidx.datastore.preferences.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class I {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f5777a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f5778b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f5778b = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC0432p.newInstance(bArr);
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static InterfaceC0406a0 b(Object obj, Object obj2) {
        return ((D) ((AbstractC0405a) ((F) ((InterfaceC0406a0) obj)).m61toBuilder()).mergeFrom((InterfaceC0406a0) obj2)).m56buildPartial();
    }

    public static int hashBoolean(boolean z6) {
        return z6 ? 1231 : 1237;
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        for (byte b7 : bArr) {
            length = (length * 31) + b7;
        }
        if (length == 0) {
            return 1;
        }
        return length;
    }

    public static int hashLong(long j7) {
        return (int) (j7 ^ (j7 >>> 32));
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return J0.isValidUtf8(bArr);
    }

    public static String toStringUtf8(byte[] bArr) {
        return new String(bArr, f5777a);
    }
}
