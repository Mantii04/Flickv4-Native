package l6;

/* loaded from: classes2.dex */
public final class G extends AbstractC1250u {
    public G(int i2, int i7) {
        super(i2, i7);
    }

    @Override // l6.AbstractC1250u
    public int calculatePosition(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return bVar2.parent().children().size() - bVar2.elementSiblingIndex();
    }

    @Override // l6.AbstractC1250u
    public String getPseudoClass() {
        return "nth-last-child";
    }
}
