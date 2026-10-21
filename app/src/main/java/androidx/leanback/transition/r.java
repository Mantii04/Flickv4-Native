package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.transition.Transition;
import android.view.View;
import androidx.leanback.R;

/* loaded from: classes.dex */
public final class r extends AnimatorListenerAdapter implements Transition.TransitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f6441a;

    /* renamed from: b, reason: collision with root package name */
    public final View f6442b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6443c;

    /* renamed from: d, reason: collision with root package name */
    public final int f6444d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f6445e;

    /* renamed from: f, reason: collision with root package name */
    public float f6446f;

    /* renamed from: g, reason: collision with root package name */
    public float f6447g;

    /* renamed from: h, reason: collision with root package name */
    public final float f6448h;

    /* renamed from: i, reason: collision with root package name */
    public final float f6449i;

    public r(View view, View view2, int i2, int i7, float f3, float f7) {
        this.f6442b = view;
        this.f6441a = view2;
        this.f6443c = i2 - Math.round(view.getTranslationX());
        this.f6444d = i7 - Math.round(view.getTranslationY());
        this.f6448h = f3;
        this.f6449i = f7;
        int[] iArr = (int[]) view2.getTag(R.id.transitionPosition);
        this.f6445e = iArr;
        if (iArr != null) {
            view2.setTag(R.id.transitionPosition, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (this.f6445e == null) {
            this.f6445e = new int[2];
        }
        int[] iArr = this.f6445e;
        float f3 = this.f6443c;
        View view = this.f6442b;
        iArr[0] = Math.round(view.getTranslationX() + f3);
        this.f6445e[1] = Math.round(view.getTranslationY() + this.f6444d);
        this.f6441a.setTag(R.id.transitionPosition, this.f6445e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        View view = this.f6442b;
        this.f6446f = view.getTranslationX();
        this.f6447g = view.getTranslationY();
        view.setTranslationX(this.f6448h);
        view.setTranslationY(this.f6449i);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        float f3 = this.f6446f;
        View view = this.f6442b;
        view.setTranslationX(f3);
        view.setTranslationY(this.f6447g);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        float f3 = this.f6448h;
        View view = this.f6442b;
        view.setTranslationX(f3);
        view.setTranslationY(this.f6449i);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
    }
}
