package f1;

import p0.AbstractC1487m;

/* renamed from: f1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0893f extends AbstractC1487m {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ C0895g f14226g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0893f(C0895g c0895g, int i2, int i7, int i8, String str) {
        super(i2, i7, i8, str);
        this.f14226g = c0895g;
    }

    @Override // p0.AbstractC1487m
    public void onAdjustVolume(int i2) {
        C0903k c0903k = this.f14226g.f14229c;
        c0903k.f14250m.post(new RunnableC0891e(this, i2, 1));
    }

    @Override // p0.AbstractC1487m
    public void onSetVolumeTo(int i2) {
        C0903k c0903k = this.f14226g.f14229c;
        c0903k.f14250m.post(new RunnableC0891e(this, i2, 0));
    }
}
