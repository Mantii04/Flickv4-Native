package q3;

import C3.g;
import G3.j;
import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.media3.common.util.Log;
import f.AbstractC0876a;
import g3.C0953c;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import n3.AbstractC1417b;
import x3.I;
import x3.J;
import x3.L;
import x3.T;

/* renamed from: q3.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1522f extends j implements Drawable.Callback, I {

    /* renamed from: Q0, reason: collision with root package name */
    public static final int[] f19583Q0 = {R.attr.state_enabled};

    /* renamed from: R0, reason: collision with root package name */
    public static final ShapeDrawable f19584R0 = new ShapeDrawable(new OvalShape());

    /* renamed from: A0, reason: collision with root package name */
    public int f19585A0;

    /* renamed from: B0, reason: collision with root package name */
    public boolean f19586B0;

    /* renamed from: C0, reason: collision with root package name */
    public int f19587C0;

    /* renamed from: D0, reason: collision with root package name */
    public int f19588D0;

    /* renamed from: E0, reason: collision with root package name */
    public ColorFilter f19589E0;

    /* renamed from: F0, reason: collision with root package name */
    public PorterDuffColorFilter f19590F0;

    /* renamed from: G0, reason: collision with root package name */
    public ColorStateList f19591G0;

    /* renamed from: H, reason: collision with root package name */
    public ColorStateList f19592H;

    /* renamed from: H0, reason: collision with root package name */
    public PorterDuff.Mode f19593H0;

    /* renamed from: I, reason: collision with root package name */
    public ColorStateList f19594I;

    /* renamed from: I0, reason: collision with root package name */
    public int[] f19595I0;

    /* renamed from: J, reason: collision with root package name */
    public float f19596J;

    /* renamed from: J0, reason: collision with root package name */
    public boolean f19597J0;

    /* renamed from: K, reason: collision with root package name */
    public float f19598K;

    /* renamed from: K0, reason: collision with root package name */
    public ColorStateList f19599K0;

    /* renamed from: L, reason: collision with root package name */
    public ColorStateList f19600L;

    /* renamed from: L0, reason: collision with root package name */
    public WeakReference f19601L0;

    /* renamed from: M, reason: collision with root package name */
    public float f19602M;

    /* renamed from: M0, reason: collision with root package name */
    public TextUtils.TruncateAt f19603M0;

    /* renamed from: N, reason: collision with root package name */
    public ColorStateList f19604N;

    /* renamed from: N0, reason: collision with root package name */
    public boolean f19605N0;

    /* renamed from: O, reason: collision with root package name */
    public CharSequence f19606O;

    /* renamed from: O0, reason: collision with root package name */
    public int f19607O0;

    /* renamed from: P, reason: collision with root package name */
    public boolean f19608P;

    /* renamed from: P0, reason: collision with root package name */
    public boolean f19609P0;

    /* renamed from: Q, reason: collision with root package name */
    public Drawable f19610Q;

    /* renamed from: R, reason: collision with root package name */
    public ColorStateList f19611R;

    /* renamed from: S, reason: collision with root package name */
    public float f19612S;

    /* renamed from: T, reason: collision with root package name */
    public boolean f19613T;

    /* renamed from: U, reason: collision with root package name */
    public boolean f19614U;

    /* renamed from: V, reason: collision with root package name */
    public Drawable f19615V;

    /* renamed from: W, reason: collision with root package name */
    public RippleDrawable f19616W;

    /* renamed from: X, reason: collision with root package name */
    public ColorStateList f19617X;

    /* renamed from: Y, reason: collision with root package name */
    public float f19618Y;

    /* renamed from: Z, reason: collision with root package name */
    public CharSequence f19619Z;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f19620a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f19621b0;

    /* renamed from: c0, reason: collision with root package name */
    public Drawable f19622c0;

    /* renamed from: d0, reason: collision with root package name */
    public ColorStateList f19623d0;

    /* renamed from: e0, reason: collision with root package name */
    public C0953c f19624e0;

    /* renamed from: f0, reason: collision with root package name */
    public C0953c f19625f0;

    /* renamed from: g0, reason: collision with root package name */
    public float f19626g0;

    /* renamed from: h0, reason: collision with root package name */
    public float f19627h0;

    /* renamed from: i0, reason: collision with root package name */
    public float f19628i0;

    /* renamed from: j0, reason: collision with root package name */
    public float f19629j0;

    /* renamed from: k0, reason: collision with root package name */
    public float f19630k0;

    /* renamed from: l0, reason: collision with root package name */
    public float f19631l0;

    /* renamed from: m0, reason: collision with root package name */
    public float f19632m0;

    /* renamed from: n0, reason: collision with root package name */
    public float f19633n0;

    /* renamed from: o0, reason: collision with root package name */
    public final Context f19634o0;

    /* renamed from: p0, reason: collision with root package name */
    public final Paint f19635p0;

    /* renamed from: q0, reason: collision with root package name */
    public final Paint.FontMetrics f19636q0;

    /* renamed from: r0, reason: collision with root package name */
    public final RectF f19637r0;

    /* renamed from: s0, reason: collision with root package name */
    public final PointF f19638s0;

    /* renamed from: t0, reason: collision with root package name */
    public final Path f19639t0;

    /* renamed from: u0, reason: collision with root package name */
    public final J f19640u0;

    /* renamed from: v0, reason: collision with root package name */
    public int f19641v0;

    /* renamed from: w0, reason: collision with root package name */
    public int f19642w0;

    /* renamed from: x0, reason: collision with root package name */
    public int f19643x0;

    /* renamed from: y0, reason: collision with root package name */
    public int f19644y0;

    /* renamed from: z0, reason: collision with root package name */
    public int f19645z0;

    public C1522f(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
        this.f19598K = -1.0f;
        this.f19635p0 = new Paint(1);
        this.f19636q0 = new Paint.FontMetrics();
        this.f19637r0 = new RectF();
        this.f19638s0 = new PointF();
        this.f19639t0 = new Path();
        this.f19588D0 = 255;
        this.f19593H0 = PorterDuff.Mode.SRC_IN;
        this.f19601L0 = new WeakReference(null);
        initializeElevationOverlay(context);
        this.f19634o0 = context;
        J j7 = new J(this);
        this.f19640u0 = j7;
        this.f19606O = "";
        j7.getTextPaint().density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f19583Q0;
        setState(iArr);
        setCloseIconState(iArr);
        this.f19605N0 = true;
        int[] iArr2 = D3.a.f888a;
        f19584R0.setTint(-1);
    }

    public static C1522f createFromAttributes(Context context, AttributeSet attributeSet, int i2, int i7) {
        C1522f c1522f = new C1522f(context, attributeSet, i2, i7);
        TypedArray obtainStyledAttributes = L.obtainStyledAttributes(c1522f.f19634o0, attributeSet, com.google.android.material.R.styleable.Chip, i2, i7, new int[0]);
        c1522f.f19609P0 = obtainStyledAttributes.hasValue(com.google.android.material.R.styleable.Chip_shapeAppearance);
        int i8 = com.google.android.material.R.styleable.Chip_chipSurfaceColor;
        Context context2 = c1522f.f19634o0;
        ColorStateList colorStateList = C3.d.getColorStateList(context2, obtainStyledAttributes, i8);
        if (c1522f.f19592H != colorStateList) {
            c1522f.f19592H = colorStateList;
            c1522f.onStateChange(c1522f.getState());
        }
        c1522f.setChipBackgroundColor(C3.d.getColorStateList(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_chipBackgroundColor));
        c1522f.setChipMinHeight(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipMinHeight, 0.0f));
        if (obtainStyledAttributes.hasValue(com.google.android.material.R.styleable.Chip_chipCornerRadius)) {
            c1522f.setChipCornerRadius(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipCornerRadius, 0.0f));
        }
        c1522f.setChipStrokeColor(C3.d.getColorStateList(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_chipStrokeColor));
        c1522f.setChipStrokeWidth(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipStrokeWidth, 0.0f));
        c1522f.setRippleColor(C3.d.getColorStateList(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_rippleColor));
        c1522f.setText(obtainStyledAttributes.getText(com.google.android.material.R.styleable.Chip_android_text));
        g textAppearance = C3.d.getTextAppearance(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_android_textAppearance);
        textAppearance.setTextSize(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_android_textSize, textAppearance.getTextSize()));
        c1522f.setTextAppearance(textAppearance);
        int i9 = obtainStyledAttributes.getInt(com.google.android.material.R.styleable.Chip_android_ellipsize, 0);
        if (i9 == 1) {
            c1522f.setEllipsize(TextUtils.TruncateAt.START);
        } else if (i9 == 2) {
            c1522f.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else if (i9 == 3) {
            c1522f.setEllipsize(TextUtils.TruncateAt.END);
        }
        c1522f.setChipIconVisible(obtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            c1522f.setChipIconVisible(obtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_chipIconEnabled, false));
        }
        c1522f.setChipIcon(C3.d.getDrawable(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_chipIcon));
        if (obtainStyledAttributes.hasValue(com.google.android.material.R.styleable.Chip_chipIconTint)) {
            c1522f.setChipIconTint(C3.d.getColorStateList(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_chipIconTint));
        }
        c1522f.setChipIconSize(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipIconSize, -1.0f));
        c1522f.setCloseIconVisible(obtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            c1522f.setCloseIconVisible(obtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_closeIconEnabled, false));
        }
        c1522f.setCloseIcon(C3.d.getDrawable(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_closeIcon));
        c1522f.setCloseIconTint(C3.d.getColorStateList(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_closeIconTint));
        c1522f.setCloseIconSize(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_closeIconSize, 0.0f));
        c1522f.setCheckable(obtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_android_checkable, false));
        c1522f.setCheckedIconVisible(obtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            c1522f.setCheckedIconVisible(obtainStyledAttributes.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconEnabled, false));
        }
        c1522f.setCheckedIcon(C3.d.getDrawable(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_checkedIcon));
        if (obtainStyledAttributes.hasValue(com.google.android.material.R.styleable.Chip_checkedIconTint)) {
            c1522f.setCheckedIconTint(C3.d.getColorStateList(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_checkedIconTint));
        }
        c1522f.setShowMotionSpec(C0953c.createFromAttribute(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_showMotionSpec));
        c1522f.setHideMotionSpec(C0953c.createFromAttribute(context2, obtainStyledAttributes, com.google.android.material.R.styleable.Chip_hideMotionSpec));
        c1522f.setChipStartPadding(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipStartPadding, 0.0f));
        c1522f.setIconStartPadding(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_iconStartPadding, 0.0f));
        c1522f.setIconEndPadding(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_iconEndPadding, 0.0f));
        c1522f.setTextStartPadding(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_textStartPadding, 0.0f));
        c1522f.setTextEndPadding(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_textEndPadding, 0.0f));
        c1522f.setCloseIconStartPadding(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_closeIconStartPadding, 0.0f));
        c1522f.setCloseIconEndPadding(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_closeIconEndPadding, 0.0f));
        c1522f.setChipEndPadding(obtainStyledAttributes.getDimension(com.google.android.material.R.styleable.Chip_chipEndPadding, 0.0f));
        c1522f.setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.Chip_android_maxWidth, Log.LOG_LEVEL_OFF));
        obtainStyledAttributes.recycle();
        return c1522f;
    }

    public static boolean l(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean m(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public static void r(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Canvas canvas2;
        int i2;
        int i7;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i8 = this.f19588D0;
        if (i8 < 255) {
            canvas2 = canvas;
            i2 = AbstractC1417b.saveLayerAlpha(canvas2, bounds.left, bounds.top, bounds.right, bounds.bottom, i8);
        } else {
            canvas2 = canvas;
            i2 = 0;
        }
        boolean z6 = this.f19609P0;
        Paint paint = this.f19635p0;
        RectF rectF = this.f19637r0;
        if (!z6) {
            paint.setColor(this.f19641v0);
            paint.setStyle(Paint.Style.FILL);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, getChipCornerRadius(), getChipCornerRadius(), paint);
        }
        if (!this.f19609P0) {
            paint.setColor(this.f19642w0);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.f19589E0;
            if (colorFilter == null) {
                colorFilter = this.f19590F0;
            }
            paint.setColorFilter(colorFilter);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, getChipCornerRadius(), getChipCornerRadius(), paint);
        }
        if (this.f19609P0) {
            super.draw(canvas);
        }
        if (this.f19602M > 0.0f && !this.f19609P0) {
            paint.setColor(this.f19644y0);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.f19609P0) {
                ColorFilter colorFilter2 = this.f19589E0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f19590F0;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f3 = bounds.left;
            float f7 = this.f19602M / 2.0f;
            rectF.set(f3 + f7, bounds.top + f7, bounds.right - f7, bounds.bottom - f7);
            float f8 = this.f19598K - (this.f19602M / 2.0f);
            canvas2.drawRoundRect(rectF, f8, f8, paint);
        }
        paint.setColor(this.f19645z0);
        paint.setStyle(Paint.Style.FILL);
        rectF.set(bounds);
        if (this.f19609P0) {
            RectF rectF2 = new RectF(bounds);
            Path path = this.f19639t0;
            calculatePathForSize(rectF2, path);
            super.drawShape(canvas2, paint, path, getBoundsAsRectF());
        } else {
            canvas2.drawRoundRect(rectF, getChipCornerRadius(), getChipCornerRadius(), paint);
        }
        if (p()) {
            i(bounds, rectF);
            float f9 = rectF.left;
            float f10 = rectF.top;
            canvas2.translate(f9, f10);
            this.f19610Q.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.f19610Q.draw(canvas2);
            canvas2.translate(-f9, -f10);
        }
        if (o()) {
            i(bounds, rectF);
            float f11 = rectF.left;
            float f12 = rectF.top;
            canvas2.translate(f11, f12);
            this.f19622c0.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.f19622c0.draw(canvas2);
            canvas2.translate(-f11, -f12);
        }
        if (this.f19605N0 && this.f19606O != null) {
            PointF pointF = this.f19638s0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.f19606O;
            J j7 = this.f19640u0;
            if (charSequence != null) {
                float j8 = j() + this.f19626g0 + this.f19629j0;
                if (E.c.getLayoutDirection(this) == 0) {
                    pointF.x = bounds.left + j8;
                } else {
                    pointF.x = bounds.right - j8;
                    align = Paint.Align.RIGHT;
                }
                float centerY = bounds.centerY();
                TextPaint textPaint = j7.getTextPaint();
                Paint.FontMetrics fontMetrics = this.f19636q0;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = centerY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF.setEmpty();
            if (this.f19606O != null) {
                float j9 = j() + this.f19626g0 + this.f19629j0;
                float k7 = k() + this.f19633n0 + this.f19630k0;
                if (E.c.getLayoutDirection(this) == 0) {
                    rectF.left = bounds.left + j9;
                    rectF.right = bounds.right - k7;
                } else {
                    rectF.left = bounds.left + k7;
                    rectF.right = bounds.right - j9;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
            if (j7.getTextAppearance() != null) {
                j7.getTextPaint().drawableState = getState();
                j7.updateTextPaintDrawState(this.f19634o0);
            }
            j7.getTextPaint().setTextAlign(align);
            boolean z7 = Math.round(j7.getTextWidth(getText().toString())) > Math.round(rectF.width());
            if (z7) {
                int save = canvas2.save();
                canvas2.clipRect(rectF);
                i7 = save;
            } else {
                i7 = 0;
            }
            CharSequence charSequence2 = this.f19606O;
            if (z7 && this.f19603M0 != null) {
                charSequence2 = TextUtils.ellipsize(charSequence2, j7.getTextPaint(), rectF.width(), this.f19603M0);
            }
            canvas2.drawText(charSequence2, 0, charSequence2.length(), pointF.x, pointF.y, j7.getTextPaint());
            if (z7) {
                canvas2.restoreToCount(i7);
            }
        }
        if (q()) {
            rectF.setEmpty();
            if (q()) {
                float f13 = this.f19633n0 + this.f19632m0;
                if (E.c.getLayoutDirection(this) == 0) {
                    float f14 = bounds.right - f13;
                    rectF.right = f14;
                    rectF.left = f14 - this.f19618Y;
                } else {
                    float f15 = bounds.left + f13;
                    rectF.left = f15;
                    rectF.right = f15 + this.f19618Y;
                }
                float exactCenterY = bounds.exactCenterY();
                float f16 = this.f19618Y;
                float f17 = exactCenterY - (f16 / 2.0f);
                rectF.top = f17;
                rectF.bottom = f17 + f16;
            }
            float f18 = rectF.left;
            float f19 = rectF.top;
            canvas2.translate(f18, f19);
            this.f19615V.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            int[] iArr = D3.a.f888a;
            this.f19616W.setBounds(this.f19615V.getBounds());
            this.f19616W.jumpToCurrentState();
            this.f19616W.draw(canvas2);
            canvas2.translate(-f18, -f19);
        }
        if (this.f19588D0 < 255) {
            canvas2.restoreToCount(i2);
        }
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f19588D0;
    }

    public Drawable getCheckedIcon() {
        return this.f19622c0;
    }

    public ColorStateList getCheckedIconTint() {
        return this.f19623d0;
    }

    public ColorStateList getChipBackgroundColor() {
        return this.f19594I;
    }

    public float getChipCornerRadius() {
        return this.f19609P0 ? getTopLeftCornerResolvedSize() : this.f19598K;
    }

    public float getChipEndPadding() {
        return this.f19633n0;
    }

    public Drawable getChipIcon() {
        Drawable drawable = this.f19610Q;
        if (drawable != null) {
            return E.c.unwrap(drawable);
        }
        return null;
    }

    public float getChipIconSize() {
        return this.f19612S;
    }

    public ColorStateList getChipIconTint() {
        return this.f19611R;
    }

    public float getChipMinHeight() {
        return this.f19596J;
    }

    public float getChipStartPadding() {
        return this.f19626g0;
    }

    public ColorStateList getChipStrokeColor() {
        return this.f19600L;
    }

    public float getChipStrokeWidth() {
        return this.f19602M;
    }

    public Drawable getCloseIcon() {
        Drawable drawable = this.f19615V;
        if (drawable != null) {
            return E.c.unwrap(drawable);
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        return this.f19619Z;
    }

    public float getCloseIconEndPadding() {
        return this.f19632m0;
    }

    public float getCloseIconSize() {
        return this.f19618Y;
    }

    public float getCloseIconStartPadding() {
        return this.f19631l0;
    }

    public int[] getCloseIconState() {
        return this.f19595I0;
    }

    public ColorStateList getCloseIconTint() {
        return this.f19617X;
    }

    public void getCloseIconTouchBounds(RectF rectF) {
        Rect bounds = getBounds();
        rectF.setEmpty();
        if (q()) {
            float f3 = this.f19633n0 + this.f19632m0 + this.f19618Y + this.f19631l0 + this.f19630k0;
            if (E.c.getLayoutDirection(this) == 0) {
                float f7 = bounds.right;
                rectF.right = f7;
                rectF.left = f7 - f3;
            } else {
                float f8 = bounds.left;
                rectF.left = f8;
                rectF.right = f8 + f3;
            }
            rectF.top = bounds.top;
            rectF.bottom = bounds.bottom;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f19589E0;
    }

    public TextUtils.TruncateAt getEllipsize() {
        return this.f19603M0;
    }

    public C0953c getHideMotionSpec() {
        return this.f19625f0;
    }

    public float getIconEndPadding() {
        return this.f19628i0;
    }

    public float getIconStartPadding() {
        return this.f19627h0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f19596J;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(k() + this.f19640u0.getTextWidth(getText().toString()) + j() + this.f19626g0 + this.f19629j0 + this.f19630k0 + this.f19633n0), this.f19607O0);
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        Outline outline2;
        if (this.f19609P0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f19598K);
        } else {
            outline.setRoundRect(bounds, this.f19598K);
            outline2 = outline;
        }
        outline2.setAlpha(getAlpha() / 255.0f);
    }

    public ColorStateList getRippleColor() {
        return this.f19604N;
    }

    public C0953c getShowMotionSpec() {
        return this.f19624e0;
    }

    public CharSequence getText() {
        return this.f19606O;
    }

    public g getTextAppearance() {
        return this.f19640u0.getTextAppearance();
    }

    public float getTextEndPadding() {
        return this.f19630k0;
    }

    public float getTextStartPadding() {
        return this.f19629j0;
    }

    public boolean getUseCompatRipple() {
        return this.f19597J0;
    }

    public final void h(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        E.c.setLayoutDirection(drawable, E.c.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f19615V) {
            if (drawable.isStateful()) {
                drawable.setState(getCloseIconState());
            }
            E.c.setTintList(drawable, this.f19617X);
            return;
        }
        Drawable drawable2 = this.f19610Q;
        if (drawable == drawable2 && this.f19613T) {
            E.c.setTintList(drawable2, this.f19611R);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    public final void i(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (p() || o()) {
            float f3 = this.f19626g0 + this.f19627h0;
            Drawable drawable = this.f19586B0 ? this.f19622c0 : this.f19610Q;
            float f7 = this.f19612S;
            if (f7 <= 0.0f && drawable != null) {
                f7 = drawable.getIntrinsicWidth();
            }
            if (E.c.getLayoutDirection(this) == 0) {
                float f8 = rect.left + f3;
                rectF.left = f8;
                rectF.right = f8 + f7;
            } else {
                float f9 = rect.right - f3;
                rectF.right = f9;
                rectF.left = f9 - f7;
            }
            Drawable drawable2 = this.f19586B0 ? this.f19622c0 : this.f19610Q;
            float f10 = this.f19612S;
            if (f10 <= 0.0f && drawable2 != null) {
                f10 = (float) Math.ceil(T.dpToPx(this.f19634o0, 24));
                if (drawable2.getIntrinsicHeight() <= f10) {
                    f10 = drawable2.getIntrinsicHeight();
                }
            }
            float exactCenterY = rect.exactCenterY() - (f10 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + f10;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public boolean isCheckable() {
        return this.f19620a0;
    }

    public boolean isCloseIconStateful() {
        return m(this.f19615V);
    }

    public boolean isCloseIconVisible() {
        return this.f19614U;
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (l(this.f19592H) || l(this.f19594I) || l(this.f19600L)) {
            return true;
        }
        if (this.f19597J0 && l(this.f19599K0)) {
            return true;
        }
        g textAppearance = this.f19640u0.getTextAppearance();
        if (textAppearance == null || textAppearance.getTextColor() == null || !textAppearance.getTextColor().isStateful()) {
            return (this.f19621b0 && this.f19622c0 != null && this.f19620a0) || m(this.f19610Q) || m(this.f19622c0) || l(this.f19591G0);
        }
        return true;
    }

    public final float j() {
        if (!p() && !o()) {
            return 0.0f;
        }
        float f3 = this.f19627h0;
        Drawable drawable = this.f19586B0 ? this.f19622c0 : this.f19610Q;
        float f7 = this.f19612S;
        if (f7 <= 0.0f && drawable != null) {
            f7 = drawable.getIntrinsicWidth();
        }
        return f7 + f3 + this.f19628i0;
    }

    public final float k() {
        if (q()) {
            return this.f19631l0 + this.f19618Y + this.f19632m0;
        }
        return 0.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean n(int[] r9, int[] r10) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q3.C1522f.n(int[], int[]):boolean");
    }

    public final boolean o() {
        return this.f19621b0 && this.f19622c0 != null && this.f19586B0;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i2) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i2);
        if (p()) {
            onLayoutDirectionChanged |= E.c.setLayoutDirection(this.f19610Q, i2);
        }
        if (o()) {
            onLayoutDirectionChanged |= E.c.setLayoutDirection(this.f19622c0, i2);
        }
        if (q()) {
            onLayoutDirectionChanged |= E.c.setLayoutDirection(this.f19615V, i2);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        boolean onLevelChange = super.onLevelChange(i2);
        if (p()) {
            onLevelChange |= this.f19610Q.setLevel(i2);
        }
        if (o()) {
            onLevelChange |= this.f19622c0.setLevel(i2);
        }
        if (q()) {
            onLevelChange |= this.f19615V.setLevel(i2);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    public void onSizeChange() {
        InterfaceC1521e interfaceC1521e = (InterfaceC1521e) this.f19601L0.get();
        if (interfaceC1521e != null) {
            interfaceC1521e.onChipDrawableSizeChange();
        }
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.f19609P0) {
            super.onStateChange(iArr);
        }
        return n(iArr, getCloseIconState());
    }

    @Override // x3.I
    public void onTextSizeChange() {
        onSizeChange();
        invalidateSelf();
    }

    public final boolean p() {
        return this.f19608P && this.f19610Q != null;
    }

    public final boolean q() {
        return this.f19614U && this.f19615V != null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j7) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j7);
        }
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.f19588D0 != i2) {
            this.f19588D0 = i2;
            invalidateSelf();
        }
    }

    public void setCheckable(boolean z6) {
        if (this.f19620a0 != z6) {
            this.f19620a0 = z6;
            float j7 = j();
            if (!z6 && this.f19586B0) {
                this.f19586B0 = false;
            }
            float j8 = j();
            invalidateSelf();
            if (j7 != j8) {
                onSizeChange();
            }
        }
    }

    public void setCheckableResource(int i2) {
        setCheckable(this.f19634o0.getResources().getBoolean(i2));
    }

    public void setCheckedIcon(Drawable drawable) {
        if (this.f19622c0 != drawable) {
            float j7 = j();
            this.f19622c0 = drawable;
            float j8 = j();
            r(this.f19622c0);
            h(this.f19622c0);
            invalidateSelf();
            if (j7 != j8) {
                onSizeChange();
            }
        }
    }

    public void setCheckedIconResource(int i2) {
        setCheckedIcon(AbstractC0876a.getDrawable(this.f19634o0, i2));
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.f19623d0 != colorStateList) {
            this.f19623d0 = colorStateList;
            if (this.f19621b0 && (drawable = this.f19622c0) != null && this.f19620a0) {
                E.c.setTintList(drawable, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setCheckedIconTintResource(int i2) {
        setCheckedIconTint(AbstractC0876a.getColorStateList(this.f19634o0, i2));
    }

    public void setCheckedIconVisible(int i2) {
        setCheckedIconVisible(this.f19634o0.getResources().getBoolean(i2));
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        if (this.f19594I != colorStateList) {
            this.f19594I = colorStateList;
            onStateChange(getState());
        }
    }

    public void setChipBackgroundColorResource(int i2) {
        setChipBackgroundColor(AbstractC0876a.getColorStateList(this.f19634o0, i2));
    }

    @Deprecated
    public void setChipCornerRadius(float f3) {
        if (this.f19598K != f3) {
            this.f19598K = f3;
            setShapeAppearanceModel(getShapeAppearanceModel().withCornerSize(f3));
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i2) {
        setChipCornerRadius(this.f19634o0.getResources().getDimension(i2));
    }

    public void setChipEndPadding(float f3) {
        if (this.f19633n0 != f3) {
            this.f19633n0 = f3;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setChipEndPaddingResource(int i2) {
        setChipEndPadding(this.f19634o0.getResources().getDimension(i2));
    }

    public void setChipIcon(Drawable drawable) {
        Drawable chipIcon = getChipIcon();
        if (chipIcon != drawable) {
            float j7 = j();
            this.f19610Q = drawable != null ? E.c.wrap(drawable).mutate() : null;
            float j8 = j();
            r(chipIcon);
            if (p()) {
                h(this.f19610Q);
            }
            invalidateSelf();
            if (j7 != j8) {
                onSizeChange();
            }
        }
    }

    public void setChipIconResource(int i2) {
        setChipIcon(AbstractC0876a.getDrawable(this.f19634o0, i2));
    }

    public void setChipIconSize(float f3) {
        if (this.f19612S != f3) {
            float j7 = j();
            this.f19612S = f3;
            float j8 = j();
            invalidateSelf();
            if (j7 != j8) {
                onSizeChange();
            }
        }
    }

    public void setChipIconSizeResource(int i2) {
        setChipIconSize(this.f19634o0.getResources().getDimension(i2));
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        this.f19613T = true;
        if (this.f19611R != colorStateList) {
            this.f19611R = colorStateList;
            if (p()) {
                E.c.setTintList(this.f19610Q, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setChipIconTintResource(int i2) {
        setChipIconTint(AbstractC0876a.getColorStateList(this.f19634o0, i2));
    }

    public void setChipIconVisible(int i2) {
        setChipIconVisible(this.f19634o0.getResources().getBoolean(i2));
    }

    public void setChipMinHeight(float f3) {
        if (this.f19596J != f3) {
            this.f19596J = f3;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setChipMinHeightResource(int i2) {
        setChipMinHeight(this.f19634o0.getResources().getDimension(i2));
    }

    public void setChipStartPadding(float f3) {
        if (this.f19626g0 != f3) {
            this.f19626g0 = f3;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setChipStartPaddingResource(int i2) {
        setChipStartPadding(this.f19634o0.getResources().getDimension(i2));
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        if (this.f19600L != colorStateList) {
            this.f19600L = colorStateList;
            if (this.f19609P0) {
                setStrokeColor(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setChipStrokeColorResource(int i2) {
        setChipStrokeColor(AbstractC0876a.getColorStateList(this.f19634o0, i2));
    }

    public void setChipStrokeWidth(float f3) {
        if (this.f19602M != f3) {
            this.f19602M = f3;
            this.f19635p0.setStrokeWidth(f3);
            if (this.f19609P0) {
                super.setStrokeWidth(f3);
            }
            invalidateSelf();
        }
    }

    public void setChipStrokeWidthResource(int i2) {
        setChipStrokeWidth(this.f19634o0.getResources().getDimension(i2));
    }

    public void setCloseIcon(Drawable drawable) {
        Drawable closeIcon = getCloseIcon();
        if (closeIcon != drawable) {
            float k7 = k();
            this.f19615V = drawable != null ? E.c.wrap(drawable).mutate() : null;
            int[] iArr = D3.a.f888a;
            this.f19616W = new RippleDrawable(D3.a.sanitizeRippleDrawableColor(getRippleColor()), this.f19615V, f19584R0);
            float k8 = k();
            r(closeIcon);
            if (q()) {
                h(this.f19615V);
            }
            invalidateSelf();
            if (k7 != k8) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        if (this.f19619Z != charSequence) {
            this.f19619Z = K.c.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    public void setCloseIconEndPadding(float f3) {
        if (this.f19632m0 != f3) {
            this.f19632m0 = f3;
            invalidateSelf();
            if (q()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconEndPaddingResource(int i2) {
        setCloseIconEndPadding(this.f19634o0.getResources().getDimension(i2));
    }

    public void setCloseIconResource(int i2) {
        setCloseIcon(AbstractC0876a.getDrawable(this.f19634o0, i2));
    }

    public void setCloseIconSize(float f3) {
        if (this.f19618Y != f3) {
            this.f19618Y = f3;
            invalidateSelf();
            if (q()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconSizeResource(int i2) {
        setCloseIconSize(this.f19634o0.getResources().getDimension(i2));
    }

    public void setCloseIconStartPadding(float f3) {
        if (this.f19631l0 != f3) {
            this.f19631l0 = f3;
            invalidateSelf();
            if (q()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconStartPaddingResource(int i2) {
        setCloseIconStartPadding(this.f19634o0.getResources().getDimension(i2));
    }

    public boolean setCloseIconState(int[] iArr) {
        if (Arrays.equals(this.f19595I0, iArr)) {
            return false;
        }
        this.f19595I0 = iArr;
        if (q()) {
            return n(getState(), iArr);
        }
        return false;
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        if (this.f19617X != colorStateList) {
            this.f19617X = colorStateList;
            if (q()) {
                E.c.setTintList(this.f19615V, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setCloseIconTintResource(int i2) {
        setCloseIconTint(AbstractC0876a.getColorStateList(this.f19634o0, i2));
    }

    public void setCloseIconVisible(boolean z6) {
        if (this.f19614U != z6) {
            boolean q6 = q();
            this.f19614U = z6;
            boolean q7 = q();
            if (q6 != q7) {
                if (q7) {
                    h(this.f19615V);
                } else {
                    r(this.f19615V);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f19589E0 != colorFilter) {
            this.f19589E0 = colorFilter;
            invalidateSelf();
        }
    }

    public void setDelegate(InterfaceC1521e interfaceC1521e) {
        this.f19601L0 = new WeakReference(interfaceC1521e);
    }

    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        this.f19603M0 = truncateAt;
    }

    public void setHideMotionSpec(C0953c c0953c) {
        this.f19625f0 = c0953c;
    }

    public void setHideMotionSpecResource(int i2) {
        setHideMotionSpec(C0953c.createFromResource(this.f19634o0, i2));
    }

    public void setIconEndPadding(float f3) {
        if (this.f19628i0 != f3) {
            float j7 = j();
            this.f19628i0 = f3;
            float j8 = j();
            invalidateSelf();
            if (j7 != j8) {
                onSizeChange();
            }
        }
    }

    public void setIconEndPaddingResource(int i2) {
        setIconEndPadding(this.f19634o0.getResources().getDimension(i2));
    }

    public void setIconStartPadding(float f3) {
        if (this.f19627h0 != f3) {
            float j7 = j();
            this.f19627h0 = f3;
            float j8 = j();
            invalidateSelf();
            if (j7 != j8) {
                onSizeChange();
            }
        }
    }

    public void setIconStartPaddingResource(int i2) {
        setIconStartPadding(this.f19634o0.getResources().getDimension(i2));
    }

    public void setMaxWidth(int i2) {
        this.f19607O0 = i2;
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f19604N != colorStateList) {
            this.f19604N = colorStateList;
            this.f19599K0 = this.f19597J0 ? D3.a.sanitizeRippleDrawableColor(colorStateList) : null;
            onStateChange(getState());
        }
    }

    public void setRippleColorResource(int i2) {
        setRippleColor(AbstractC0876a.getColorStateList(this.f19634o0, i2));
    }

    public void setShowMotionSpec(C0953c c0953c) {
        this.f19624e0 = c0953c;
    }

    public void setShowMotionSpecResource(int i2) {
        setShowMotionSpec(C0953c.createFromResource(this.f19634o0, i2));
    }

    public void setText(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.f19606O, charSequence)) {
            return;
        }
        this.f19606O = charSequence;
        this.f19640u0.setTextWidthDirty(true);
        invalidateSelf();
        onSizeChange();
    }

    public void setTextAppearance(g gVar) {
        this.f19640u0.setTextAppearance(gVar, this.f19634o0);
    }

    public void setTextAppearanceResource(int i2) {
        setTextAppearance(new g(this.f19634o0, i2));
    }

    public void setTextEndPadding(float f3) {
        if (this.f19630k0 != f3) {
            this.f19630k0 = f3;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setTextEndPaddingResource(int i2) {
        setTextEndPadding(this.f19634o0.getResources().getDimension(i2));
    }

    public void setTextSize(float f3) {
        g textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.setTextSize(f3);
            this.f19640u0.getTextPaint().setTextSize(f3);
            onTextSizeChange();
        }
    }

    public void setTextStartPadding(float f3) {
        if (this.f19629j0 != f3) {
            this.f19629j0 = f3;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setTextStartPaddingResource(int i2) {
        setTextStartPadding(this.f19634o0.getResources().getDimension(i2));
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        if (this.f19591G0 != colorStateList) {
            this.f19591G0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f19593H0 != mode) {
            this.f19593H0 = mode;
            this.f19590F0 = t3.c.updateTintFilter(this, this.f19591G0, mode);
            invalidateSelf();
        }
    }

    public void setUseCompatRipple(boolean z6) {
        if (this.f19597J0 != z6) {
            this.f19597J0 = z6;
            this.f19599K0 = z6 ? D3.a.sanitizeRippleDrawableColor(this.f19604N) : null;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z7) {
        boolean visible = super.setVisible(z6, z7);
        if (p()) {
            visible |= this.f19610Q.setVisible(z6, z7);
        }
        if (o()) {
            visible |= this.f19622c0.setVisible(z6, z7);
        }
        if (q()) {
            visible |= this.f19615V.setVisible(z6, z7);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public void setCheckedIconVisible(boolean z6) {
        if (this.f19621b0 != z6) {
            boolean o6 = o();
            this.f19621b0 = z6;
            boolean o7 = o();
            if (o6 != o7) {
                if (o7) {
                    h(this.f19622c0);
                } else {
                    r(this.f19622c0);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    public void setChipIconVisible(boolean z6) {
        if (this.f19608P != z6) {
            boolean p6 = p();
            this.f19608P = z6;
            boolean p7 = p();
            if (p6 != p7) {
                if (p7) {
                    h(this.f19610Q);
                } else {
                    r(this.f19610Q);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }
}
