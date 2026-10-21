package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import x1.I;
import x1.M;
import x1.W;

/* loaded from: classes.dex */
public final class c extends g {
    public c(int i2) {
        setMode(i2);
    }

    public static float p(I i2, float f3) {
        Float f7;
        return (i2 == null || (f7 = (Float) i2.f20783a.get("android:fade:transitionAlpha")) == null) ? f3 : f7.floatValue();
    }

    @Override // androidx.transition.g, androidx.transition.e
    public void captureStartValues(I i2) {
        super.captureStartValues(i2);
        Float f3 = (Float) i2.f20784b.getTag(R.id.transition_pause_alpha);
        if (f3 == null) {
            View view = i2.f20784b;
            f3 = view.getVisibility() == 0 ? Float.valueOf(M.f20786a.getTransitionAlpha(view)) : Float.valueOf(0.0f);
        }
        i2.f20783a.put("android:fade:transitionAlpha", f3);
    }

    public final ObjectAnimator o(View view, float f3, float f7) {
        if (f3 == f7) {
            return null;
        }
        M.f20786a.setTransitionAlpha(view, f3);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, M.f20787b, f7);
        b bVar = new b(view);
        ofFloat.addListener(bVar);
        getRootTransition().addListener(bVar);
        return ofFloat;
    }

    @Override // androidx.transition.g
    public Animator onAppear(ViewGroup viewGroup, View view, I i2, I i7) {
        M.f20786a.saveNonTransitionAlpha(view);
        return o(view, p(i2, 0.0f), 1.0f);
    }

    @Override // androidx.transition.g
    public Animator onDisappear(ViewGroup viewGroup, View view, I i2, I i7) {
        W w6 = M.f20786a;
        w6.saveNonTransitionAlpha(view);
        ObjectAnimator o6 = o(view, p(i2, 1.0f), 0.0f);
        if (o6 == null) {
            w6.setTransitionAlpha(view, p(i7, 1.0f));
        }
        return o6;
    }

    public c() {
    }
}
