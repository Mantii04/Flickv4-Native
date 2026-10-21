package l6;

/* loaded from: classes2.dex */
public final class b0 extends f0 {
    public b0(S s6) {
        this.f18177a = s6;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return !this.f18177a.matches(bVar, bVar2);
    }

    public String toString() {
        return String.format(":not%s", this.f18177a);
    }
}
