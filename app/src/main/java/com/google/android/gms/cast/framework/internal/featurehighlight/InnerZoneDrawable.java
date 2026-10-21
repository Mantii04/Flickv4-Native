package com.google.android.gms.cast.framework.internal.featurehighlight;

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
import androidx.annotation.Keep;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.internal.cast.zzep;

/* loaded from: classes.dex */
class InnerZoneDrawable extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f9878a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f9879b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f9880c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9881d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9882e;

    /* renamed from: f, reason: collision with root package name */
    public float f9883f;

    /* renamed from: g, reason: collision with root package name */
    public float f9884g;

    /* renamed from: h, reason: collision with root package name */
    public float f9885h;

    /* renamed from: i, reason: collision with root package name */
    public float f9886i;

    /* renamed from: j, reason: collision with root package name */
    public float f9887j;

    /* renamed from: k, reason: collision with root package name */
    public float f9888k;

    public InnerZoneDrawable(Context context) {
        Paint paint = new Paint();
        this.f9878a = paint;
        Paint paint2 = new Paint();
        this.f9879b = paint2;
        this.f9880c = new Rect();
        this.f9884g = 1.0f;
        Resources resources = context.getResources();
        this.f9881d = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.f9882e = resources.getInteger(R.integer.cast_libraries_material_featurehighlight_pulse_base_alpha);
        paint.setAntiAlias(true);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(-1);
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
        paint2.setColor(-1);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        float f3 = this.f9888k;
        if (f3 > 0.0f) {
            float f7 = this.f9883f * this.f9887j;
            Paint paint = this.f9879b;
            paint.setAlpha((int) (this.f9882e * f3));
            canvas.drawCircle(this.f9885h, this.f9886i, f7, paint);
        }
        canvas.drawCircle(this.f9885h, this.f9886i, this.f9883f * this.f9884g, this.f9878a);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        this.f9878a.setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f9878a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Keep
    public void setPulseAlpha(float f3) {
        this.f9888k = f3;
        invalidateSelf();
    }

    @Keep
    public void setPulseScale(float f3) {
        this.f9887j = f3;
        invalidateSelf();
    }

    @Keep
    public void setScale(float f3) {
        this.f9884g = f3;
        invalidateSelf();
    }

    public final Animator zza() {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scale", 0.0f), PropertyValuesHolder.ofInt("alpha", 0), PropertyValuesHolder.ofFloat("pulseScale", 0.0f), PropertyValuesHolder.ofFloat("pulseAlpha", 0.0f));
        ofPropertyValuesHolder.setInterpolator(zzep.zza());
        return ofPropertyValuesHolder.setDuration(200L);
    }

    public final void zzb(Rect rect) {
        Rect rect2 = this.f9880c;
        rect2.set(rect);
        this.f9885h = rect2.exactCenterX();
        this.f9886i = rect2.exactCenterY();
        this.f9883f = Math.max(this.f9881d, Math.max(rect2.width() / 2.0f, rect2.height() / 2.0f));
        invalidateSelf();
    }
}
