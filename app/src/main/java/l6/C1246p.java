package l6;

/* renamed from: l6.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1246p extends AbstractC1239i {
    public C1246p(String str, String str2) {
        super(str, str2);
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        String str = this.f18179a;
        return bVar2.hasAttr(str) && i6.b.lowerCase(bVar2.attr(str)).startsWith(this.f18180b);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.f18179a);
        sb.append("^=");
        return A.i.o(sb, this.f18180b, "]");
    }
}
