package x1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public final class r extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p.g f20826a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.transition.e f20827b;

    public r(androidx.transition.e eVar, p.g gVar) {
        this.f20827b = eVar;
        this.f20826a = gVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f20826a.remove(animator);
        this.f20827b.f8235w.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f20827b.f8235w.add(animator);
    }
}
