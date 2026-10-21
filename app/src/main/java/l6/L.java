package l6;

/* loaded from: classes2.dex */
public final class L extends S {
    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        if (bVar instanceof j6.h) {
            bVar = bVar.child(0);
        }
        return bVar2 == bVar;
    }

    public String toString() {
        return ":root";
    }
}
