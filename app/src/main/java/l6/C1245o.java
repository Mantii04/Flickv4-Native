package l6;

/* renamed from: l6.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1245o extends AbstractC1239i {
    public C1245o(String str, String str2) {
        super(str, str2);
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return !this.f18180b.equalsIgnoreCase(bVar2.attr(this.f18179a));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.f18179a);
        sb.append("!=");
        return A.i.o(sb, this.f18180b, "]");
    }
}
