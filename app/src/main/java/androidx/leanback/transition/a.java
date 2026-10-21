package androidx.leanback.transition;

import a.AbstractC0373c;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class a extends AbstractC0373c {
    @Override // a.AbstractC0373c
    public float getGoneX(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        if (viewGroup.getLayoutDirection() != 1) {
            return view.getTranslationX() - fadeAndShortSlide.a(viewGroup);
        }
        return fadeAndShortSlide.a(viewGroup) + view.getTranslationX();
    }
}
