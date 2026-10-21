package androidx.leanback.transition;

import a.AbstractC0373c;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import androidx.leanback.R;

/* loaded from: classes.dex */
public class FadeAndShortSlide extends Visibility {

    /* renamed from: m, reason: collision with root package name */
    public static final DecelerateInterpolator f6414m = new DecelerateInterpolator();

    /* renamed from: n, reason: collision with root package name */
    public static final a f6415n = new a();

    /* renamed from: p, reason: collision with root package name */
    public static final b f6416p = new b();

    /* renamed from: q, reason: collision with root package name */
    public static final c f6417q = new c();

    /* renamed from: r, reason: collision with root package name */
    public static final d f6418r = new d();

    /* renamed from: s, reason: collision with root package name */
    public static final e f6419s = new e();

    /* renamed from: b, reason: collision with root package name */
    public AbstractC0373c f6420b;

    /* renamed from: e, reason: collision with root package name */
    public Visibility f6421e;

    /* renamed from: f, reason: collision with root package name */
    public final float f6422f;

    /* renamed from: j, reason: collision with root package name */
    public final f f6423j;

    public FadeAndShortSlide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6421e = new Fade();
        this.f6422f = -1.0f;
        this.f6423j = new f(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.lbSlide);
        setSlideEdge(obtainStyledAttributes.getInt(R.styleable.lbSlide_lb_slideEdge, 8388611));
        obtainStyledAttributes.recycle();
    }

    public final float a(ViewGroup viewGroup) {
        float f3 = this.f6422f;
        return f3 >= 0.0f ? f3 : viewGroup.getWidth() / 4;
    }

    @Override // android.transition.Transition
    public Transition addListener(Transition.TransitionListener transitionListener) {
        this.f6421e.addListener(transitionListener);
        return super.addListener(transitionListener);
    }

    public final float b(ViewGroup viewGroup) {
        float f3 = this.f6422f;
        return f3 >= 0.0f ? f3 : viewGroup.getHeight() / 4;
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        this.f6421e.captureEndValues(transitionValues);
        super.captureEndValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        this.f6421e.captureStartValues(transitionValues);
        super.captureStartValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues2.values.get("android:fadeAndShortSlideTransition:screenPosition");
        int i2 = iArr[0];
        int i7 = iArr[1];
        float translationX = view.getTranslationX();
        ObjectAnimator a7 = s.a(view, transitionValues2, i2, i7, this.f6420b.getGoneX(this, viewGroup, view, iArr), this.f6420b.getGoneY(this, viewGroup, view, iArr), translationX, view.getTranslationY(), f6414m, this);
        Animator onAppear = this.f6421e.onAppear(viewGroup, view, transitionValues, transitionValues2);
        if (a7 == null) {
            return onAppear;
        }
        if (onAppear == null) {
            return a7;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(a7).with(onAppear);
        return animatorSet;
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues.values.get("android:fadeAndShortSlideTransition:screenPosition");
        ObjectAnimator a7 = s.a(view, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f6420b.getGoneX(this, viewGroup, view, iArr), this.f6420b.getGoneY(this, viewGroup, view, iArr), f6414m, this);
        Animator onDisappear = this.f6421e.onDisappear(viewGroup, view, transitionValues, transitionValues2);
        if (a7 == null) {
            return onDisappear;
        }
        if (onDisappear == null) {
            return a7;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(a7).with(onDisappear);
        return animatorSet;
    }

    @Override // android.transition.Transition
    public Transition removeListener(Transition.TransitionListener transitionListener) {
        this.f6421e.removeListener(transitionListener);
        return super.removeListener(transitionListener);
    }

    @Override // android.transition.Transition
    public void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        this.f6421e.setEpicenterCallback(epicenterCallback);
        super.setEpicenterCallback(epicenterCallback);
    }

    public void setSlideEdge(int i2) {
        if (i2 == 48) {
            this.f6420b = f6419s;
            return;
        }
        if (i2 == 80) {
            this.f6420b = f6418r;
            return;
        }
        if (i2 == 112) {
            this.f6420b = this.f6423j;
            return;
        }
        if (i2 == 8388611) {
            this.f6420b = f6415n;
        } else if (i2 == 8388613) {
            this.f6420b = f6416p;
        } else {
            if (i2 != 8388615) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f6420b = f6417q;
        }
    }

    @Override // android.transition.Transition
    public Transition clone() {
        FadeAndShortSlide fadeAndShortSlide = (FadeAndShortSlide) super.clone();
        fadeAndShortSlide.f6421e = (Visibility) this.f6421e.clone();
        return fadeAndShortSlide;
    }
}
