package l6;

import java.util.Iterator;

/* loaded from: classes2.dex */
public class I extends AbstractC1250u {
    public I(int i2, int i7) {
        super(i2, i7);
    }

    @Override // l6.AbstractC1250u
    public int calculatePosition(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        Iterator<org.jsoup.nodes.b> it = bVar2.parent().children().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            org.jsoup.nodes.b next = it.next();
            if (next.tag().equals(bVar2.tag())) {
                i2++;
            }
            if (next == bVar2) {
                break;
            }
        }
        return i2;
    }

    @Override // l6.AbstractC1250u
    public String getPseudoClass() {
        return "nth-of-type";
    }
}
