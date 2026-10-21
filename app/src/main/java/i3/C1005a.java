package i3;

import C3.g;
import G3.j;
import G3.p;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.R;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import x3.I;
import x3.J;
import x3.L;

/* renamed from: i3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1005a extends Drawable implements I {

    /* renamed from: w, reason: collision with root package name */
    public static final int f16660w = R.style.Widget_MaterialComponents_Badge;

    /* renamed from: x, reason: collision with root package name */
    public static final int f16661x = R.attr.badgeStyle;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f16662b;

    /* renamed from: e, reason: collision with root package name */
    public final j f16663e;

    /* renamed from: f, reason: collision with root package name */
    public final J f16664f;

    /* renamed from: j, reason: collision with root package name */
    public final Rect f16665j;

    /* renamed from: m, reason: collision with root package name */
    public final C1008d f16666m;

    /* renamed from: n, reason: collision with root package name */
    public float f16667n;

    /* renamed from: p, reason: collision with root package name */
    public float f16668p;

    /* renamed from: q, reason: collision with root package name */
    public final int f16669q;

    /* renamed from: r, reason: collision with root package name */
    public float f16670r;

    /* renamed from: s, reason: collision with root package name */
    public float f16671s;

    /* renamed from: t, reason: collision with root package name */
    public float f16672t;

    /* renamed from: u, reason: collision with root package name */
    public WeakReference f16673u;

    /* renamed from: v, reason: collision with root package name */
    public WeakReference f16674v;

    public C1005a(Context context) {
        g gVar;
        WeakReference weakReference = new WeakReference(context);
        this.f16662b = weakReference;
        L.checkMaterialTheme(context);
        this.f16665j = new Rect();
        J j7 = new J(this);
        this.f16664f = j7;
        j7.getTextPaint().setTextAlign(Paint.Align.CENTER);
        C1008d c1008d = new C1008d(context);
        this.f16666m = c1008d;
        boolean b7 = b();
        C1007c c1007c = c1008d.f16706b;
        j jVar = new j(p.builder(context, b7 ? c1007c.f16694p.intValue() : c1007c.f16692m.intValue(), b() ? c1007c.f16695q.intValue() : c1007c.f16693n.intValue()).build());
        this.f16663e = jVar;
        c();
        Context context2 = (Context) weakReference.get();
        if (context2 != null && j7.getTextAppearance() != (gVar = new g(context2, c1007c.f16691j.intValue()))) {
            j7.setTextAppearance(gVar, context2);
            j7.getTextPaint().setColor(c1007c.f16690f.intValue());
            invalidateSelf();
            d();
            invalidateSelf();
        }
        if (getMaxCharacterCount() != -2) {
            this.f16669q = ((int) Math.pow(10.0d, getMaxCharacterCount() - 1.0d)) - 1;
        } else {
            this.f16669q = getMaxNumber();
        }
        j7.setTextSizeDirty(true);
        d();
        invalidateSelf();
        j7.setTextSizeDirty(true);
        c();
        d();
        invalidateSelf();
        j7.getTextPaint().setAlpha(getAlpha());
        invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(c1007c.f16689e.intValue());
        if (jVar.getFillColor() != valueOf) {
            jVar.setFillColor(valueOf);
            invalidateSelf();
        }
        j7.getTextPaint().setColor(c1007c.f16690f.intValue());
        invalidateSelf();
        WeakReference weakReference2 = this.f16673u;
        if (weakReference2 != null && weakReference2.get() != null) {
            View view = (View) this.f16673u.get();
            WeakReference weakReference3 = this.f16674v;
            updateBadgeCoordinates(view, weakReference3 != null ? (FrameLayout) weakReference3.get() : null);
        }
        d();
        setVisible(c1007c.f16677C.booleanValue(), false);
    }

    public static C1005a create(Context context) {
        return new C1005a(context);
    }

    public final String a() {
        int i2 = this.f16669q;
        boolean hasText = hasText();
        WeakReference weakReference = this.f16662b;
        if (!hasText) {
            if (!hasNumber()) {
                return null;
            }
            C1008d c1008d = this.f16666m;
            if (i2 == -2 || getNumber() <= i2) {
                return NumberFormat.getInstance(c1008d.f16706b.f16701w).format(getNumber());
            }
            Context context = (Context) weakReference.get();
            return context == null ? "" : String.format(c1008d.f16706b.f16701w, context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(i2), "+");
        }
        String text = getText();
        int maxCharacterCount = getMaxCharacterCount();
        if (maxCharacterCount == -2 || text == null || text.length() <= maxCharacterCount) {
            return text;
        }
        Context context2 = (Context) weakReference.get();
        if (context2 == null) {
            return "";
        }
        return String.format(context2.getString(R.string.m3_exceed_max_badge_text_suffix), text.substring(0, maxCharacterCount - 1), "…");
    }

    public final boolean b() {
        return hasText() || hasNumber();
    }

    public final void c() {
        Context context = (Context) this.f16662b.get();
        if (context == null) {
            return;
        }
        boolean b7 = b();
        C1008d c1008d = this.f16666m;
        this.f16663e.setShapeAppearanceModel(p.builder(context, b7 ? c1008d.f16706b.f16694p.intValue() : c1008d.f16706b.f16692m.intValue(), b() ? c1008d.f16706b.f16695q.intValue() : c1008d.f16706b.f16693n.intValue()).build());
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x021d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            Method dump skipped, instructions count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i3.C1005a.d():void");
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        String a7;
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f16663e.draw(canvas);
        if (!b() || (a7 = a()) == null) {
            return;
        }
        Rect rect = new Rect();
        J j7 = this.f16664f;
        j7.getTextPaint().getTextBounds(a7, 0, a7.length(), rect);
        float exactCenterY = this.f16668p - rect.exactCenterY();
        canvas.drawText(a7, this.f16667n, rect.bottom <= 0 ? (int) exactCenterY : Math.round(exactCenterY), j7.getTextPaint());
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f16666m.f16706b.f16696r;
    }

    public CharSequence getContentDescription() {
        Context context;
        int i2 = this.f16669q;
        if (!isVisible()) {
            return null;
        }
        boolean hasText = hasText();
        C1008d c1008d = this.f16666m;
        if (hasText) {
            String str = c1008d.f16706b.f16702x;
            return str != null ? str : getText();
        }
        if (!hasNumber()) {
            return c1008d.f16706b.f16703y;
        }
        if (c1008d.f16706b.f16704z == 0 || (context = (Context) this.f16662b.get()) == null) {
            return null;
        }
        C1007c c1007c = c1008d.f16706b;
        return (i2 == -2 || getNumber() <= i2) ? context.getResources().getQuantityString(c1007c.f16704z, getNumber(), Integer.valueOf(getNumber())) : context.getString(c1007c.f16675A, Integer.valueOf(i2));
    }

    public FrameLayout getCustomBadgeParent() {
        WeakReference weakReference = this.f16674v;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f16665j.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f16665j.width();
    }

    public int getMaxCharacterCount() {
        return this.f16666m.f16706b.f16699u;
    }

    public int getMaxNumber() {
        return this.f16666m.f16706b.f16700v;
    }

    public int getNumber() {
        int i2 = this.f16666m.f16706b.f16698t;
        if (i2 != -1) {
            return i2;
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public String getText() {
        return this.f16666m.f16706b.f16697s;
    }

    public boolean hasNumber() {
        C1007c c1007c = this.f16666m.f16706b;
        return c1007c.f16697s == null && c1007c.f16698t != -1;
    }

    public boolean hasText() {
        return this.f16666m.f16706b.f16697s != null;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable, x3.I
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // x3.I
    public void onTextSizeChange() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        C1008d c1008d = this.f16666m;
        c1008d.f16705a.f16696r = i2;
        c1008d.f16706b.f16696r = i2;
        this.f16664f.getTextPaint().setAlpha(getAlpha());
        invalidateSelf();
    }

    public void updateBadgeCoordinates(View view, FrameLayout frameLayout) {
        this.f16673u = new WeakReference(view);
        this.f16674v = new WeakReference(frameLayout);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        d();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
