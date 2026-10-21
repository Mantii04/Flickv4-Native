package M;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
public final class B0 extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ D0 f1925a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1926b;

    public B0(D0 d02, View view) {
        this.f1925a = d02;
        this.f1926b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f1925a.onAnimationCancel(this.f1926b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1925a.onAnimationEnd(this.f1926b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1925a.onAnimationStart(this.f1926b);
    }
}
