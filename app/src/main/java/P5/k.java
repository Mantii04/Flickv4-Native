package P5;

import java.util.regex.Matcher;

/* loaded from: classes2.dex */
public abstract class k {
    public static final g access$findNext(Matcher matcher, int i2, CharSequence charSequence) {
        if (matcher.find(i2)) {
            return new i(matcher, charSequence);
        }
        return null;
    }
}
