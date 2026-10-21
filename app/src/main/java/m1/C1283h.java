package m1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: m1.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1283h extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ B0 f18376a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f18377b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f18378c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C1297o f18379d;

    public C1283h(View view, ViewPropertyAnimator viewPropertyAnimator, C1297o c1297o, B0 b02) {
        this.f18379d = c1297o;
        this.f18376a = b02;
        this.f18377b = viewPropertyAnimator;
        this.f18378c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f18377b.setListener(null);
        this.f18378c.setAlpha(1.0f);
        C1297o c1297o = this.f18379d;
        B0 b02 = this.f18376a;
        c1297o.dispatchRemoveFinished(b02);
        c1297o.f18446q.remove(b02);
        c1297o.c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f18379d.dispatchRemoveStarting(this.f18376a);
    }
}
