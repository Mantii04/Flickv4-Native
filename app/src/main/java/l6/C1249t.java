package l6;

/* renamed from: l6.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1249t extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18187a;

    public C1249t(String str) {
        this.f18187a = i6.b.lowerCase(str);
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return i6.b.lowerCase(bVar2.text()).contains(this.f18187a);
    }

    public String toString() {
        return A.i.o(new StringBuilder(":contains("), this.f18187a, ")");
    }
}
