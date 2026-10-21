package l6;

/* loaded from: classes2.dex */
public final class c0 extends f0 {
    public c0(S s6) {
        this.f18177a = s6;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        if (bVar == bVar2) {
            return false;
        }
        for (org.jsoup.nodes.b parent = bVar2.parent(); !this.f18177a.matches(bVar, parent); parent = parent.parent()) {
            if (parent == bVar) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return String.format(":parent%s", this.f18177a);
    }
}
