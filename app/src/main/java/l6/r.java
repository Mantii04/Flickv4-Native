package l6;

/* loaded from: classes2.dex */
public final class r extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18185a;

    public r(String str) {
        this.f18185a = i6.b.lowerCase(str);
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return i6.b.lowerCase(bVar2.data()).contains(this.f18185a);
    }

    public String toString() {
        return A.i.o(new StringBuilder(":containsData("), this.f18185a, ")");
    }
}
