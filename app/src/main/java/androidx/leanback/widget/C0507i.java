package androidx.leanback.widget;

import android.view.animation.Transformation;

/* renamed from: androidx.leanback.widget.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0507i extends AbstractC0501f {

    /* renamed from: b, reason: collision with root package name */
    public final float f6801b;

    /* renamed from: e, reason: collision with root package name */
    public final float f6802e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AbstractC0511k f6803f;

    public C0507i(AbstractC0511k abstractC0511k, float f3, float f7) {
        this.f6803f = abstractC0511k;
        this.f6801b = f3;
        this.f6802e = f7 - f3;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        float f7 = (f3 * this.f6802e) + this.f6801b;
        AbstractC0511k abstractC0511k = this.f6803f;
        abstractC0511k.f6831v = f7;
        abstractC0511k.requestLayout();
    }
}
