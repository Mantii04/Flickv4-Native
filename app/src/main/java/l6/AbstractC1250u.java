package l6;

/* renamed from: l6.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1250u extends S {

    /* renamed from: a, reason: collision with root package name */
    public final int f18188a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18189b;

    public AbstractC1250u(int i2, int i7) {
        this.f18188a = i2;
        this.f18189b = i7;
    }

    public abstract int calculatePosition(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2);

    public abstract String getPseudoClass();

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        org.jsoup.nodes.b parent = bVar2.parent();
        if (parent != null && !(parent instanceof j6.h)) {
            int calculatePosition = calculatePosition(bVar, bVar2);
            int i2 = this.f18189b;
            int i7 = this.f18188a;
            if (i7 == 0) {
                return calculatePosition == i2;
            }
            if ((calculatePosition - i2) * i7 >= 0 && (calculatePosition - i2) % i7 == 0) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        int i2 = this.f18189b;
        int i7 = this.f18188a;
        return i7 == 0 ? String.format(":%s(%d)", getPseudoClass(), Integer.valueOf(i2)) : i2 == 0 ? String.format(":%s(%dn)", getPseudoClass(), Integer.valueOf(i7)) : String.format(":%s(%dn%+d)", getPseudoClass(), Integer.valueOf(i7), Integer.valueOf(i2));
    }
}
