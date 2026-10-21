package org.apache.commons.lang3.text;

import cz.msebera.android.httpclient.message.TokenParser;
import java.util.Formattable;
import java.util.Formatter;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;

@Deprecated
/* loaded from: classes2.dex */
public class FormattableUtils {
    private static final String SIMPLEST_FORMAT = "%s";

    public static Formatter append(CharSequence charSequence, Formatter formatter, int i2, int i7, int i8) {
        return append(charSequence, formatter, i2, i7, i8, TokenParser.SP, null);
    }

    public static String toString(Formattable formattable) {
        return String.format(SIMPLEST_FORMAT, formattable);
    }

    public static Formatter append(CharSequence charSequence, Formatter formatter, int i2, int i7, int i8, char c7) {
        return append(charSequence, formatter, i2, i7, i8, c7, null);
    }

    public static Formatter append(CharSequence charSequence, Formatter formatter, int i2, int i7, int i8, CharSequence charSequence2) {
        return append(charSequence, formatter, i2, i7, i8, TokenParser.SP, charSequence2);
    }

    public static Formatter append(CharSequence charSequence, Formatter formatter, int i2, int i7, int i8, char c7, CharSequence charSequence2) {
        Validate.isTrue(charSequence2 == null || i8 < 0 || charSequence2.length() <= i8, "Specified ellipsis '%1$s' exceeds precision of %2$s", charSequence2, Integer.valueOf(i8));
        StringBuilder sb = new StringBuilder(charSequence);
        if (i8 >= 0 && i8 < charSequence.length()) {
            CharSequence charSequence3 = (CharSequence) ObjectUtils.defaultIfNull(charSequence2, "");
            sb.replace(i8 - charSequence3.length(), charSequence.length(), charSequence3.toString());
        }
        boolean z6 = (i2 & 1) == 1;
        for (int length = sb.length(); length < i7; length++) {
            sb.insert(z6 ? length : 0, c7);
        }
        formatter.format(sb.toString(), new Object[0]);
        return formatter;
    }
}
