package m1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: m1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1285i extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ B0 f18384a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f18385b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f18386c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C1297o f18387d;

    public C1285i(View view, ViewPropertyAnimator viewPropertyAnimator, C1297o c1297o, B0 b02) {
        this.f18387d = c1297o;
        this.f18384a = b02;
        this.f18385b = view;
        this.f18386c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f18385b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f18386c.setListener(null);
        C1297o c1297o = this.f18387d;
        B0 b02 = this.f18384a;
        c1297o.dispatchAddFinished(b02);
        c1297o.f18444o.remove(b02);
        c1297o.c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f18387d.dispatchAddStarting(this.f18384a);
    }
}
