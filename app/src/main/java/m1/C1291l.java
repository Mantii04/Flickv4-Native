package m1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: m1.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1291l extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1293m f18417a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f18418b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f18419c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C1297o f18420d;

    public C1291l(C1297o c1297o, C1293m c1293m, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f18420d = c1297o;
        this.f18417a = c1293m;
        this.f18418b = viewPropertyAnimator;
        this.f18419c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f18418b.setListener(null);
        View view = this.f18419c;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        C1293m c1293m = this.f18417a;
        B0 b02 = c1293m.f18422b;
        C1297o c1297o = this.f18420d;
        c1297o.dispatchChangeFinished(b02, false);
        c1297o.f18447r.remove(c1293m.f18422b);
        c1297o.c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f18420d.dispatchChangeStarting(this.f18417a.f18422b, false);
    }
}
