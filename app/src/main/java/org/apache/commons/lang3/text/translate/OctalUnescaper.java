package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

@Deprecated
/* loaded from: classes2.dex */
public class OctalUnescaper extends CharSequenceTranslator {
    private boolean isOctalDigit(char c7) {
        return c7 >= '0' && c7 <= '7';
    }

    private boolean isZeroToThree(char c7) {
        return c7 >= '0' && c7 <= '3';
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i2, Writer writer) throws IOException {
        int length = (charSequence.length() - i2) - 1;
        StringBuilder sb = new StringBuilder();
        if (charSequence.charAt(i2) != '\\' || length <= 0) {
            return 0;
        }
        int i7 = i2 + 1;
        if (!isOctalDigit(charSequence.charAt(i7))) {
            return 0;
        }
        int i8 = i2 + 2;
        int i9 = i2 + 3;
        sb.append(charSequence.charAt(i7));
        if (length > 1 && isOctalDigit(charSequence.charAt(i8))) {
            sb.append(charSequence.charAt(i8));
            if (length > 2 && isZeroToThree(charSequence.charAt(i7)) && isOctalDigit(charSequence.charAt(i9))) {
                sb.append(charSequence.charAt(i9));
            }
        }
        writer.write(Integer.parseInt(sb.toString(), 8));
        return sb.length() + 1;
    }
}
