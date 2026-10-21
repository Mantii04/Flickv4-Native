package androidx.mediarouter.app;

import android.view.animation.Animation;

/* loaded from: classes.dex */
public final class b0 implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j0 f7767a;

    public b0(j0 j0Var) {
        this.f7767a = j0Var;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        m0 m0Var = this.f7767a.f7835m;
        m0Var.f7850H = false;
        m0Var.i();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.f7767a.f7835m.f7850H = true;
    }
}
