package androidx.mediarouter.app;

import android.view.animation.Animation;

/* renamed from: androidx.mediarouter.app.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AnimationAnimationListenerC0617v implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ D f7910a;

    public AnimationAnimationListenerC0617v(D d7) {
        this.f7910a = d7;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        D d7 = this.f7910a;
        d7.f7624P.startAnimationAll();
        d7.f7624P.postDelayed(d7.f7671z0, d7.f7657s0);
    }
}
