package l6;

/* renamed from: l6.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1248s extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18186a;

    public C1248s(String str) {
        this.f18186a = i6.b.lowerCase(str);
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return i6.b.lowerCase(bVar2.ownText()).contains(this.f18186a);
    }

    public String toString() {
        return A.i.o(new StringBuilder(":containsOwn("), this.f18186a, ")");
    }
}
