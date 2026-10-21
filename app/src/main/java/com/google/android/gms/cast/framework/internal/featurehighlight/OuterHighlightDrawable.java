package com.google.android.gms.cast.framework.internal.featurehighlight;

import D.a;
import android.R;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.annotation.Keep;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzep;
import com.google.android.gms.internal.cast.zzeq;

/* loaded from: classes.dex */
class OuterHighlightDrawable extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final int f9889a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9890b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9891c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f9892d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public final Rect f9893e = new Rect();

    /* renamed from: f, reason: collision with root package name */
    public final Paint f9894f;

    /* renamed from: g, reason: collision with root package name */
    public float f9895g;

    /* renamed from: h, reason: collision with root package name */
    public float f9896h;

    /* renamed from: i, reason: collision with root package name */
    public float f9897i;

    /* renamed from: j, reason: collision with root package name */
    public float f9898j;

    /* renamed from: k, reason: collision with root package name */
    public float f9899k;

    /* renamed from: l, reason: collision with root package name */
    public float f9900l;

    /* renamed from: m, reason: collision with root package name */
    public int f9901m;

    public OuterHighlightDrawable(Context context) {
        int color;
        Paint paint = new Paint();
        this.f9894f = paint;
        this.f9896h = 1.0f;
        this.f9899k = 0.0f;
        this.f9900l = 0.0f;
        this.f9901m = 244;
        if (PlatformVersion.isAtLeastLollipop()) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true);
            color = a.setAlphaComponent(typedValue.data, 244);
        } else {
            color = context.getResources().getColor(com.google.android.gms.cast.framework.R.color.cast_libraries_material_featurehighlight_outer_highlight_default_color);
        }
        paint.setColor(color);
        this.f9901m = paint.getAlpha();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Resources resources = context.getResources();
        this.f9889a = resources.getDimensionPixelSize(com.google.android.gms.cast.framework.R.dimen.cast_libraries_material_featurehighlight_center_threshold);
        this.f9890b = resources.getDimensionPixelSize(com.google.android.gms.cast.framework.R.dimen.cast_libraries_material_featurehighlight_center_horizontal_offset);
        this.f9891c = resources.getDimensionPixelSize(com.google.android.gms.cast.framework.R.dimen.cast_libraries_material_featurehighlight_outer_padding);
    }

    public static final float a(float f3, float f7, Rect rect) {
        float f8 = rect.left;
        float f9 = rect.top;
        float f10 = rect.right;
        float f11 = rect.bottom;
        float zza = zzeq.zza(f3, f7, f8, f9);
        float zza2 = zzeq.zza(f3, f7, f10, f9);
        float zza3 = zzeq.zza(f3, f7, f10, f11);
        float zza4 = zzeq.zza(f3, f7, f8, f11);
        if (zza <= zza2 || zza <= zza3 || zza <= zza4) {
            zza = (zza2 <= zza3 || zza2 <= zza4) ? zza3 <= zza4 ? zza4 : zza3 : zza2;
        }
        return (float) Math.ceil(zza);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawCircle(this.f9897i + this.f9899k, this.f9898j + this.f9900l, this.f9895g * this.f9896h, this.f9894f);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f9894f.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        this.f9894f.setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f9894f.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Keep
    public void setScale(float f3) {
        this.f9896h = f3;
        invalidateSelf();
    }

    @Keep
    public void setTranslationX(float f3) {
        this.f9899k = f3;
        invalidateSelf();
    }

    @Keep
    public void setTranslationY(float f3) {
        this.f9900l = f3;
        invalidateSelf();
    }

    public final float zza() {
        return this.f9897i;
    }

    public final float zzb() {
        return this.f9898j;
    }

    public final int zzc() {
        return this.f9894f.getColor();
    }

    public final Animator zzd(float f3, float f7) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scale", 0.0f, 1.0f), PropertyValuesHolder.ofFloat("translationX", f3, 0.0f), PropertyValuesHolder.ofFloat("translationY", f7, 0.0f), PropertyValuesHolder.ofInt("alpha", 0, this.f9901m));
        ofPropertyValuesHolder.setInterpolator(zzep.zzc());
        return ofPropertyValuesHolder.setDuration(350L);
    }

    public final void zze(int i2) {
        Paint paint = this.f9894f;
        paint.setColor(i2);
        this.f9901m = paint.getAlpha();
        invalidateSelf();
    }

    public final void zzf(Rect rect, Rect rect2) {
        this.f9892d.set(rect);
        this.f9893e.set(rect2);
        float exactCenterX = rect.exactCenterX();
        float exactCenterY = rect.exactCenterY();
        Rect bounds = getBounds();
        if (Math.min(exactCenterY - bounds.top, bounds.bottom - exactCenterY) < this.f9889a) {
            this.f9897i = exactCenterX;
            this.f9898j = exactCenterY;
        } else {
            float exactCenterX2 = bounds.exactCenterX();
            int i2 = this.f9890b;
            this.f9897i = exactCenterX <= exactCenterX2 ? rect2.exactCenterX() + i2 : rect2.exactCenterX() - i2;
            exactCenterY = rect2.exactCenterY();
            this.f9898j = exactCenterY;
        }
        this.f9895g = this.f9891c + Math.max(a(this.f9897i, exactCenterY, rect), a(this.f9897i, this.f9898j, rect2));
        invalidateSelf();
    }

    public final boolean zzg(float f3, float f7) {
        return zzeq.zza(f3, f7, this.f9897i, this.f9898j) < this.f9895g;
    }
}
