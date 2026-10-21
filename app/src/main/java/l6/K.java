package l6;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class K extends S {
    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        org.jsoup.nodes.b parent = bVar2.parent();
        if (parent != null && !(parent instanceof j6.h)) {
            Iterator<org.jsoup.nodes.b> it = parent.children().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                if (it.next().tag().equals(bVar2.tag())) {
                    i2++;
                }
            }
            if (i2 == 1) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return ":only-of-type";
    }
}
