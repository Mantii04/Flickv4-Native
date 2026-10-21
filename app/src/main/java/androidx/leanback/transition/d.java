package androidx.leanback.transition;

import a.AbstractC0373c;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class d extends AbstractC0373c {
    @Override // a.AbstractC0373c
    public float getGoneY(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        return fadeAndShortSlide.b(viewGroup) + view.getTranslationY();
    }
}
