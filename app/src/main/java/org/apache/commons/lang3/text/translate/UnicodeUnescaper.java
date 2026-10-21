package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

@Deprecated
/* loaded from: classes2.dex */
public class UnicodeUnescaper extends CharSequenceTranslator {
    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i2, Writer writer) throws IOException {
        int i7;
        int i8;
        if (charSequence.charAt(i2) != '\\' || (i7 = i2 + 1) >= charSequence.length() || charSequence.charAt(i7) != 'u') {
            return 0;
        }
        int i9 = 2;
        while (true) {
            i8 = i2 + i9;
            if (i8 >= charSequence.length() || charSequence.charAt(i8) != 'u') {
                break;
            }
            i9++;
        }
        if (i8 < charSequence.length() && charSequence.charAt(i8) == '+') {
            i9++;
        }
        int i10 = i2 + i9;
        int i11 = i10 + 4;
        if (i11 > charSequence.length()) {
            throw new IllegalArgumentException("Less than 4 hex digits in unicode value: '" + ((Object) charSequence.subSequence(i2, charSequence.length())) + "' due to end of CharSequence");
        }
        CharSequence subSequence = charSequence.subSequence(i10, i11);
        try {
            writer.write((char) Integer.parseInt(subSequence.toString(), 16));
            return i9 + 4;
        } catch (NumberFormatException e3) {
            throw new IllegalArgumentException("Unable to parse unicode value: " + ((Object) subSequence), e3);
        }
    }
}
