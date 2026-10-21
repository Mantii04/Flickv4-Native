package flix.com.vision.materialsearchview.utils;

import M.D0;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewAnimationUtils;

/* loaded from: classes2.dex */
public class AnimationUtils {

    /* renamed from: flix.com.vision.materialsearchview.utils.AnimationUtils$1, reason: invalid class name */
    class AnonymousClass1 implements D0 {
        @Override // M.D0
        public void onAnimationCancel(View view) {
        }

        @Override // M.D0
        public void onAnimationEnd(View view) {
            view.setVisibility(8);
            view.setAlpha(1.0f);
            view.setDrawingCacheEnabled(false);
        }

        @Override // M.D0
        public void onAnimationStart(View view) {
            view.setDrawingCacheEnabled(true);
        }
    }

    @TargetApi(21)
    public static void circleHideView(View view, AnimatorListenerAdapter animatorListenerAdapter) {
        circleHideView(view, 250, animatorListenerAdapter);
    }

    @TargetApi(21)
    public static void circleRevealView(View view, int i2) {
        int width = view.getWidth();
        int height = view.getHeight() / 2;
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, width, height, 0.0f, (float) Math.hypot(width, height));
        if (i2 > 0) {
            createCircularReveal.setDuration(i2);
        } else {
            createCircularReveal.setDuration(250L);
        }
        view.setVisibility(0);
        createCircularReveal.start();
    }

    @TargetApi(21)
    public static void circleHideView(View view, int i2, AnimatorListenerAdapter animatorListenerAdapter) {
        int width = view.getWidth();
        int height = view.getHeight() / 2;
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, width, height, (float) Math.hypot(width, height), 0.0f);
        createCircularReveal.addListener(animatorListenerAdapter);
        if (i2 > 0) {
            createCircularReveal.setDuration(i2);
        } else {
            createCircularReveal.setDuration(250L);
        }
        createCircularReveal.start();
    }

    @TargetApi(21)
    public static void circleRevealView(View view) {
        circleRevealView(view, 250);
    }
}
