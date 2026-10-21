package l6;

import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class O extends S {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f18159a;

    public O(Pattern pattern) {
        this.f18159a = pattern;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return this.f18159a.matcher(bVar2.ownText()).find();
    }

    public String toString() {
        return ":matchesOwn(" + this.f18159a + ")";
    }
}
