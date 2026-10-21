package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BaseInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.leanback.R;

/* loaded from: classes.dex */
class SlideKitkat extends Visibility {

    /* renamed from: e, reason: collision with root package name */
    public static final DecelerateInterpolator f6424e = new DecelerateInterpolator();

    /* renamed from: f, reason: collision with root package name */
    public static final AccelerateInterpolator f6425f = new AccelerateInterpolator();

    /* renamed from: j, reason: collision with root package name */
    public static final g f6426j = new g();

    /* renamed from: m, reason: collision with root package name */
    public static final h f6427m = new h();

    /* renamed from: n, reason: collision with root package name */
    public static final i f6428n = new i();

    /* renamed from: p, reason: collision with root package name */
    public static final j f6429p = new j();

    /* renamed from: q, reason: collision with root package name */
    public static final k f6430q = new k();

    /* renamed from: r, reason: collision with root package name */
    public static final l f6431r = new l();

    /* renamed from: b, reason: collision with root package name */
    public m f6432b;

    public SlideKitkat(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.lbSlide);
        setSlideEdge(obtainStyledAttributes.getInt(R.styleable.lbSlide_lb_slideEdge, 80));
        long j7 = obtainStyledAttributes.getInt(R.styleable.lbSlide_android_duration, -1);
        if (j7 >= 0) {
            setDuration(j7);
        }
        long j8 = obtainStyledAttributes.getInt(R.styleable.lbSlide_android_startDelay, -1);
        if (j8 > 0) {
            setStartDelay(j8);
        }
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.lbSlide_android_interpolator, 0);
        if (resourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        }
        obtainStyledAttributes.recycle();
    }

    public static ObjectAnimator a(View view, Property property, float f3, float f7, float f8, BaseInterpolator baseInterpolator, int i2) {
        float[] fArr = (float[]) view.getTag(R.id.lb_slide_transition_value);
        if (fArr != null) {
            f3 = View.TRANSLATION_Y == property ? fArr[1] : fArr[0];
            view.setTag(R.id.lb_slide_transition_value, null);
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f3, f7);
        p pVar = new p(view, property, f8, f7, i2);
        ofFloat.addListener(pVar);
        ofFloat.addPauseListener(pVar);
        ofFloat.setInterpolator(baseInterpolator);
        return ofFloat;
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i2, TransitionValues transitionValues2, int i7) {
        View view = transitionValues2 != null ? transitionValues2.view : null;
        if (view == null) {
            return null;
        }
        float here = this.f6432b.getHere(view);
        return a(view, this.f6432b.getProperty(), this.f6432b.getGone(view), here, here, f6424e, 0);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int i2, TransitionValues transitionValues2, int i7) {
        View view = transitionValues != null ? transitionValues.view : null;
        if (view == null) {
            return null;
        }
        float here = this.f6432b.getHere(view);
        return a(view, this.f6432b.getProperty(), here, this.f6432b.getGone(view), here, f6425f, 4);
    }

    public void setSlideEdge(int i2) {
        if (i2 == 3) {
            this.f6432b = f6426j;
            return;
        }
        if (i2 == 5) {
            this.f6432b = f6428n;
            return;
        }
        if (i2 == 48) {
            this.f6432b = f6427m;
            return;
        }
        if (i2 == 80) {
            this.f6432b = f6429p;
        } else if (i2 == 8388611) {
            this.f6432b = f6430q;
        } else {
            if (i2 != 8388613) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f6432b = f6431r;
        }
    }
}
