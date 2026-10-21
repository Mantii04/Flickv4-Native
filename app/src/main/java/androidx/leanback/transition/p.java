package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Property;
import android.view.View;
import androidx.leanback.R;

/* loaded from: classes.dex */
public final class p extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6434a = false;

    /* renamed from: b, reason: collision with root package name */
    public float f6435b;

    /* renamed from: c, reason: collision with root package name */
    public final View f6436c;

    /* renamed from: d, reason: collision with root package name */
    public final float f6437d;

    /* renamed from: e, reason: collision with root package name */
    public final float f6438e;

    /* renamed from: f, reason: collision with root package name */
    public final int f6439f;

    /* renamed from: g, reason: collision with root package name */
    public final Property f6440g;

    public p(View view, Property<View, Float> property, float f3, float f7, int i2) {
        this.f6440g = property;
        this.f6436c = view;
        this.f6438e = f3;
        this.f6437d = f7;
        this.f6439f = i2;
        view.setVisibility(0);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        View view = this.f6436c;
        view.setTag(R.id.lb_slide_transition_value, new float[]{view.getTranslationX(), view.getTranslationY()});
        this.f6440g.set(view, Float.valueOf(this.f6438e));
        this.f6434a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        boolean z6 = this.f6434a;
        View view = this.f6436c;
        if (!z6) {
            this.f6440g.set(view, Float.valueOf(this.f6438e));
        }
        view.setVisibility(this.f6439f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        Property property = this.f6440g;
        View view = this.f6436c;
        this.f6435b = ((Float) property.get(view)).floatValue();
        property.set(view, Float.valueOf(this.f6437d));
        view.setVisibility(this.f6439f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        Float valueOf = Float.valueOf(this.f6435b);
        Property property = this.f6440g;
        View view = this.f6436c;
        property.set(view, valueOf);
        view.setVisibility(0);
    }
}
