package l6;

/* loaded from: classes2.dex */
public final class M extends S {
    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        if (bVar2 instanceof j6.q) {
            return true;
        }
        for (j6.r rVar : bVar2.textNodes()) {
            j6.q qVar = new j6.q(k6.f.valueOf(bVar2.tagName()), bVar2.baseUri(), bVar2.attributes());
            rVar.replaceWith(qVar);
            qVar.appendChild(rVar);
        }
        return false;
    }

    public String toString() {
        return ":matchText";
    }
}
