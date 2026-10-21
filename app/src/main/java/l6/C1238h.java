package l6;

/* renamed from: l6.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1238h extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18178a;

    public C1238h(String str) {
        this.f18178a = str;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return bVar2.hasAttr(this.f18178a);
    }

    public String toString() {
        return A.i.o(new StringBuilder("["), this.f18178a, "]");
    }
}
