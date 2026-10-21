package l6;

/* loaded from: classes2.dex */
public final class P extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18160a;

    public P(String str) {
        this.f18160a = str;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return bVar2.tagName().equalsIgnoreCase(this.f18160a);
    }

    public String toString() {
        return this.f18160a;
    }
}
