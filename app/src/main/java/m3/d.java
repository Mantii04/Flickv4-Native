package m3;

import G3.B;
import G3.j;
import G3.p;
import M.AbstractC0181p0;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import r3.AbstractC1595a;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final MaterialButton f18560a;

    /* renamed from: b, reason: collision with root package name */
    public p f18561b;

    /* renamed from: c, reason: collision with root package name */
    public int f18562c;

    /* renamed from: d, reason: collision with root package name */
    public int f18563d;

    /* renamed from: e, reason: collision with root package name */
    public int f18564e;

    /* renamed from: f, reason: collision with root package name */
    public int f18565f;

    /* renamed from: g, reason: collision with root package name */
    public int f18566g;

    /* renamed from: h, reason: collision with root package name */
    public int f18567h;

    /* renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f18568i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f18569j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f18570k;

    /* renamed from: l, reason: collision with root package name */
    public ColorStateList f18571l;

    /* renamed from: m, reason: collision with root package name */
    public j f18572m;

    /* renamed from: q, reason: collision with root package name */
    public boolean f18576q;

    /* renamed from: s, reason: collision with root package name */
    public RippleDrawable f18578s;

    /* renamed from: t, reason: collision with root package name */
    public int f18579t;

    /* renamed from: n, reason: collision with root package name */
    public boolean f18573n = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f18574o = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f18575p = false;

    /* renamed from: r, reason: collision with root package name */
    public boolean f18577r = true;

    public d(MaterialButton materialButton, p pVar) {
        this.f18560a = materialButton;
        this.f18561b = pVar;
    }

    public final j a(boolean z6) {
        RippleDrawable rippleDrawable = this.f18578s;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (j) ((LayerDrawable) ((InsetDrawable) this.f18578s.getDrawable(0)).getDrawable()).getDrawable(!z6 ? 1 : 0);
    }

    public final void b(p pVar) {
        this.f18561b = pVar;
        if (a(false) != null) {
            a(false).setShapeAppearanceModel(pVar);
        }
        if (a(true) != null) {
            a(true).setShapeAppearanceModel(pVar);
        }
        if (getMaskDrawable() != null) {
            getMaskDrawable().setShapeAppearanceModel(pVar);
        }
    }

    public final void c(int i2, int i7) {
        MaterialButton materialButton = this.f18560a;
        int paddingStart = AbstractC0181p0.getPaddingStart(materialButton);
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = AbstractC0181p0.getPaddingEnd(materialButton);
        int paddingBottom = materialButton.getPaddingBottom();
        int i8 = this.f18564e;
        int i9 = this.f18565f;
        this.f18565f = i7;
        this.f18564e = i2;
        if (!this.f18574o) {
            d();
        }
        AbstractC0181p0.setPaddingRelative(materialButton, paddingStart, (paddingTop + i2) - i8, paddingEnd, (paddingBottom + i7) - i9);
    }

    public final void d() {
        j jVar = new j(this.f18561b);
        MaterialButton materialButton = this.f18560a;
        jVar.initializeElevationOverlay(materialButton.getContext());
        E.c.setTintList(jVar, this.f18569j);
        PorterDuff.Mode mode = this.f18568i;
        if (mode != null) {
            E.c.setTintMode(jVar, mode);
        }
        jVar.setStroke(this.f18567h, this.f18570k);
        j jVar2 = new j(this.f18561b);
        jVar2.setTint(0);
        jVar2.setStroke(this.f18567h, this.f18573n ? AbstractC1595a.getColor(materialButton, R.attr.colorSurface) : 0);
        j jVar3 = new j(this.f18561b);
        this.f18572m = jVar3;
        E.c.setTint(jVar3, -1);
        RippleDrawable rippleDrawable = new RippleDrawable(D3.a.sanitizeRippleDrawableColor(this.f18571l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{jVar2, jVar}), this.f18562c, this.f18564e, this.f18563d, this.f18565f), this.f18572m);
        this.f18578s = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        j a7 = a(false);
        if (a7 != null) {
            a7.setElevation(this.f18579t);
            a7.setState(materialButton.getDrawableState());
        }
    }

    public final void e() {
        j a7 = a(false);
        j a8 = a(true);
        if (a7 != null) {
            a7.setStroke(this.f18567h, this.f18570k);
            if (a8 != null) {
                a8.setStroke(this.f18567h, this.f18573n ? AbstractC1595a.getColor(this.f18560a, R.attr.colorSurface) : 0);
            }
        }
    }

    public int getInsetBottom() {
        return this.f18565f;
    }

    public int getInsetTop() {
        return this.f18564e;
    }

    public B getMaskDrawable() {
        RippleDrawable rippleDrawable = this.f18578s;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f18578s.getNumberOfLayers() > 2 ? (B) this.f18578s.getDrawable(2) : (B) this.f18578s.getDrawable(1);
    }

    public void setInsetBottom(int i2) {
        c(this.f18564e, i2);
    }

    public void setInsetTop(int i2) {
        c(i2, this.f18565f);
    }
}
