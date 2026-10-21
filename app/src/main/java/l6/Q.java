package l6;

/* loaded from: classes2.dex */
public final class Q extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18161a;

    public Q(String str) {
        this.f18161a = str;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return bVar2.tagName().endsWith(this.f18161a);
    }

    public String toString() {
        return this.f18161a;
    }
}
