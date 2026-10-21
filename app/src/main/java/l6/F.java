package l6;

/* loaded from: classes2.dex */
public final class F extends AbstractC1250u {
    public F(int i2, int i7) {
        super(i2, i7);
    }

    @Override // l6.AbstractC1250u
    public int calculatePosition(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return bVar2.elementSiblingIndex() + 1;
    }

    @Override // l6.AbstractC1250u
    public String getPseudoClass() {
        return "nth-child";
    }
}
