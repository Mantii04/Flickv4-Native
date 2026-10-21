package b2;

/* renamed from: b2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0641a implements W1.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0642b f8392a;

    public C0641a(AbstractC0642b abstractC0642b) {
        this.f8392a = abstractC0642b;
    }

    @Override // W1.a
    public void onValueChanged() {
        AbstractC0642b abstractC0642b = this.f8392a;
        boolean z6 = abstractC0642b.f8409q.getFloatValue() == 1.0f;
        if (z6 != abstractC0642b.f8415w) {
            abstractC0642b.f8415w = z6;
            abstractC0642b.f8406n.invalidateSelf();
        }
    }
}
