package h3;

import M.AbstractC0181p0;
import android.graphics.Rect;
import android.view.View;
import com.google.android.material.appbar.AppBarLayout;

/* renamed from: h3.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0981e extends AbstractC0980d {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f16528a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final Rect f16529b = new Rect();

    @Override // h3.AbstractC0980d
    public void onOffsetChanged(AppBarLayout appBarLayout, View view, float f3) {
        Rect rect = this.f16528a;
        view.getDrawingRect(rect);
        appBarLayout.offsetDescendantRectToMyCoords(view, rect);
        rect.offset(0, -appBarLayout.getTopInset());
        float abs = rect.top - Math.abs(f3);
        if (abs > 0.0f) {
            AbstractC0181p0.setClipBounds(view, null);
            view.setTranslationY(0.0f);
            view.setVisibility(0);
            return;
        }
        float clamp = 1.0f - G.a.clamp(Math.abs(abs / rect.height()), 0.0f, 1.0f);
        float height = (-abs) - ((rect.height() * 0.3f) * (1.0f - (clamp * clamp)));
        view.setTranslationY(height);
        Rect rect2 = this.f16529b;
        view.getDrawingRect(rect2);
        rect2.offset(0, (int) (-height));
        if (height >= rect2.height()) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        AbstractC0181p0.setClipBounds(view, rect2);
    }
}
