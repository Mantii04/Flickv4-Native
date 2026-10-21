package l6;

/* loaded from: classes2.dex */
public final class J extends S {
    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        org.jsoup.nodes.b parent = bVar2.parent();
        return (parent == null || (parent instanceof j6.h) || bVar2.siblingElements().size() != 0) ? false : true;
    }

    public String toString() {
        return ":only-child";
    }
}
