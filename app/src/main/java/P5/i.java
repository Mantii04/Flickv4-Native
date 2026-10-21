package P5;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.text.MatcherMatchResult$groups$1;

/* loaded from: classes2.dex */
public final class i implements g {

    /* renamed from: a, reason: collision with root package name */
    public final Matcher f2741a;

    /* renamed from: b, reason: collision with root package name */
    public h f2742b;

    public i(Matcher matcher, CharSequence input) {
        kotlin.jvm.internal.j.checkNotNullParameter(matcher, "matcher");
        kotlin.jvm.internal.j.checkNotNullParameter(input, "input");
        this.f2741a = matcher;
        new MatcherMatchResult$groups$1(this);
    }

    public List<String> getGroupValues() {
        if (this.f2742b == null) {
            this.f2742b = new h(this);
        }
        h hVar = this.f2742b;
        kotlin.jvm.internal.j.checkNotNull(hVar);
        return hVar;
    }

    public String getValue() {
        String group = this.f2741a.group();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(group, "group(...)");
        return group;
    }
}
