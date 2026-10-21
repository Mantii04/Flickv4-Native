package l6;

/* loaded from: classes2.dex */
public final class d0 extends f0 {
    public d0(S s6) {
        this.f18177a = s6;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        if (bVar == bVar2) {
            return false;
        }
        for (org.jsoup.nodes.b previousElementSibling = bVar2.previousElementSibling(); previousElementSibling != null; previousElementSibling = previousElementSibling.previousElementSibling()) {
            if (this.f18177a.matches(bVar, previousElementSibling)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return String.format(":prev*%s", this.f18177a);
    }
}
