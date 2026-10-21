package androidx.leanback.transition;

import android.view.View;

/* loaded from: classes.dex */
public final class i extends n {
    @Override // androidx.leanback.transition.m
    public float getGone(View view) {
        return view.getTranslationX() + view.getWidth();
    }
}
