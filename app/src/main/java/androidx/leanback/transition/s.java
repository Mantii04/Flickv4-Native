package androidx.leanback.transition;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.transition.TransitionValues;
import android.util.Property;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.leanback.R;

/* loaded from: classes.dex */
public abstract class s {
    public static ObjectAnimator a(View view, TransitionValues transitionValues, int i2, int i7, float f3, float f7, float f8, float f9, DecelerateInterpolator decelerateInterpolator, FadeAndShortSlide fadeAndShortSlide) {
        float f10 = f7;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        if (((int[]) transitionValues.view.getTag(R.id.transitionPosition)) != null) {
            f3 = (r2[0] - i2) + translationX;
            f10 = (r2[1] - i7) + translationY;
        }
        int round = Math.round(f3 - translationX) + i2;
        int round2 = Math.round(f10 - translationY) + i7;
        view.setTranslationX(f3);
        view.setTranslationY(f10);
        if (f3 == f8 && f10 == f9) {
            return null;
        }
        Path path = new Path();
        path.moveTo(f3, f10);
        path.lineTo(f8, f9);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, (Property<View, Float>) View.TRANSLATION_Y, path);
        r rVar = new r(view, transitionValues.view, round, round2, translationX, translationY);
        fadeAndShortSlide.addListener(rVar);
        ofFloat.addListener(rVar);
        ofFloat.addPauseListener(rVar);
        ofFloat.setInterpolator(decelerateInterpolator);
        return ofFloat;
    }
}
