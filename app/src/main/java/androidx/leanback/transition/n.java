package androidx.leanback.transition;

import android.util.Property;
import android.view.View;

/* loaded from: classes.dex */
public abstract class n implements m {
    @Override // androidx.leanback.transition.m
    public float getHere(View view) {
        return view.getTranslationX();
    }

    @Override // androidx.leanback.transition.m
    public Property<View, Float> getProperty() {
        return View.TRANSLATION_X;
    }
}
