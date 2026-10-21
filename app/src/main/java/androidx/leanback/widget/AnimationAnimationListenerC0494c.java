package androidx.leanback.widget;

import android.view.View;
import android.view.animation.Animation;

/* renamed from: androidx.leanback.widget.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AnimationAnimationListenerC0494c implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0511k f6773a;

    public AnimationAnimationListenerC0494c(AbstractC0511k abstractC0511k) {
        this.f6773a = abstractC0511k;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        AbstractC0511k abstractC0511k = this.f6773a;
        if (abstractC0511k.f6831v == 0.0f) {
            for (int i2 = 0; i2 < abstractC0511k.f6824n.size(); i2++) {
                ((View) abstractC0511k.f6824n.get(i2)).setVisibility(8);
            }
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
