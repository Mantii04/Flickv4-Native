package y1;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;

/* renamed from: y1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1871b extends Animatable2.AnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC1872c f20974a;

    public C1871b(AbstractC1872c abstractC1872c) {
        this.f20974a = abstractC1872c;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public void onAnimationEnd(Drawable drawable) {
        this.f20974a.onAnimationEnd(drawable);
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public void onAnimationStart(Drawable drawable) {
        this.f20974a.onAnimationStart(drawable);
    }
}
