package l6;

import java.util.Iterator;

/* renamed from: l6.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1240j extends S {

    /* renamed from: a, reason: collision with root package name */
    public final String f18181a;

    public C1240j(String str) {
        h6.k.notEmpty(str);
        this.f18181a = i6.b.lowerCase(str);
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        Iterator<j6.a> it = bVar2.attributes().asList().iterator();
        while (it.hasNext()) {
            if (i6.b.lowerCase(it.next().getKey()).startsWith(this.f18181a)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return A.i.o(new StringBuilder("[^"), this.f18181a, "]");
    }
}
