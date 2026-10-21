package l6;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class Y extends f0 {
    public Y(S s6) {
        this.f18177a = s6;
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        Iterator<org.jsoup.nodes.b> it = bVar2.getAllElements().iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.b next = it.next();
            if (next != bVar2 && this.f18177a.matches(bVar, next)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return String.format(":has(%s)", this.f18177a);
    }
}
