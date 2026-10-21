package x1;

import android.view.View;

/* loaded from: classes.dex */
public abstract class N {
    public static float a(View view) {
        float transitionAlpha;
        transitionAlpha = view.getTransitionAlpha();
        return transitionAlpha;
    }

    public static void b(View view, float f3) {
        view.setTransitionAlpha(f3);
    }
}
