package v1;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
import h0.C0959b;

/* renamed from: v1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1746e extends Drawable implements Animatable {

    /* renamed from: p, reason: collision with root package name */
    public static final LinearInterpolator f20604p = new LinearInterpolator();

    /* renamed from: q, reason: collision with root package name */
    public static final C0959b f20605q = new C0959b();

    /* renamed from: r, reason: collision with root package name */
    public static final int[] f20606r = {-16777216};

    /* renamed from: b, reason: collision with root package name */
    public final C1745d f20607b;

    /* renamed from: e, reason: collision with root package name */
    public float f20608e;

    /* renamed from: f, reason: collision with root package name */
    public final Resources f20609f;

    /* renamed from: j, reason: collision with root package name */
    public final ValueAnimator f20610j;

    /* renamed from: m, reason: collision with root package name */
    public float f20611m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f20612n;

    public C1746e(Context context) {
        this.f20609f = ((Context) L.h.checkNotNull(context)).getResources();
        C1745d c1745d = new C1745d();
        this.f20607b = c1745d;
        c1745d.f20591i = f20606r;
        c1745d.a(0);
        setStrokeWidth(2.5f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C1743b(this, c1745d));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f20604p);
        ofFloat.addListener(new C1744c(this, c1745d));
        this.f20610j = ofFloat;
    }

    public static void c(float f3, C1745d c1745d) {
        if (f3 <= 0.75f) {
            c1745d.f20603u = c1745d.f20591i[c1745d.f20592j];
            return;
        }
        float f7 = (f3 - 0.75f) / 0.25f;
        int[] iArr = c1745d.f20591i;
        int i2 = c1745d.f20592j;
        int i7 = iArr[i2];
        int i8 = iArr[(i2 + 1) % iArr.length];
        c1745d.f20603u = ((((i7 >> 24) & 255) + ((int) ((((i8 >> 24) & 255) - r1) * f7))) << 24) | ((((i7 >> 16) & 255) + ((int) ((((i8 >> 16) & 255) - r3) * f7))) << 16) | ((((i7 >> 8) & 255) + ((int) ((((i8 >> 8) & 255) - r4) * f7))) << 8) | ((i7 & 255) + ((int) (f7 * ((i8 & 255) - r2))));
    }

    public final void a(float f3, C1745d c1745d, boolean z6) {
        float interpolation;
        float f7;
        if (this.f20612n) {
            c(f3, c1745d);
            float floor = (float) (Math.floor(c1745d.f20595m / 0.8f) + 1.0d);
            float f8 = c1745d.f20593k;
            float f9 = c1745d.f20594l;
            c1745d.f20587e = (((f9 - 0.01f) - f8) * f3) + f8;
            c1745d.f20588f = f9;
            float f10 = c1745d.f20595m;
            c1745d.f20589g = b.c.a(floor, f10, f3, f10);
            return;
        }
        if (f3 != 1.0f || z6) {
            float f11 = c1745d.f20595m;
            C0959b c0959b = f20605q;
            if (f3 < 0.5f) {
                interpolation = c1745d.f20593k;
                f7 = (c0959b.getInterpolation(f3 / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float f12 = c1745d.f20593k + 0.79f;
                interpolation = f12 - (((1.0f - c0959b.getInterpolation((f3 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                f7 = f12;
            }
            float f13 = (0.20999998f * f3) + f11;
            float f14 = (f3 + this.f20611m) * 216.0f;
            c1745d.f20587e = interpolation;
            c1745d.f20588f = f7;
            c1745d.f20589g = f13;
            this.f20608e = f14;
        }
    }

    public final void b(float f3, float f7, float f8, float f9) {
        float f10 = this.f20609f.getDisplayMetrics().density;
        float f11 = f7 * f10;
        C1745d c1745d = this.f20607b;
        c1745d.f20590h = f11;
        c1745d.f20584b.setStrokeWidth(f11);
        c1745d.f20599q = f3 * f10;
        c1745d.a(0);
        c1745d.f20600r = (int) (f8 * f10);
        c1745d.f20601s = (int) (f9 * f10);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f20608e, bounds.exactCenterX(), bounds.exactCenterY());
        C1745d c1745d = this.f20607b;
        RectF rectF = c1745d.f20583a;
        float f3 = c1745d.f20599q;
        float f7 = (c1745d.f20590h / 2.0f) + f3;
        if (f3 <= 0.0f) {
            f7 = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((c1745d.f20600r * c1745d.f20598p) / 2.0f, c1745d.f20590h / 2.0f);
        }
        rectF.set(bounds.centerX() - f7, bounds.centerY() - f7, bounds.centerX() + f7, bounds.centerY() + f7);
        float f8 = c1745d.f20587e;
        float f9 = c1745d.f20589g;
        float f10 = (f8 + f9) * 360.0f;
        float f11 = ((c1745d.f20588f + f9) * 360.0f) - f10;
        Paint paint = c1745d.f20584b;
        paint.setColor(c1745d.f20603u);
        paint.setAlpha(c1745d.f20602t);
        float f12 = c1745d.f20590h / 2.0f;
        rectF.inset(f12, f12);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, c1745d.f20586d);
        float f13 = -f12;
        rectF.inset(f13, f13);
        canvas.drawArc(rectF, f10, f11, false, paint);
        if (c1745d.f20596n) {
            Path path = c1745d.f20597o;
            if (path == null) {
                Path path2 = new Path();
                c1745d.f20597o = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f14 = (c1745d.f20600r * c1745d.f20598p) / 2.0f;
            c1745d.f20597o.moveTo(0.0f, 0.0f);
            c1745d.f20597o.lineTo(c1745d.f20600r * c1745d.f20598p, 0.0f);
            Path path3 = c1745d.f20597o;
            float f15 = c1745d.f20600r;
            float f16 = c1745d.f20598p;
            path3.lineTo((f15 * f16) / 2.0f, c1745d.f20601s * f16);
            c1745d.f20597o.offset((rectF.centerX() + min) - f14, (c1745d.f20590h / 2.0f) + rectF.centerY());
            c1745d.f20597o.close();
            Paint paint2 = c1745d.f20585c;
            paint2.setColor(c1745d.f20603u);
            paint2.setAlpha(c1745d.f20602t);
            canvas.save();
            canvas.rotate(f10 + f11, rectF.centerX(), rectF.centerY());
            canvas.drawPath(c1745d.f20597o, paint2);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f20607b.f20602t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f20610j.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f20607b.f20602t = i2;
        invalidateSelf();
    }

    public void setArrowEnabled(boolean z6) {
        C1745d c1745d = this.f20607b;
        if (c1745d.f20596n != z6) {
            c1745d.f20596n = z6;
        }
        invalidateSelf();
    }

    public void setArrowScale(float f3) {
        C1745d c1745d = this.f20607b;
        if (f3 != c1745d.f20598p) {
            c1745d.f20598p = f3;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f20607b.f20584b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setColorSchemeColors(int... iArr) {
        C1745d c1745d = this.f20607b;
        c1745d.f20591i = iArr;
        c1745d.a(0);
        c1745d.a(0);
        invalidateSelf();
    }

    public void setProgressRotation(float f3) {
        this.f20607b.f20589g = f3;
        invalidateSelf();
    }

    public void setStartEndTrim(float f3, float f7) {
        C1745d c1745d = this.f20607b;
        c1745d.f20587e = f3;
        c1745d.f20588f = f7;
        invalidateSelf();
    }

    public void setStrokeWidth(float f3) {
        C1745d c1745d = this.f20607b;
        c1745d.f20590h = f3;
        c1745d.f20584b.setStrokeWidth(f3);
        invalidateSelf();
    }

    public void setStyle(int i2) {
        if (i2 == 0) {
            b(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            b(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f20610j.cancel();
        C1745d c1745d = this.f20607b;
        float f3 = c1745d.f20587e;
        c1745d.f20593k = f3;
        float f7 = c1745d.f20588f;
        c1745d.f20594l = f7;
        c1745d.f20595m = c1745d.f20589g;
        if (f7 != f3) {
            this.f20612n = true;
            this.f20610j.setDuration(666L);
            this.f20610j.start();
            return;
        }
        c1745d.a(0);
        c1745d.f20593k = 0.0f;
        c1745d.f20594l = 0.0f;
        c1745d.f20595m = 0.0f;
        c1745d.f20587e = 0.0f;
        c1745d.f20588f = 0.0f;
        c1745d.f20589g = 0.0f;
        this.f20610j.setDuration(1332L);
        this.f20610j.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f20610j.cancel();
        this.f20608e = 0.0f;
        C1745d c1745d = this.f20607b;
        if (c1745d.f20596n) {
            c1745d.f20596n = false;
        }
        c1745d.a(0);
        c1745d.f20593k = 0.0f;
        c1745d.f20594l = 0.0f;
        c1745d.f20595m = 0.0f;
        c1745d.f20587e = 0.0f;
        c1745d.f20588f = 0.0f;
        c1745d.f20589g = 0.0f;
        invalidateSelf();
    }
}
