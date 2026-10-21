package l6;

/* renamed from: l6.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1241k extends AbstractC1239i {
    public C1241k(String str, String str2) {
        super(str, str2);
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        String str = this.f18179a;
        if (bVar2.hasAttr(str)) {
            return this.f18180b.equalsIgnoreCase(bVar2.attr(str).trim());
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.f18179a);
        sb.append("=");
        return A.i.o(sb, this.f18180b, "]");
    }
}
