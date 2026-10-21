package l6;

import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public abstract class X {
    public static Elements select(String str, org.jsoup.nodes.b bVar) {
        h6.k.notEmpty(str);
        return select(W.parse(str), bVar);
    }

    public static org.jsoup.nodes.b selectFirst(String str, org.jsoup.nodes.b bVar) {
        h6.k.notEmpty(str);
        return AbstractC1233c.findFirst(W.parse(str), bVar);
    }

    public static Elements select(S s6, org.jsoup.nodes.b bVar) {
        h6.k.notNull(s6);
        h6.k.notNull(bVar);
        return AbstractC1233c.collect(s6, bVar);
    }
}
