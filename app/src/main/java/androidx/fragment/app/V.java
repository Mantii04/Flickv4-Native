package androidx.fragment.app;

/* loaded from: classes.dex */
public final class V extends androidx.activity.s {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AbstractC0467i0 f6168d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V(AbstractC0467i0 abstractC0467i0) {
        super(false);
        this.f6168d = abstractC0467i0;
    }

    @Override // androidx.activity.s
    public void handleOnBackPressed() {
        AbstractC0467i0 abstractC0467i0 = this.f6168d;
        abstractC0467i0.w(true);
        if (abstractC0467i0.f6229h.isEnabled()) {
            abstractC0467i0.popBackStackImmediate();
        } else {
            abstractC0467i0.f6228g.onBackPressed();
        }
    }
}
