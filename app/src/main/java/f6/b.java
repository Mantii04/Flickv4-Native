package f6;

import A.i;
import e6.C0870l;
import kotlin.jvm.internal.j;
import okio.ByteString;

/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f14415a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX WARN: Code restructure failed: missing block: B:39:0x01a9, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int access$codePointIndexToCharIndex(byte[] r17, int r18) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f6.b.access$codePointIndexToCharIndex(byte[], int):int");
    }

    public static final int access$decodeHexDigit(char c7) {
        if ('0' <= c7 && c7 < ':') {
            return c7 - '0';
        }
        if ('a' <= c7 && c7 < 'g') {
            return c7 - 'W';
        }
        if ('A' > c7 || c7 >= 'G') {
            throw new IllegalArgumentException(i.h("Unexpected hex digit: ", c7));
        }
        return c7 - '7';
    }

    public static final void commonWrite(ByteString byteString, C0870l buffer, int i2, int i7) {
        j.checkNotNullParameter(byteString, "<this>");
        j.checkNotNullParameter(buffer, "buffer");
        buffer.write(byteString.getData$okio(), i2, i7);
    }

    public static final char[] getHEX_DIGIT_CHARS() {
        return f14415a;
    }
}
