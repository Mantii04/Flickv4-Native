package l6;

import org.jsoup.select.Elements;

/* renamed from: l6.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1233c {
    public static Elements collect(S s6, org.jsoup.nodes.b bVar) {
        Elements elements = new Elements();
        U.traverse(new C1231a(bVar, elements, s6), bVar);
        return elements;
    }

    public static org.jsoup.nodes.b findFirst(S s6, org.jsoup.nodes.b bVar) {
        C1232b c1232b = new C1232b(s6, bVar);
        U.filter(c1232b, bVar);
        return c1232b.f18173b;
    }
}
