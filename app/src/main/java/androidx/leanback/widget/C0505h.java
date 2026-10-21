package androidx.leanback.widget;

import android.view.animation.Transformation;

/* renamed from: androidx.leanback.widget.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0505h extends AbstractC0501f {

    /* renamed from: b, reason: collision with root package name */
    public final float f6794b;

    /* renamed from: e, reason: collision with root package name */
    public final float f6795e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AbstractC0511k f6796f;

    public C0505h(AbstractC0511k abstractC0511k, float f3, float f7) {
        this.f6796f = abstractC0511k;
        this.f6794b = f3;
        this.f6795e = f7 - f3;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        float f7 = (f3 * this.f6795e) + this.f6794b;
        AbstractC0511k abstractC0511k = this.f6796f;
        abstractC0511k.f6832w = f7;
        abstractC0511k.requestLayout();
    }
}
