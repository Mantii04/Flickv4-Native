package org.apache.commons.lang3.text.translate;

import androidx.media3.common.util.Log;
import java.io.IOException;
import java.io.Writer;

@Deprecated
/* loaded from: classes2.dex */
public class UnicodeEscaper extends CodePointTranslator {
    private final int above;
    private final int below;
    private final boolean between;

    public UnicodeEscaper() {
        this(0, Log.LOG_LEVEL_OFF, true);
    }

    public static UnicodeEscaper above(int i2) {
        return outsideOf(0, i2);
    }

    public static UnicodeEscaper below(int i2) {
        return outsideOf(i2, Log.LOG_LEVEL_OFF);
    }

    public static UnicodeEscaper between(int i2, int i7) {
        return new UnicodeEscaper(i2, i7, true);
    }

    public static UnicodeEscaper outsideOf(int i2, int i7) {
        return new UnicodeEscaper(i2, i7, false);
    }

    public String toUtf16Escape(int i2) {
        return "\\u" + CharSequenceTranslator.hex(i2);
    }

    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public boolean translate(int i2, Writer writer) throws IOException {
        if (this.between) {
            if (i2 < this.below || i2 > this.above) {
                return false;
            }
        } else if (i2 >= this.below && i2 <= this.above) {
            return false;
        }
        if (i2 > 65535) {
            writer.write(toUtf16Escape(i2));
            return true;
        }
        writer.write("\\u");
        char[] cArr = CharSequenceTranslator.HEX_DIGITS;
        writer.write(cArr[(i2 >> 12) & 15]);
        writer.write(cArr[(i2 >> 8) & 15]);
        writer.write(cArr[(i2 >> 4) & 15]);
        writer.write(cArr[i2 & 15]);
        return true;
    }

    public UnicodeEscaper(int i2, int i7, boolean z6) {
        this.below = i2;
        this.above = i7;
        this.between = z6;
    }
}
