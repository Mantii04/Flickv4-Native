package kotlin.text;

import P5.g;
import P5.j;
import P5.k;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class Regex implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public final Pattern f17461b;

    static {
        new j(null);
    }

    public Regex(Pattern nativePattern) {
        kotlin.jvm.internal.j.checkNotNullParameter(nativePattern, "nativePattern");
        this.f17461b = nativePattern;
    }

    public final g find(CharSequence input, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(input, "input");
        Matcher matcher = this.f17461b.matcher(input);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(matcher, "matcher(...)");
        return k.access$findNext(matcher, i2, input);
    }

    public final boolean matches(CharSequence input) {
        kotlin.jvm.internal.j.checkNotNullParameter(input, "input");
        return this.f17461b.matcher(input).matches();
    }

    public final String replace(CharSequence input, String replacement) {
        kotlin.jvm.internal.j.checkNotNullParameter(input, "input");
        kotlin.jvm.internal.j.checkNotNullParameter(replacement, "replacement");
        String replaceAll = this.f17461b.matcher(input).replaceAll(replacement);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(replaceAll, "replaceAll(...)");
        return replaceAll;
    }

    public String toString() {
        String pattern = this.f17461b.toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(pattern, "toString(...)");
        return pattern;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Regex(java.lang.String r2) {
        /*
            r1 = this;
            java.lang.String r0 = "pattern"
            kotlin.jvm.internal.j.checkNotNullParameter(r2, r0)
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2)
            java.lang.String r0 = "compile(...)"
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String):void");
    }
}
