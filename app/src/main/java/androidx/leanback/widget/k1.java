package androidx.leanback.widget;

import android.content.Context;
import android.content.res.Resources;

/* loaded from: classes.dex */
public final class k1 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6838a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6839b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6840c;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6842e;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6841d = true;

    /* renamed from: f, reason: collision with root package name */
    public l1 f6843f = l1.f6851a;

    public m1 build(Context context) {
        m1 m1Var = new m1();
        m1Var.f6868a = 1;
        m1Var.f6869b = this.f6838a;
        m1Var.f6870c = this.f6839b && m1.supportsRoundedCorner();
        m1Var.f6871d = this.f6840c && m1.supportsShadow();
        if (m1Var.f6870c) {
            l1 l1Var = this.f6843f;
            if (l1Var.getRoundedCornerRadius() == 0) {
                m1Var.f6873f = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_rounded_rect_corner_radius);
            } else {
                m1Var.f6873f = l1Var.getRoundedCornerRadius();
            }
        }
        if (!m1Var.f6871d) {
            m1Var.f6868a = 1;
            m1Var.f6872e = (!m1.supportsForeground() || this.f6842e) && m1Var.f6869b;
            return m1Var;
        }
        if (!this.f6841d || !m1.supportsDynamicShadow()) {
            m1Var.f6868a = 2;
            m1Var.f6872e = true;
            return m1Var;
        }
        m1Var.f6868a = 3;
        l1 l1Var2 = this.f6843f;
        if (l1Var2.getDynamicShadowUnfocusedZ() < 0.0f) {
            Resources resources = context.getResources();
            m1Var.f6875h = resources.getDimension(androidx.leanback.R.dimen.lb_material_shadow_focused_z);
            m1Var.f6874g = resources.getDimension(androidx.leanback.R.dimen.lb_material_shadow_normal_z);
        } else {
            m1Var.f6875h = l1Var2.getDynamicShadowFocusedZ();
            m1Var.f6874g = l1Var2.getDynamicShadowUnfocusedZ();
        }
        m1Var.f6872e = (!m1.supportsForeground() || this.f6842e) && m1Var.f6869b;
        return m1Var;
    }

    public k1 keepForegroundDrawable(boolean z6) {
        this.f6842e = z6;
        return this;
    }

    public k1 needsOverlay(boolean z6) {
        this.f6838a = z6;
        return this;
    }

    public k1 needsRoundedCorner(boolean z6) {
        this.f6839b = z6;
        return this;
    }

    public k1 needsShadow(boolean z6) {
        this.f6840c = z6;
        return this;
    }

    public k1 options(l1 l1Var) {
        this.f6843f = l1Var;
        return this;
    }

    public k1 preferZOrder(boolean z6) {
        this.f6841d = z6;
        return this;
    }
}
