package l6;

/* renamed from: l6.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1251v extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18190a;

    public C1251v(String str) {
        this.f18190a = str;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return this.f18190a.equals(bVar2.id());
    }

    public String toString() {
        return "#" + this.f18190a;
    }
}
