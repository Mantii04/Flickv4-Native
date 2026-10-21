package androidx.leanback.transition;

import android.view.View;

/* loaded from: classes.dex */
public final class j extends o {
    @Override // androidx.leanback.transition.m
    public float getGone(View view) {
        return view.getTranslationY() + view.getHeight();
    }
}
