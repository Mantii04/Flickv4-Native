package P5;

import java.util.NoSuchElementException;
import kotlin.text.StringsKt__StringsKt;

/* loaded from: classes2.dex */
public abstract class q extends StringsKt__StringsKt {
    public static final String drop(String str, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(A.i.g(i2, "Requested character count ", " is less than zero.").toString());
        }
        String substring = str.substring(M5.g.coerceAtMost(i2, str.length()));
        kotlin.jvm.internal.j.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static char last(CharSequence charSequence) {
        kotlin.jvm.internal.j.checkNotNullParameter(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(StringsKt__StringsKt.getLastIndex(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static char random(CharSequence charSequence, K5.d random) {
        kotlin.jvm.internal.j.checkNotNullParameter(charSequence, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(random, "random");
        if (charSequence.length() != 0) {
            return charSequence.charAt(random.nextInt(charSequence.length()));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static String take(String str, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(A.i.g(i2, "Requested character count ", " is less than zero.").toString());
        }
        String substring = str.substring(0, M5.g.coerceAtMost(i2, str.length()));
        kotlin.jvm.internal.j.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }
}
