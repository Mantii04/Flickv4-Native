package m1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: m1.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1287j extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ B0 f18403a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18404b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f18405c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18406d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f18407e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C1297o f18408f;

    public C1287j(C1297o c1297o, B0 b02, int i2, View view, int i7, ViewPropertyAnimator viewPropertyAnimator) {
        this.f18408f = c1297o;
        this.f18403a = b02;
        this.f18404b = i2;
        this.f18405c = view;
        this.f18406d = i7;
        this.f18407e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        int i2 = this.f18404b;
        View view = this.f18405c;
        if (i2 != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.f18406d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f18407e.setListener(null);
        C1297o c1297o = this.f18408f;
        B0 b02 = this.f18403a;
        c1297o.dispatchMoveFinished(b02);
        c1297o.f18445p.remove(b02);
        c1297o.c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f18408f.dispatchMoveStarting(this.f18403a);
    }
}
