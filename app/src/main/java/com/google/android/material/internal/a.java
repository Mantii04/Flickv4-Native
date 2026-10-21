package com.google.android.material.internal;

import A.i;
import C3.g;
import C3.k;
import K.p;
import L.h;
import M.AbstractC0181p0;
import M.AbstractC0185s;
import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import b.c;
import g3.AbstractC0951a;
import h0.C0959b;
import r3.AbstractC1595a;
import x3.C1830d;
import x3.C1831e;
import x3.G;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: A, reason: collision with root package name */
    public Typeface f12700A;

    /* renamed from: B, reason: collision with root package name */
    public Typeface f12701B;

    /* renamed from: C, reason: collision with root package name */
    public Typeface f12702C;

    /* renamed from: D, reason: collision with root package name */
    public C3.b f12703D;

    /* renamed from: E, reason: collision with root package name */
    public C3.b f12704E;

    /* renamed from: G, reason: collision with root package name */
    public CharSequence f12706G;

    /* renamed from: H, reason: collision with root package name */
    public CharSequence f12707H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f12708I;

    /* renamed from: K, reason: collision with root package name */
    public Bitmap f12710K;

    /* renamed from: L, reason: collision with root package name */
    public float f12711L;

    /* renamed from: M, reason: collision with root package name */
    public float f12712M;

    /* renamed from: N, reason: collision with root package name */
    public float f12713N;

    /* renamed from: O, reason: collision with root package name */
    public float f12714O;

    /* renamed from: P, reason: collision with root package name */
    public float f12715P;

    /* renamed from: Q, reason: collision with root package name */
    public int f12716Q;

    /* renamed from: R, reason: collision with root package name */
    public int[] f12717R;

    /* renamed from: S, reason: collision with root package name */
    public boolean f12718S;

    /* renamed from: T, reason: collision with root package name */
    public final TextPaint f12719T;

    /* renamed from: U, reason: collision with root package name */
    public final TextPaint f12720U;

    /* renamed from: V, reason: collision with root package name */
    public TimeInterpolator f12721V;

    /* renamed from: W, reason: collision with root package name */
    public TimeInterpolator f12722W;

    /* renamed from: X, reason: collision with root package name */
    public float f12723X;

    /* renamed from: Y, reason: collision with root package name */
    public float f12724Y;

    /* renamed from: Z, reason: collision with root package name */
    public float f12725Z;

    /* renamed from: a, reason: collision with root package name */
    public final View f12726a;

    /* renamed from: a0, reason: collision with root package name */
    public ColorStateList f12727a0;

    /* renamed from: b, reason: collision with root package name */
    public float f12728b;

    /* renamed from: b0, reason: collision with root package name */
    public float f12729b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12730c;

    /* renamed from: c0, reason: collision with root package name */
    public float f12731c0;

    /* renamed from: d, reason: collision with root package name */
    public float f12732d;

    /* renamed from: d0, reason: collision with root package name */
    public float f12733d0;

    /* renamed from: e, reason: collision with root package name */
    public float f12734e;

    /* renamed from: e0, reason: collision with root package name */
    public ColorStateList f12735e0;

    /* renamed from: f, reason: collision with root package name */
    public int f12736f;

    /* renamed from: f0, reason: collision with root package name */
    public float f12737f0;

    /* renamed from: g, reason: collision with root package name */
    public final Rect f12738g;

    /* renamed from: g0, reason: collision with root package name */
    public float f12739g0;

    /* renamed from: h, reason: collision with root package name */
    public final Rect f12740h;

    /* renamed from: h0, reason: collision with root package name */
    public float f12741h0;

    /* renamed from: i, reason: collision with root package name */
    public final RectF f12742i;

    /* renamed from: i0, reason: collision with root package name */
    public StaticLayout f12743i0;

    /* renamed from: j0, reason: collision with root package name */
    public float f12745j0;

    /* renamed from: k0, reason: collision with root package name */
    public float f12747k0;

    /* renamed from: l0, reason: collision with root package name */
    public float f12749l0;

    /* renamed from: m0, reason: collision with root package name */
    public CharSequence f12751m0;

    /* renamed from: n, reason: collision with root package name */
    public ColorStateList f12752n;

    /* renamed from: o, reason: collision with root package name */
    public ColorStateList f12754o;

    /* renamed from: p, reason: collision with root package name */
    public int f12756p;

    /* renamed from: q, reason: collision with root package name */
    public float f12758q;

    /* renamed from: r, reason: collision with root package name */
    public float f12760r;

    /* renamed from: s, reason: collision with root package name */
    public float f12761s;

    /* renamed from: t, reason: collision with root package name */
    public float f12762t;

    /* renamed from: u, reason: collision with root package name */
    public float f12763u;

    /* renamed from: v, reason: collision with root package name */
    public float f12764v;

    /* renamed from: w, reason: collision with root package name */
    public Typeface f12765w;

    /* renamed from: x, reason: collision with root package name */
    public Typeface f12766x;

    /* renamed from: y, reason: collision with root package name */
    public Typeface f12767y;

    /* renamed from: z, reason: collision with root package name */
    public Typeface f12768z;

    /* renamed from: j, reason: collision with root package name */
    public int f12744j = 16;

    /* renamed from: k, reason: collision with root package name */
    public int f12746k = 16;

    /* renamed from: l, reason: collision with root package name */
    public float f12748l = 15.0f;

    /* renamed from: m, reason: collision with root package name */
    public float f12750m = 15.0f;

    /* renamed from: F, reason: collision with root package name */
    public TextUtils.TruncateAt f12705F = TextUtils.TruncateAt.END;

    /* renamed from: J, reason: collision with root package name */
    public boolean f12709J = true;

    /* renamed from: n0, reason: collision with root package name */
    public int f12753n0 = 1;

    /* renamed from: o0, reason: collision with root package name */
    public float f12755o0 = 0.0f;

    /* renamed from: p0, reason: collision with root package name */
    public float f12757p0 = 1.0f;

    /* renamed from: q0, reason: collision with root package name */
    public int f12759q0 = 1;

    public a(View view) {
        this.f12726a = view;
        TextPaint textPaint = new TextPaint(129);
        this.f12719T = textPaint;
        this.f12720U = new TextPaint(textPaint);
        this.f12740h = new Rect();
        this.f12738g = new Rect();
        this.f12742i = new RectF();
        float f3 = this.f12732d;
        this.f12734e = c.a(1.0f, f3, 0.5f, f3);
        maybeUpdateFontWeightAdjustment(view.getContext().getResources().getConfiguration());
    }

    public static int a(int i2, int i7, float f3) {
        float f7 = 1.0f - f3;
        return Color.argb(Math.round((Color.alpha(i7) * f3) + (Color.alpha(i2) * f7)), Math.round((Color.red(i7) * f3) + (Color.red(i2) * f7)), Math.round((Color.green(i7) * f3) + (Color.green(i2) * f7)), Math.round((Color.blue(i7) * f3) + (Color.blue(i2) * f7)));
    }

    public static float e(float f3, float f7, float f8, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f8 = timeInterpolator.getInterpolation(f8);
        }
        return AbstractC0951a.lerp(f3, f7, f8);
    }

    public final boolean b(CharSequence charSequence) {
        boolean z6 = AbstractC0181p0.getLayoutDirection(this.f12726a) == 1;
        if (this.f12709J) {
            return (z6 ? p.f1576d : p.f1575c).isRtl(charSequence, 0, charSequence.length());
        }
        return z6;
    }

    public final void c(float f3, boolean z6) {
        float f7;
        float f8;
        Typeface typeface;
        boolean z7;
        Layout.Alignment alignment;
        if (this.f12706G == null) {
            return;
        }
        float width = this.f12740h.width();
        float width2 = this.f12738g.width();
        if (Math.abs(f3 - 1.0f) < 1.0E-5f) {
            f7 = this.f12750m;
            f8 = this.f12737f0;
            this.f12711L = 1.0f;
            typeface = this.f12765w;
        } else {
            float f9 = this.f12748l;
            float f10 = this.f12739g0;
            Typeface typeface2 = this.f12768z;
            if (Math.abs(f3 - 0.0f) < 1.0E-5f) {
                this.f12711L = 1.0f;
            } else {
                this.f12711L = e(this.f12748l, this.f12750m, f3, this.f12722W) / this.f12748l;
            }
            float f11 = this.f12750m / this.f12748l;
            width = (z6 || this.f12730c || width2 * f11 <= width) ? width2 : Math.min(width / f11, width2);
            f7 = f9;
            f8 = f10;
            typeface = typeface2;
        }
        TextPaint textPaint = this.f12719T;
        if (width > 0.0f) {
            boolean z8 = this.f12712M != f7;
            boolean z9 = this.f12741h0 != f8;
            boolean z10 = this.f12702C != typeface;
            StaticLayout staticLayout = this.f12743i0;
            boolean z11 = z8 || z9 || (staticLayout != null && (width > ((float) staticLayout.getWidth()) ? 1 : (width == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z10 || this.f12718S;
            this.f12712M = f7;
            this.f12741h0 = f8;
            this.f12702C = typeface;
            this.f12718S = false;
            textPaint.setLinearText(this.f12711L != 1.0f);
            z7 = z11;
        } else {
            z7 = false;
        }
        if (this.f12707H == null || z7) {
            textPaint.setTextSize(this.f12712M);
            textPaint.setTypeface(this.f12702C);
            textPaint.setLetterSpacing(this.f12741h0);
            boolean b7 = b(this.f12706G);
            this.f12708I = b7;
            int i2 = this.f12753n0;
            if (i2 <= 1 || (b7 && !this.f12730c)) {
                i2 = 1;
            }
            if (i2 == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                int absoluteGravity = AbstractC0185s.getAbsoluteGravity(this.f12744j, b7 ? 1 : 0) & 7;
                alignment = absoluteGravity != 1 ? absoluteGravity != 5 ? this.f12708I ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.f12708I ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
            }
            StaticLayout staticLayout2 = (StaticLayout) h.checkNotNull(b.obtain(this.f12706G, textPaint, (int) width).setEllipsize(this.f12705F).setIsRtl(b7).setAlignment(alignment).setIncludePad(false).setMaxLines(i2).setLineSpacing(this.f12755o0, this.f12757p0).setHyphenationFrequency(this.f12759q0).setStaticLayoutBuilderConfigurer(null).build());
            this.f12743i0 = staticLayout2;
            this.f12707H = staticLayout2.getText();
        }
    }

    public final int d(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f12717R;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public void draw(Canvas canvas) {
        int save = canvas.save();
        if (this.f12707H != null) {
            RectF rectF = this.f12742i;
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            TextPaint textPaint = this.f12719T;
            textPaint.setTextSize(this.f12712M);
            float f3 = this.f12763u;
            float f7 = this.f12764v;
            float f8 = this.f12711L;
            if (f8 != 1.0f && !this.f12730c) {
                canvas.scale(f8, f8, f3, f7);
            }
            if (this.f12753n0 <= 1 || ((this.f12708I && !this.f12730c) || (this.f12730c && this.f12728b <= this.f12734e))) {
                canvas.translate(f3, f7);
                this.f12743i0.draw(canvas);
            } else {
                float lineStart = this.f12763u - this.f12743i0.getLineStart(0);
                int alpha = textPaint.getAlpha();
                canvas.translate(lineStart, f7);
                if (!this.f12730c) {
                    textPaint.setAlpha((int) (this.f12749l0 * alpha));
                    if (Build.VERSION.SDK_INT >= 31) {
                        textPaint.setShadowLayer(this.f12713N, this.f12714O, this.f12715P, AbstractC1595a.compositeARGBWithAlpha(this.f12716Q, textPaint.getAlpha()));
                    }
                    this.f12743i0.draw(canvas);
                }
                if (!this.f12730c) {
                    textPaint.setAlpha((int) (this.f12747k0 * alpha));
                }
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 31) {
                    textPaint.setShadowLayer(this.f12713N, this.f12714O, this.f12715P, AbstractC1595a.compositeARGBWithAlpha(this.f12716Q, textPaint.getAlpha()));
                }
                int lineBaseline = this.f12743i0.getLineBaseline(0);
                CharSequence charSequence = this.f12751m0;
                float f9 = lineBaseline;
                canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f9, textPaint);
                if (i2 >= 31) {
                    textPaint.setShadowLayer(this.f12713N, this.f12714O, this.f12715P, this.f12716Q);
                }
                if (!this.f12730c) {
                    String trim = this.f12751m0.toString().trim();
                    if (trim.endsWith("…")) {
                        trim = i.d(1, 0, trim);
                    }
                    String str = trim;
                    textPaint.setAlpha(alpha);
                    canvas.drawText(str, 0, Math.min(this.f12743i0.getLineEnd(0), str.length()), 0.0f, f9, (Paint) textPaint);
                }
                canvas = canvas;
            }
            canvas.restoreToCount(save);
        }
    }

    public final boolean f(Typeface typeface) {
        C3.b bVar = this.f12704E;
        if (bVar != null) {
            bVar.cancel();
        }
        if (this.f12767y == typeface) {
            return false;
        }
        this.f12767y = typeface;
        Typeface maybeCopyWithFontWeightAdjustment = k.maybeCopyWithFontWeightAdjustment(this.f12726a.getContext().getResources().getConfiguration(), typeface);
        this.f12766x = maybeCopyWithFontWeightAdjustment;
        if (maybeCopyWithFontWeightAdjustment == null) {
            maybeCopyWithFontWeightAdjustment = this.f12767y;
        }
        this.f12765w = maybeCopyWithFontWeightAdjustment;
        return true;
    }

    public final boolean g(Typeface typeface) {
        C3.b bVar = this.f12703D;
        if (bVar != null) {
            bVar.cancel();
        }
        if (this.f12701B == typeface) {
            return false;
        }
        this.f12701B = typeface;
        Typeface maybeCopyWithFontWeightAdjustment = k.maybeCopyWithFontWeightAdjustment(this.f12726a.getContext().getResources().getConfiguration(), typeface);
        this.f12700A = maybeCopyWithFontWeightAdjustment;
        if (maybeCopyWithFontWeightAdjustment == null) {
            maybeCopyWithFontWeightAdjustment = this.f12701B;
        }
        this.f12768z = maybeCopyWithFontWeightAdjustment;
        return true;
    }

    public void getCollapsedTextActualBounds(RectF rectF, int i2, int i7) {
        float f3;
        float f7;
        float f8;
        float f9;
        int i8;
        float f10;
        int i9;
        boolean b7 = b(this.f12706G);
        this.f12708I = b7;
        Rect rect = this.f12740h;
        if (i7 != 17 && (i7 & 7) != 1) {
            if ((i7 & 8388613) == 8388613 || (i7 & 5) == 5) {
                if (b7) {
                    i9 = rect.left;
                    f8 = i9;
                } else {
                    f3 = rect.right;
                    f7 = this.f12745j0;
                }
            } else if (b7) {
                f3 = rect.right;
                f7 = this.f12745j0;
            } else {
                i9 = rect.left;
                f8 = i9;
            }
            float max = Math.max(f8, rect.left);
            rectF.left = max;
            rectF.top = rect.top;
            if (i7 != 17 || (i7 & 7) == 1) {
                f9 = (i2 / 2.0f) + (this.f12745j0 / 2.0f);
            } else if ((i7 & 8388613) == 8388613 || (i7 & 5) == 5) {
                if (this.f12708I) {
                    f10 = this.f12745j0;
                    f9 = f10 + max;
                } else {
                    i8 = rect.right;
                    f9 = i8;
                }
            } else if (this.f12708I) {
                i8 = rect.right;
                f9 = i8;
            } else {
                f10 = this.f12745j0;
                f9 = f10 + max;
            }
            rectF.right = Math.min(f9, rect.right);
            rectF.bottom = getCollapsedTextHeight() + rect.top;
        }
        f3 = i2 / 2.0f;
        f7 = this.f12745j0 / 2.0f;
        f8 = f3 - f7;
        float max2 = Math.max(f8, rect.left);
        rectF.left = max2;
        rectF.top = rect.top;
        if (i7 != 17) {
        }
        f9 = (i2 / 2.0f) + (this.f12745j0 / 2.0f);
        rectF.right = Math.min(f9, rect.right);
        rectF.bottom = getCollapsedTextHeight() + rect.top;
    }

    public ColorStateList getCollapsedTextColor() {
        return this.f12754o;
    }

    public int getCollapsedTextGravity() {
        return this.f12746k;
    }

    public float getCollapsedTextHeight() {
        TextPaint textPaint = this.f12720U;
        textPaint.setTextSize(this.f12750m);
        textPaint.setTypeface(this.f12765w);
        textPaint.setLetterSpacing(this.f12737f0);
        return -textPaint.ascent();
    }

    public float getCollapsedTextSize() {
        return this.f12750m;
    }

    public Typeface getCollapsedTypeface() {
        Typeface typeface = this.f12765w;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public int getCurrentCollapsedTextColor() {
        return d(this.f12754o);
    }

    public int getExpandedLineCount() {
        return this.f12756p;
    }

    public float getExpandedTextFullHeight() {
        TextPaint textPaint = this.f12720U;
        textPaint.setTextSize(this.f12748l);
        textPaint.setTypeface(this.f12768z);
        textPaint.setLetterSpacing(this.f12739g0);
        return textPaint.descent() + (-textPaint.ascent());
    }

    public int getExpandedTextGravity() {
        return this.f12744j;
    }

    public float getExpandedTextHeight() {
        TextPaint textPaint = this.f12720U;
        textPaint.setTextSize(this.f12748l);
        textPaint.setTypeface(this.f12768z);
        textPaint.setLetterSpacing(this.f12739g0);
        return -textPaint.ascent();
    }

    public float getExpandedTextSize() {
        return this.f12748l;
    }

    public Typeface getExpandedTypeface() {
        Typeface typeface = this.f12768z;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public float getExpansionFraction() {
        return this.f12728b;
    }

    public float getFadeModeThresholdFraction() {
        return this.f12734e;
    }

    public int getHyphenationFrequency() {
        return this.f12759q0;
    }

    public int getLineCount() {
        StaticLayout staticLayout = this.f12743i0;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public float getLineSpacingAdd() {
        return this.f12743i0.getSpacingAdd();
    }

    public float getLineSpacingMultiplier() {
        return this.f12743i0.getSpacingMultiplier();
    }

    public int getMaxLines() {
        return this.f12753n0;
    }

    public TimeInterpolator getPositionInterpolator() {
        return this.f12721V;
    }

    public CharSequence getText() {
        return this.f12706G;
    }

    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.f12705F;
    }

    public final void h(float f3) {
        c(f3, false);
        AbstractC0181p0.postInvalidateOnAnimation(this.f12726a);
    }

    public final boolean isStateful() {
        ColorStateList colorStateList = this.f12754o;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.f12752n;
        return colorStateList2 != null && colorStateList2.isStateful();
    }

    public void maybeUpdateFontWeightAdjustment(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f12767y;
            if (typeface != null) {
                this.f12766x = k.maybeCopyWithFontWeightAdjustment(configuration, typeface);
            }
            Typeface typeface2 = this.f12701B;
            if (typeface2 != null) {
                this.f12700A = k.maybeCopyWithFontWeightAdjustment(configuration, typeface2);
            }
            Typeface typeface3 = this.f12766x;
            if (typeface3 == null) {
                typeface3 = this.f12767y;
            }
            this.f12765w = typeface3;
            Typeface typeface4 = this.f12700A;
            if (typeface4 == null) {
                typeface4 = this.f12701B;
            }
            this.f12768z = typeface4;
            recalculate(true);
        }
    }

    public void recalculate() {
        recalculate(false);
    }

    public void setCollapsedAndExpandedTextColor(ColorStateList colorStateList) {
        if (this.f12754o == colorStateList && this.f12752n == colorStateList) {
            return;
        }
        this.f12754o = colorStateList;
        this.f12752n = colorStateList;
        recalculate();
    }

    public void setCollapsedBounds(Rect rect) {
        setCollapsedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setCollapsedTextAppearance(int i2) {
        View view = this.f12726a;
        g gVar = new g(view.getContext(), i2);
        if (gVar.getTextColor() != null) {
            this.f12754o = gVar.getTextColor();
        }
        if (gVar.getTextSize() != 0.0f) {
            this.f12750m = gVar.getTextSize();
        }
        ColorStateList colorStateList = gVar.f514a;
        if (colorStateList != null) {
            this.f12727a0 = colorStateList;
        }
        this.f12724Y = gVar.f518e;
        this.f12725Z = gVar.f519f;
        this.f12723X = gVar.f520g;
        this.f12737f0 = gVar.f522i;
        C3.b bVar = this.f12704E;
        if (bVar != null) {
            bVar.cancel();
        }
        this.f12704E = new C3.b(new C1830d(this), gVar.getFallbackFont());
        gVar.getFontAsync(view.getContext(), this.f12704E);
        recalculate();
    }

    public void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.f12754o != colorStateList) {
            this.f12754o = colorStateList;
            recalculate();
        }
    }

    public void setCollapsedTextGravity(int i2) {
        if (this.f12746k != i2) {
            this.f12746k = i2;
            recalculate();
        }
    }

    public void setCollapsedTextSize(float f3) {
        if (this.f12750m != f3) {
            this.f12750m = f3;
            recalculate();
        }
    }

    public void setCollapsedTypeface(Typeface typeface) {
        if (f(typeface)) {
            recalculate();
        }
    }

    public void setCurrentOffsetY(int i2) {
        this.f12736f = i2;
    }

    public void setExpandedBounds(Rect rect) {
        setExpandedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setExpandedLetterSpacing(float f3) {
        if (this.f12739g0 != f3) {
            this.f12739g0 = f3;
            recalculate();
        }
    }

    public void setExpandedTextAppearance(int i2) {
        View view = this.f12726a;
        g gVar = new g(view.getContext(), i2);
        if (gVar.getTextColor() != null) {
            this.f12752n = gVar.getTextColor();
        }
        if (gVar.getTextSize() != 0.0f) {
            this.f12748l = gVar.getTextSize();
        }
        ColorStateList colorStateList = gVar.f514a;
        if (colorStateList != null) {
            this.f12735e0 = colorStateList;
        }
        this.f12731c0 = gVar.f518e;
        this.f12733d0 = gVar.f519f;
        this.f12729b0 = gVar.f520g;
        this.f12739g0 = gVar.f522i;
        C3.b bVar = this.f12703D;
        if (bVar != null) {
            bVar.cancel();
        }
        this.f12703D = new C3.b(new C1831e(this), gVar.getFallbackFont());
        gVar.getFontAsync(view.getContext(), this.f12703D);
        recalculate();
    }

    public void setExpandedTextColor(ColorStateList colorStateList) {
        if (this.f12752n != colorStateList) {
            this.f12752n = colorStateList;
            recalculate();
        }
    }

    public void setExpandedTextGravity(int i2) {
        if (this.f12744j != i2) {
            this.f12744j = i2;
            recalculate();
        }
    }

    public void setExpandedTextSize(float f3) {
        if (this.f12748l != f3) {
            this.f12748l = f3;
            recalculate();
        }
    }

    public void setExpandedTypeface(Typeface typeface) {
        if (g(typeface)) {
            recalculate();
        }
    }

    public void setExpansionFraction(float f3) {
        float f7;
        float clamp = G.a.clamp(f3, 0.0f, 1.0f);
        if (clamp != this.f12728b) {
            this.f12728b = clamp;
            boolean z6 = this.f12730c;
            RectF rectF = this.f12742i;
            Rect rect = this.f12740h;
            Rect rect2 = this.f12738g;
            if (z6) {
                if (clamp < this.f12734e) {
                    rect = rect2;
                }
                rectF.set(rect);
            } else {
                rectF.left = e(rect2.left, rect.left, clamp, this.f12721V);
                rectF.top = e(this.f12758q, this.f12760r, clamp, this.f12721V);
                rectF.right = e(rect2.right, rect.right, clamp, this.f12721V);
                rectF.bottom = e(rect2.bottom, rect.bottom, clamp, this.f12721V);
            }
            if (!this.f12730c) {
                this.f12763u = e(this.f12761s, this.f12762t, clamp, this.f12721V);
                this.f12764v = e(this.f12758q, this.f12760r, clamp, this.f12721V);
                h(clamp);
                f7 = clamp;
            } else if (clamp < this.f12734e) {
                this.f12763u = this.f12761s;
                this.f12764v = this.f12758q;
                h(0.0f);
                f7 = 0.0f;
            } else {
                this.f12763u = this.f12762t;
                this.f12764v = this.f12760r - Math.max(0, this.f12736f);
                h(1.0f);
                f7 = 1.0f;
            }
            C0959b c0959b = AbstractC0951a.f16461b;
            this.f12747k0 = 1.0f - e(0.0f, 1.0f, 1.0f - clamp, c0959b);
            View view = this.f12726a;
            AbstractC0181p0.postInvalidateOnAnimation(view);
            this.f12749l0 = e(1.0f, 0.0f, clamp, c0959b);
            AbstractC0181p0.postInvalidateOnAnimation(view);
            ColorStateList colorStateList = this.f12754o;
            ColorStateList colorStateList2 = this.f12752n;
            TextPaint textPaint = this.f12719T;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(d(colorStateList2), getCurrentCollapsedTextColor(), f7));
            } else {
                textPaint.setColor(getCurrentCollapsedTextColor());
            }
            int i2 = Build.VERSION.SDK_INT;
            float f8 = this.f12737f0;
            float f9 = this.f12739g0;
            if (f8 != f9) {
                textPaint.setLetterSpacing(e(f9, f8, clamp, c0959b));
            } else {
                textPaint.setLetterSpacing(f8);
            }
            this.f12713N = AbstractC0951a.lerp(this.f12729b0, this.f12723X, clamp);
            this.f12714O = AbstractC0951a.lerp(this.f12731c0, this.f12724Y, clamp);
            this.f12715P = AbstractC0951a.lerp(this.f12733d0, this.f12725Z, clamp);
            int a7 = a(d(this.f12735e0), d(this.f12727a0), clamp);
            this.f12716Q = a7;
            textPaint.setShadowLayer(this.f12713N, this.f12714O, this.f12715P, a7);
            if (this.f12730c) {
                int alpha = textPaint.getAlpha();
                float f10 = this.f12734e;
                textPaint.setAlpha((int) ((clamp <= f10 ? AbstractC0951a.lerp(1.0f, 0.0f, this.f12732d, f10, clamp) : AbstractC0951a.lerp(0.0f, 1.0f, f10, 1.0f, clamp)) * alpha));
                if (i2 >= 31) {
                    textPaint.setShadowLayer(this.f12713N, this.f12714O, this.f12715P, AbstractC1595a.compositeARGBWithAlpha(this.f12716Q, textPaint.getAlpha()));
                }
            }
            AbstractC0181p0.postInvalidateOnAnimation(view);
        }
    }

    public void setFadeModeEnabled(boolean z6) {
        this.f12730c = z6;
    }

    public void setFadeModeStartFraction(float f3) {
        this.f12732d = f3;
        this.f12734e = c.a(1.0f, f3, 0.5f, f3);
    }

    public void setHyphenationFrequency(int i2) {
        this.f12759q0 = i2;
    }

    public void setLineSpacingAdd(float f3) {
        this.f12755o0 = f3;
    }

    public void setLineSpacingMultiplier(float f3) {
        this.f12757p0 = f3;
    }

    public void setMaxLines(int i2) {
        if (i2 != this.f12753n0) {
            this.f12753n0 = i2;
            Bitmap bitmap = this.f12710K;
            if (bitmap != null) {
                bitmap.recycle();
                this.f12710K = null;
            }
            recalculate();
        }
    }

    public void setPositionInterpolator(TimeInterpolator timeInterpolator) {
        this.f12721V = timeInterpolator;
        recalculate();
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z6) {
        this.f12709J = z6;
    }

    public final boolean setState(int[] iArr) {
        this.f12717R = iArr;
        if (!isStateful()) {
            return false;
        }
        recalculate();
        return true;
    }

    public void setStaticLayoutBuilderConfigurer(G g7) {
        if (g7 != null) {
            recalculate(true);
        }
    }

    public void setText(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f12706G, charSequence)) {
            this.f12706G = charSequence;
            this.f12707H = null;
            Bitmap bitmap = this.f12710K;
            if (bitmap != null) {
                bitmap.recycle();
                this.f12710K = null;
            }
            recalculate();
        }
    }

    public void setTextSizeInterpolator(TimeInterpolator timeInterpolator) {
        this.f12722W = timeInterpolator;
        recalculate();
    }

    public void setTitleTextEllipsize(TextUtils.TruncateAt truncateAt) {
        this.f12705F = truncateAt;
        recalculate();
    }

    public void setTypefaces(Typeface typeface) {
        boolean f3 = f(typeface);
        boolean g7 = g(typeface);
        if (f3 || g7) {
            recalculate();
        }
    }

    public void recalculate(boolean z6) {
        float measureText;
        float f3;
        StaticLayout staticLayout;
        View view = this.f12726a;
        if ((view.getHeight() <= 0 || view.getWidth() <= 0) && !z6) {
            return;
        }
        c(1.0f, z6);
        CharSequence charSequence = this.f12707H;
        TextPaint textPaint = this.f12719T;
        if (charSequence != null && (staticLayout = this.f12743i0) != null) {
            this.f12751m0 = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), this.f12705F);
        }
        CharSequence charSequence2 = this.f12751m0;
        if (charSequence2 != null) {
            this.f12745j0 = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.f12745j0 = 0.0f;
        }
        int absoluteGravity = AbstractC0185s.getAbsoluteGravity(this.f12746k, this.f12708I ? 1 : 0);
        int i2 = absoluteGravity & 112;
        Rect rect = this.f12740h;
        if (i2 == 48) {
            this.f12760r = rect.top;
        } else if (i2 != 80) {
            this.f12760r = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f12760r = textPaint.ascent() + rect.bottom;
        }
        int i7 = absoluteGravity & 8388615;
        if (i7 == 1) {
            this.f12762t = rect.centerX() - (this.f12745j0 / 2.0f);
        } else if (i7 != 5) {
            this.f12762t = rect.left;
        } else {
            this.f12762t = rect.right - this.f12745j0;
        }
        c(0.0f, z6);
        float height = this.f12743i0 != null ? r1.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.f12743i0;
        if (staticLayout2 == null || this.f12753n0 <= 1) {
            CharSequence charSequence3 = this.f12707H;
            measureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            measureText = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.f12743i0;
        this.f12756p = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = AbstractC0185s.getAbsoluteGravity(this.f12744j, this.f12708I ? 1 : 0);
        int i8 = absoluteGravity2 & 112;
        Rect rect2 = this.f12738g;
        if (i8 == 48) {
            this.f12758q = rect2.top;
        } else if (i8 != 80) {
            this.f12758q = rect2.centerY() - (height / 2.0f);
        } else {
            this.f12758q = textPaint.descent() + (rect2.bottom - height);
        }
        int i9 = absoluteGravity2 & 8388615;
        if (i9 == 1) {
            this.f12761s = rect2.centerX() - (measureText / 2.0f);
        } else if (i9 != 5) {
            this.f12761s = rect2.left;
        } else {
            this.f12761s = rect2.right - measureText;
        }
        Bitmap bitmap = this.f12710K;
        if (bitmap != null) {
            bitmap.recycle();
            this.f12710K = null;
        }
        h(this.f12728b);
        float f7 = this.f12728b;
        boolean z7 = this.f12730c;
        RectF rectF = this.f12742i;
        if (z7) {
            if (f7 < this.f12734e) {
                rect = rect2;
            }
            rectF.set(rect);
        } else {
            rectF.left = e(rect2.left, rect.left, f7, this.f12721V);
            rectF.top = e(this.f12758q, this.f12760r, f7, this.f12721V);
            rectF.right = e(rect2.right, rect.right, f7, this.f12721V);
            rectF.bottom = e(rect2.bottom, rect.bottom, f7, this.f12721V);
        }
        if (!this.f12730c) {
            this.f12763u = e(this.f12761s, this.f12762t, f7, this.f12721V);
            this.f12764v = e(this.f12758q, this.f12760r, f7, this.f12721V);
            h(f7);
            f3 = f7;
        } else if (f7 < this.f12734e) {
            this.f12763u = this.f12761s;
            this.f12764v = this.f12758q;
            h(0.0f);
            f3 = 0.0f;
        } else {
            this.f12763u = this.f12762t;
            this.f12764v = this.f12760r - Math.max(0, this.f12736f);
            h(1.0f);
            f3 = 1.0f;
        }
        C0959b c0959b = AbstractC0951a.f16461b;
        this.f12747k0 = 1.0f - e(0.0f, 1.0f, 1.0f - f7, c0959b);
        AbstractC0181p0.postInvalidateOnAnimation(view);
        this.f12749l0 = e(1.0f, 0.0f, f7, c0959b);
        AbstractC0181p0.postInvalidateOnAnimation(view);
        ColorStateList colorStateList = this.f12754o;
        ColorStateList colorStateList2 = this.f12752n;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(d(colorStateList2), getCurrentCollapsedTextColor(), f3));
        } else {
            textPaint.setColor(getCurrentCollapsedTextColor());
        }
        int i10 = Build.VERSION.SDK_INT;
        float f8 = this.f12737f0;
        float f9 = this.f12739g0;
        if (f8 != f9) {
            textPaint.setLetterSpacing(e(f9, f8, f7, c0959b));
        } else {
            textPaint.setLetterSpacing(f8);
        }
        this.f12713N = AbstractC0951a.lerp(this.f12729b0, this.f12723X, f7);
        this.f12714O = AbstractC0951a.lerp(this.f12731c0, this.f12724Y, f7);
        this.f12715P = AbstractC0951a.lerp(this.f12733d0, this.f12725Z, f7);
        int a7 = a(d(this.f12735e0), d(this.f12727a0), f7);
        this.f12716Q = a7;
        textPaint.setShadowLayer(this.f12713N, this.f12714O, this.f12715P, a7);
        if (this.f12730c) {
            int alpha = textPaint.getAlpha();
            float f10 = this.f12734e;
            textPaint.setAlpha((int) ((f7 <= f10 ? AbstractC0951a.lerp(1.0f, 0.0f, this.f12732d, f10, f7) : AbstractC0951a.lerp(0.0f, 1.0f, f10, 1.0f, f7)) * alpha));
            if (i10 >= 31) {
                textPaint.setShadowLayer(this.f12713N, this.f12714O, this.f12715P, AbstractC1595a.compositeARGBWithAlpha(this.f12716Q, textPaint.getAlpha()));
            }
        }
        AbstractC0181p0.postInvalidateOnAnimation(view);
    }

    public void setCollapsedBounds(int i2, int i7, int i8, int i9) {
        Rect rect = this.f12740h;
        if (rect.left == i2 && rect.top == i7 && rect.right == i8 && rect.bottom == i9) {
            return;
        }
        rect.set(i2, i7, i8, i9);
        this.f12718S = true;
    }

    public void setExpandedBounds(int i2, int i7, int i8, int i9) {
        Rect rect = this.f12738g;
        if (rect.left == i2 && rect.top == i7 && rect.right == i8 && rect.bottom == i9) {
            return;
        }
        rect.set(i2, i7, i8, i9);
        this.f12718S = true;
    }
}
