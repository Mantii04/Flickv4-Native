package androidx.leanback.widget;

import android.view.View;
import android.view.animation.Transformation;

/* renamed from: androidx.leanback.widget.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0503g extends AbstractC0501f {

    /* renamed from: b, reason: collision with root package name */
    public final float f6790b;

    /* renamed from: e, reason: collision with root package name */
    public final float f6791e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AbstractC0511k f6792f;

    public C0503g(AbstractC0511k abstractC0511k, float f3, float f7) {
        this.f6792f = abstractC0511k;
        this.f6790b = f3;
        this.f6791e = f7 - f3;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        float f7 = (f3 * this.f6791e) + this.f6790b;
        AbstractC0511k abstractC0511k = this.f6792f;
        abstractC0511k.f6833x = f7;
        for (int i2 = 0; i2 < abstractC0511k.f6823m.size(); i2++) {
            ((View) abstractC0511k.f6823m.get(i2)).setAlpha(abstractC0511k.f6833x);
        }
    }
}
