package l6;

/* loaded from: classes2.dex */
public final class a0 extends f0 {
    public a0(S s6) {
        this.f18177a = s6;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        org.jsoup.nodes.b previousElementSibling;
        return (bVar == bVar2 || (previousElementSibling = bVar2.previousElementSibling()) == null || !this.f18177a.matches(bVar, previousElementSibling)) ? false : true;
    }

    public String toString() {
        return String.format(":prev%s", this.f18177a);
    }
}
