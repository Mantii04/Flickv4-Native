package l6;

import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class H extends AbstractC1250u {
    public H(int i2, int i7) {
        super(i2, i7);
    }

    @Override // l6.AbstractC1250u
    public int calculatePosition(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        Elements children = bVar2.parent().children();
        int i2 = 0;
        for (int elementSiblingIndex = bVar2.elementSiblingIndex(); elementSiblingIndex < children.size(); elementSiblingIndex++) {
            if (children.get(elementSiblingIndex).tag().equals(bVar2.tag())) {
                i2++;
            }
        }
        return i2;
    }

    @Override // l6.AbstractC1250u
    public String getPseudoClass() {
        return "nth-last-of-type";
    }
}
