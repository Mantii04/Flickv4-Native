package l6;

import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class N extends S {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f18158a;

    public N(Pattern pattern) {
        this.f18158a = pattern;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return this.f18158a.matcher(bVar2.text()).find();
    }

    public String toString() {
        return ":matches(" + this.f18158a + ")";
    }
}
