package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* renamed from: o.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1421b implements d {
    public static e a(c cVar) {
        return (e) ((C1420a) cVar).getCardBackground();
    }

    @Override // o.d
    public ColorStateList getBackgroundColor(c cVar) {
        return a(cVar).getColor();
    }

    @Override // o.d
    public float getElevation(c cVar) {
        return ((C1420a) cVar).getCardView().getElevation();
    }

    @Override // o.d
    public float getMaxElevation(c cVar) {
        return a(cVar).f19026e;
    }

    @Override // o.d
    public float getRadius(c cVar) {
        return a(cVar).getRadius();
    }

    @Override // o.d
    public void initialize(c cVar, Context context, ColorStateList colorStateList, float f3, float f7, float f8) {
        C1420a c1420a = (C1420a) cVar;
        c1420a.setCardBackground(new e(f3, colorStateList));
        View cardView = c1420a.getCardView();
        cardView.setClipToOutline(true);
        cardView.setElevation(f7);
        setMaxElevation(c1420a, f8);
    }

    @Override // o.d
    public void onCompatPaddingChanged(c cVar) {
        setMaxElevation(cVar, getMaxElevation(cVar));
    }

    @Override // o.d
    public void onPreventCornerOverlapChanged(c cVar) {
        setMaxElevation(cVar, getMaxElevation(cVar));
    }

    @Override // o.d
    public void setBackgroundColor(c cVar, ColorStateList colorStateList) {
        a(cVar).setColor(colorStateList);
    }

    @Override // o.d
    public void setElevation(c cVar, float f3) {
        ((C1420a) cVar).getCardView().setElevation(f3);
    }

    @Override // o.d
    public void setMaxElevation(c cVar, float f3) {
        e a7 = a(cVar);
        C1420a c1420a = (C1420a) cVar;
        boolean useCompatPadding = c1420a.getUseCompatPadding();
        boolean preventCornerOverlap = c1420a.getPreventCornerOverlap();
        if (f3 != a7.f19026e || a7.f19027f != useCompatPadding || a7.f19028g != preventCornerOverlap) {
            a7.f19026e = f3;
            a7.f19027f = useCompatPadding;
            a7.f19028g = preventCornerOverlap;
            a7.b(null);
            a7.invalidateSelf();
        }
        updatePadding(c1420a);
    }

    @Override // o.d
    public void setRadius(c cVar, float f3) {
        e a7 = a(cVar);
        if (f3 == a7.f19022a) {
            return;
        }
        a7.f19022a = f3;
        a7.b(null);
        a7.invalidateSelf();
    }

    public void updatePadding(c cVar) {
        C1420a c1420a = (C1420a) cVar;
        if (!c1420a.getUseCompatPadding()) {
            c1420a.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float maxElevation = getMaxElevation(c1420a);
        float radius = getRadius(c1420a);
        int ceil = (int) Math.ceil(f.a(maxElevation, radius, c1420a.getPreventCornerOverlap()));
        int ceil2 = (int) Math.ceil(f.b(maxElevation, radius, c1420a.getPreventCornerOverlap()));
        c1420a.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }

    @Override // o.d
    public void initStatic() {
    }
}
