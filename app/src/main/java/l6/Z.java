package l6;

/* loaded from: classes2.dex */
public final class Z extends f0 {
    public Z(S s6) {
        this.f18177a = s6;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        org.jsoup.nodes.b parent;
        return (bVar == bVar2 || (parent = bVar2.parent()) == null || !this.f18177a.matches(bVar, parent)) ? false : true;
    }

    public String toString() {
        return String.format(":ImmediateParent%s", this.f18177a);
    }
}
