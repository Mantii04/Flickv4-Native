package l6;

import java.util.regex.Pattern;

/* renamed from: l6.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1244n extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18182a;

    /* renamed from: b, reason: collision with root package name */
    public final Pattern f18183b;

    public C1244n(String str, Pattern pattern) {
        this.f18182a = i6.b.normalize(str);
        this.f18183b = pattern;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        String str = this.f18182a;
        return bVar2.hasAttr(str) && this.f18183b.matcher(bVar2.attr(str)).find();
    }

    public String toString() {
        return "[" + this.f18182a + "~=" + this.f18183b.toString() + "]";
    }
}
