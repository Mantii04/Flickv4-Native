package e6;

/* loaded from: classes2.dex */
public abstract class Q {
    public static final byte[] asUtf8ToByteArray(String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(P5.c.f2725b);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static final String toUtf8String(byte[] bArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(bArr, "<this>");
        return new String(bArr, P5.c.f2725b);
    }
}
