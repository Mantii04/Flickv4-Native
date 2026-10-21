package f1;

/* renamed from: f1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0899i extends AbstractC0917x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0903k f14231a;

    public C0899i(C0903k c0903k) {
        this.f14231a = c0903k;
    }

    @Override // f1.AbstractC0917x
    public void onDescriptorChanged(G g7, I i2) {
        C0903k c0903k = this.f14231a;
        S d7 = c0903k.d(g7);
        if (d7 != null) {
            c0903k.m(d7, i2);
        }
    }
}
