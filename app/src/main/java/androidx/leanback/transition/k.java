package androidx.leanback.transition;

import android.view.View;

/* loaded from: classes.dex */
public final class k extends n {
    @Override // androidx.leanback.transition.m
    public float getGone(View view) {
        return view.getLayoutDirection() == 1 ? view.getTranslationX() + view.getWidth() : view.getTranslationX() - view.getWidth();
    }
}
