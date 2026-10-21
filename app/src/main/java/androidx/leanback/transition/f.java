package androidx.leanback.transition;

import a.AbstractC0373c;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class f extends AbstractC0373c {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FadeAndShortSlide f6433b;

    public f(FadeAndShortSlide fadeAndShortSlide) {
        this.f6433b = fadeAndShortSlide;
    }

    @Override // a.AbstractC0373c
    public float getGoneY(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        int centerY;
        int height = (view.getHeight() / 2) + iArr[1];
        viewGroup.getLocationOnScreen(iArr);
        Rect epicenter = this.f6433b.getEpicenter();
        if (epicenter == null) {
            centerY = (viewGroup.getHeight() / 2) + iArr[1];
        } else {
            centerY = epicenter.centerY();
        }
        if (height < centerY) {
            return view.getTranslationY() - fadeAndShortSlide.b(viewGroup);
        }
        return fadeAndShortSlide.b(viewGroup) + view.getTranslationY();
    }
}
