package okhttp3.logging;

import M5.g;
import e6.C0870l;
import java.io.EOFException;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(C0870l c0870l) {
        j.checkNotNullParameter(c0870l, "<this>");
        try {
            C0870l c0870l2 = new C0870l();
            c0870l.copyTo(c0870l2, 0L, g.coerceAtMost(c0870l.size(), 64L));
            int i2 = 0;
            while (i2 < 16) {
                i2++;
                if (c0870l2.exhausted()) {
                    return true;
                }
                int readUtf8CodePoint = c0870l2.readUtf8CodePoint();
                if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
