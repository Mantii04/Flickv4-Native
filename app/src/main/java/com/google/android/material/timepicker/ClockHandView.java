package com.google.android.material.timepicker;

import M.AbstractC0181p0;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.material.R;
import cz.msebera.android.httpclient.HttpStatus;
import g3.AbstractC0951a;
import java.util.ArrayList;
import java.util.Iterator;
import x3.T;
import y3.AbstractC1885a;

/* loaded from: classes2.dex */
class ClockHandView extends View {

    /* renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f12956y = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f12957b;

    /* renamed from: e, reason: collision with root package name */
    public final TimeInterpolator f12958e;

    /* renamed from: f, reason: collision with root package name */
    public final ValueAnimator f12959f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f12960j;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f12961m;

    /* renamed from: n, reason: collision with root package name */
    public final int f12962n;

    /* renamed from: p, reason: collision with root package name */
    public final float f12963p;

    /* renamed from: q, reason: collision with root package name */
    public final Paint f12964q;

    /* renamed from: r, reason: collision with root package name */
    public final RectF f12965r;

    /* renamed from: s, reason: collision with root package name */
    public final int f12966s;

    /* renamed from: t, reason: collision with root package name */
    public float f12967t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f12968u;

    /* renamed from: v, reason: collision with root package name */
    public double f12969v;

    /* renamed from: w, reason: collision with root package name */
    public int f12970w;

    /* renamed from: x, reason: collision with root package name */
    public int f12971x;

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public final int a(int i2) {
        return i2 == 2 ? Math.round(this.f12970w * 0.66f) : this.f12970w;
    }

    public void addOnRotateListener(f fVar) {
        this.f12961m.add(fVar);
    }

    public final void b(float f3, boolean z6) {
        float f7 = f3 % 360.0f;
        this.f12967t = f7;
        this.f12969v = Math.toRadians(f7 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float a7 = a(this.f12971x);
        float cos = (((float) Math.cos(this.f12969v)) * a7) + width;
        float sin = (a7 * ((float) Math.sin(this.f12969v))) + height;
        RectF rectF = this.f12965r;
        float f8 = this.f12962n;
        rectF.set(cos - f8, sin - f8, cos + f8, sin + f8);
        Iterator it = this.f12961m.iterator();
        while (it.hasNext()) {
            ((f) it.next()).onRotate(f7, z6);
        }
        invalidate();
    }

    public RectF getCurrentSelectorBox() {
        return this.f12965r;
    }

    public float getHandRotation() {
        return this.f12967t;
    }

    public int getSelectorRadius() {
        return this.f12962n;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f3 = width;
        float a7 = a(this.f12971x);
        float cos = (((float) Math.cos(this.f12969v)) * a7) + f3;
        float f7 = height;
        float sin = (a7 * ((float) Math.sin(this.f12969v))) + f7;
        Paint paint = this.f12964q;
        paint.setStrokeWidth(0.0f);
        canvas.drawCircle(cos, sin, this.f12962n, paint);
        double sin2 = Math.sin(this.f12969v);
        paint.setStrokeWidth(this.f12966s);
        canvas.drawLine(f3, f7, width + ((int) (Math.cos(this.f12969v) * r2)), height + ((int) (r2 * sin2)), paint);
        canvas.drawCircle(f3, f7, this.f12963p, paint);
    }

    @Override // android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        if (this.f12959f.isRunning()) {
            return;
        }
        setHandRotation(getHandRotation());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        boolean z7;
        int actionMasked = motionEvent.getActionMasked();
        float x6 = motionEvent.getX();
        float y6 = motionEvent.getY();
        boolean z8 = false;
        if (actionMasked == 0) {
            this.f12968u = false;
            z6 = true;
            z7 = false;
        } else if (actionMasked == 1 || actionMasked == 2) {
            z7 = this.f12968u;
            if (this.f12960j) {
                this.f12971x = AbstractC1885a.dist((float) (getWidth() / 2), (float) (getHeight() / 2), x6, y6) <= ((float) a(2)) + T.dpToPx(getContext(), 12) ? 2 : 1;
            }
            z6 = false;
        } else {
            z7 = false;
            z6 = false;
        }
        boolean z9 = this.f12968u;
        int degrees = (int) Math.toDegrees(Math.atan2(y6 - (getHeight() / 2), x6 - (getWidth() / 2)));
        int i2 = degrees + 90;
        if (i2 < 0) {
            i2 = degrees + 450;
        }
        float f3 = i2;
        boolean z10 = getHandRotation() != f3;
        if (!z6 || !z10) {
            if (z10 || z7) {
                setHandRotation(f3, false);
            }
            this.f12968u = z9 | z8;
            return true;
        }
        z8 = true;
        this.f12968u = z9 | z8;
        return true;
    }

    public void setCircleRadius(int i2) {
        this.f12970w = i2;
        invalidate();
    }

    public void setHandRotation(float f3) {
        setHandRotation(f3, false);
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12959f = new ValueAnimator();
        this.f12961m = new ArrayList();
        Paint paint = new Paint();
        this.f12964q = paint;
        this.f12965r = new RectF();
        this.f12971x = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockHandView, i2, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.f12957b = z3.k.resolveThemeDuration(context, R.attr.motionDurationLong2, HttpStatus.SC_OK);
        this.f12958e = z3.k.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, AbstractC0951a.f16461b);
        this.f12970w = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_materialCircleRadius, 0);
        this.f12962n = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClockHandView_selectorSize, 0);
        this.f12966s = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f12963p = r7.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        setHandRotation(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        AbstractC0181p0.setImportantForAccessibility(this, 2);
        obtainStyledAttributes.recycle();
    }

    public void setHandRotation(float f3, boolean z6) {
        ValueAnimator valueAnimator = this.f12959f;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z6) {
            b(f3, false);
            return;
        }
        float handRotation = getHandRotation();
        if (Math.abs(handRotation - f3) > 180.0f) {
            if (handRotation > 180.0f && f3 < 180.0f) {
                f3 += 360.0f;
            }
            if (handRotation < 180.0f && f3 > 180.0f) {
                handRotation += 360.0f;
            }
        }
        Pair pair = new Pair(Float.valueOf(handRotation), Float.valueOf(f3));
        valueAnimator.setFloatValues(((Float) pair.first).floatValue(), ((Float) pair.second).floatValue());
        valueAnimator.setDuration(this.f12957b);
        valueAnimator.setInterpolator(this.f12958e);
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int i2 = ClockHandView.f12956y;
                ClockHandView clockHandView = ClockHandView.this;
                clockHandView.getClass();
                clockHandView.b(((Float) valueAnimator2.getAnimatedValue()).floatValue(), true);
            }
        });
        valueAnimator.addListener(new e());
        valueAnimator.start();
    }
}
