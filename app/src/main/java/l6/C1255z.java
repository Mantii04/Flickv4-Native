package l6;

/* renamed from: l6.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1255z extends AbstractC1253x {
    public C1255z(int i2) {
        super(i2);
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        return bVar != bVar2 && bVar2.elementSiblingIndex() < this.f18191a;
    }

    public String toString() {
        return String.format(":lt(%d)", Integer.valueOf(this.f18191a));
    }
}
