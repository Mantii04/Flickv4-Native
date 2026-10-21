package androidx.leanback.transition;

import a.AbstractC0373c;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class c extends AbstractC0373c {
    @Override // a.AbstractC0373c
    public float getGoneX(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        int centerX;
        int width = (view.getWidth() / 2) + iArr[0];
        viewGroup.getLocationOnScreen(iArr);
        Rect epicenter = fadeAndShortSlide.getEpicenter();
        if (epicenter == null) {
            centerX = (viewGroup.getWidth() / 2) + iArr[0];
        } else {
            centerX = epicenter.centerX();
        }
        if (width < centerX) {
            return view.getTranslationX() - fadeAndShortSlide.a(viewGroup);
        }
        return fadeAndShortSlide.a(viewGroup) + view.getTranslationX();
    }
}
