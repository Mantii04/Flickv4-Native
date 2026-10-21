package n;

/* renamed from: n.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1347b extends AbstractC1350e {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f18754f;

    public C1347b(C1348c c1348c, C1348c c1348c2, int i2) {
        this.f18754f = i2;
        this.f18762b = c1348c2;
        this.f18763e = c1348c;
    }

    @Override // n.AbstractC1350e
    public final C1348c a(C1348c c1348c) {
        switch (this.f18754f) {
            case 0:
                return c1348c.f18758j;
            default:
                return c1348c.f18757f;
        }
    }

    @Override // n.AbstractC1350e
    public final C1348c b(C1348c c1348c) {
        switch (this.f18754f) {
            case 0:
                return c1348c.f18757f;
            default:
                return c1348c.f18758j;
        }
    }
}
