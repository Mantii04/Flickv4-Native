package l6;

/* loaded from: classes2.dex */
public final class A extends S {
    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        for (j6.p pVar : bVar2.childNodes()) {
            if (!(pVar instanceof j6.f) && !(pVar instanceof j6.s) && !(pVar instanceof j6.i)) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return ":empty";
    }
}
