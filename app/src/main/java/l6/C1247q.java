package l6;

/* renamed from: l6.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1247q extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18184a;

    public C1247q(String str) {
        this.f18184a = str;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return bVar2.hasClass(this.f18184a);
    }

    public String toString() {
        return "." + this.f18184a;
    }
}
