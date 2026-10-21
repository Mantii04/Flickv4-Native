package m1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: m1.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1289k extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1293m f18413a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f18414b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f18415c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C1297o f18416d;

    public C1289k(C1297o c1297o, C1293m c1293m, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f18416d = c1297o;
        this.f18413a = c1293m;
        this.f18414b = viewPropertyAnimator;
        this.f18415c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f18414b.setListener(null);
        View view = this.f18415c;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        C1293m c1293m = this.f18413a;
        B0 b02 = c1293m.f18421a;
        C1297o c1297o = this.f18416d;
        c1297o.dispatchChangeFinished(b02, true);
        c1297o.f18447r.remove(c1293m.f18421a);
        c1297o.c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f18416d.dispatchChangeStarting(this.f18413a.f18421a, true);
    }
}
