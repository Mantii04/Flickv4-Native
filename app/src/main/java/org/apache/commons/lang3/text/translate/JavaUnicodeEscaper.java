package org.apache.commons.lang3.text.translate;

import androidx.media3.common.util.Log;

@Deprecated
/* loaded from: classes2.dex */
public class JavaUnicodeEscaper extends UnicodeEscaper {
    public JavaUnicodeEscaper(int i2, int i7, boolean z6) {
        super(i2, i7, z6);
    }

    public static JavaUnicodeEscaper above(int i2) {
        return outsideOf(0, i2);
    }

    public static JavaUnicodeEscaper below(int i2) {
        return outsideOf(i2, Log.LOG_LEVEL_OFF);
    }

    public static JavaUnicodeEscaper between(int i2, int i7) {
        return new JavaUnicodeEscaper(i2, i7, true);
    }

    public static JavaUnicodeEscaper outsideOf(int i2, int i7) {
        return new JavaUnicodeEscaper(i2, i7, false);
    }

    @Override // org.apache.commons.lang3.text.translate.UnicodeEscaper
    public String toUtf16Escape(int i2) {
        char[] chars = Character.toChars(i2);
        return "\\u" + CharSequenceTranslator.hex(chars[0]) + "\\u" + CharSequenceTranslator.hex(chars[1]);
    }
}
