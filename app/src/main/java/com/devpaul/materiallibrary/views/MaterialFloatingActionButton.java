package com.devpaul.materiallibrary.views;

import I2.a;
import I2.f;
import I2.k;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import com.devpaul.materialfabmenu.R;

/* loaded from: classes.dex */
public class MaterialFloatingActionButton extends View {

    /* renamed from: A, reason: collision with root package name */
    public int f9446A;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f9447b;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f9448e;

    /* renamed from: f, reason: collision with root package name */
    public final float f9449f;

    /* renamed from: j, reason: collision with root package name */
    public final float f9450j;

    /* renamed from: m, reason: collision with root package name */
    public final float f9451m;

    /* renamed from: n, reason: collision with root package name */
    public final float f9452n;

    /* renamed from: p, reason: collision with root package name */
    public int f9453p;

    /* renamed from: q, reason: collision with root package name */
    public int f9454q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f9455r;

    /* renamed from: s, reason: collision with root package name */
    public final f f9456s;

    /* renamed from: t, reason: collision with root package name */
    public final k f9457t;

    /* renamed from: u, reason: collision with root package name */
    public final Bitmap f9458u;

    /* renamed from: v, reason: collision with root package name */
    public final Rect f9459v;

    /* renamed from: w, reason: collision with root package name */
    public final RectF f9460w;

    /* renamed from: x, reason: collision with root package name */
    public final float f9461x;

    /* renamed from: y, reason: collision with root package name */
    public float f9462y;

    /* renamed from: z, reason: collision with root package name */
    public final ObjectAnimator f9463z;

    public MaterialFloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i2;
        this.f9447b = new Paint(1);
        this.f9455r = false;
        TypedArray typedArray = null;
        try {
            try {
                typedArray = context.obtainStyledAttributes(new TypedValue().data, new int[]{R.attr.colorAccent});
                i2 = typedArray.getColor(0, -1);
                typedArray.recycle();
            } catch (Resources.NotFoundException e3) {
                e3.printStackTrace();
                if (typedArray != null) {
                    typedArray.recycle();
                }
                i2 = -1;
            }
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaterialFloatingActionButton, 0, 0);
            int color = obtainStyledAttributes.getColor(R.styleable.MaterialFloatingActionButton_mat_fab_colorNormal, i2 == -1 ? getResources().getColor(android.R.color.holo_blue_dark) : i2);
            this.f9453p = color;
            this.f9454q = obtainStyledAttributes.getColor(R.styleable.MaterialFloatingActionButton_mat_fab_colorPressed, a.getDarkerColor(color));
            this.f9446A = obtainStyledAttributes.getResourceId(R.styleable.MaterialFloatingActionButton_mat_fab_icon, 0);
            this.f9455r = obtainStyledAttributes.getBoolean(R.styleable.MaterialFloatingActionButton_mat_fab_use_selector, false);
            int i7 = obtainStyledAttributes.getInt(R.styleable.MaterialFloatingActionButton_mat_fab_size, 0);
            obtainStyledAttributes.recycle();
            this.f9461x = a(R.dimen.mat_fab_icon_size);
            if (this.f9446A != 0) {
                this.f9458u = BitmapFactory.decodeResource(getResources(), this.f9446A);
                new BitmapDrawable(getResources(), this.f9458u).setAntiAlias(true);
                this.f9459v = new Rect(0, 0, this.f9458u.getWidth(), this.f9458u.getHeight());
                float f3 = this.f9461x;
                this.f9460w = new RectF(0.0f, 0.0f, f3, f3);
            } else {
                this.f9458u = getDefaulBitmap();
                this.f9459v = new Rect(0, 0, this.f9458u.getWidth(), this.f9458u.getHeight());
                float f7 = this.f9461x;
                this.f9460w = new RectF(0.0f, 0.0f, f7, f7);
            }
            float a7 = a(R.dimen.mat_fab_shadow_offset) * 1.5f;
            float f8 = a7 / 1.5f;
            float a8 = a(R.dimen.mat_fab_shadow_max_radius);
            float a9 = a(R.dimen.mat_fab_shadow_min_radius) / 2.0f;
            float a10 = a(i7 == 0 ? R.dimen.mat_fab_normal_size : R.dimen.mat_fab_mini_size);
            this.f9452n = a10;
            float f9 = (3.0f * a7) + (4.0f * a8) + a10;
            this.f9449f = f9;
            float f10 = f9 / 2.0f;
            this.f9450j = f10;
            this.f9451m = f10;
            this.f9462y = 0.0f;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "rotation", -45.0f);
            this.f9463z = ofFloat;
            ofFloat.setDuration(200L);
            this.f9463z.setInterpolator(new OvershootInterpolator());
            float f11 = this.f9452n / 2.0f;
            float f12 = this.f9461x / 2.0f;
            RectF rectF = this.f9460w;
            float f13 = this.f9450j;
            float f14 = this.f9451m;
            rectF.set(f13 - f12, f14 - f12, f13 + f12, f14 + f12);
            Paint.Style style = Paint.Style.FILL;
            Paint paint = this.f9447b;
            paint.setStyle(style);
            paint.setColor(this.f9453p);
            Paint paint2 = new Paint();
            this.f9448e = paint2;
            paint2.setAntiAlias(true);
            this.f9448e.setFilterBitmap(true);
            this.f9448e.setDither(true);
            f fVar = new f(this, paint);
            this.f9456s = fVar;
            fVar.setRippleColor(a.getDarkerColor(this.f9453p));
            this.f9456s.setClipRadius(((int) this.f9452n) / 2);
            this.f9456s.setAnimationDuration(200L);
            this.f9456s.setMaxRippleRadius((int) ((this.f9452n * 0.75f) / 2.0f));
            f fVar2 = this.f9456s;
            float f15 = this.f9450j;
            float f16 = this.f9451m;
            fVar2.setBoundingRect(new RectF(f15 - f11, f16 - f11, f15 + f11, f16 + f11));
            k kVar = new k(this, paint);
            this.f9457t = kVar;
            kVar.setNormalColor(this.f9453p);
            this.f9457t.setPressedColor(this.f9454q);
            this.f9457t.setAnimationDuration(200L);
            this.f9457t.setShadowLimits(f8, a7, a9, a8);
            invalidate();
        } catch (Throwable th) {
            if (typedArray != null) {
                typedArray.recycle();
            }
            throw th;
        }
    }

    private Bitmap getDefaulBitmap() {
        float f3 = this.f9461x;
        Bitmap createBitmap = Bitmap.createBitmap((int) f3, (int) f3, Bitmap.Config.ARGB_8888);
        createBitmap.eraseColor(0);
        Canvas canvas = new Canvas(createBitmap);
        float a7 = a(R.dimen.mat_fab_single_dp);
        float f7 = 4.0f * a7;
        Rect rect = new Rect((int) ((canvas.getWidth() / 2) - a7), ((int) a7) * 4, (int) ((canvas.getWidth() / 2) + a7), (int) (canvas.getHeight() - f7));
        Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        paint.setAlpha(255);
        canvas.drawRect(rect, paint);
        rect.set((int) f7, (int) ((canvas.getHeight() / 2) - a7), (int) (canvas.getWidth() - f7), (int) ((canvas.getHeight() / 2) + a7));
        canvas.drawRect(rect, paint);
        return createBitmap;
    }

    public final float a(int i2) {
        return getResources().getDimension(i2);
    }

    @Override // android.view.View
    public float getRotation() {
        return this.f9462y;
    }

    public float getSize() {
        return this.f9449f;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        boolean z6 = this.f9455r;
        Paint paint = this.f9447b;
        if (!z6) {
            this.f9456s.onDrawShadow(paint);
        }
        canvas.drawCircle(this.f9450j, this.f9451m, this.f9452n / 2.0f, paint);
        canvas.save();
        canvas.rotate(this.f9462y, this.f9450j, this.f9451m);
        Bitmap bitmap = this.f9458u;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, this.f9459v, this.f9460w, this.f9448e);
        }
        canvas.restore();
        if (this.f9455r) {
            this.f9457t.onDraw(paint);
        } else {
            this.f9456s.onDrawRipple(canvas);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        float f3 = this.f9449f;
        setMeasuredDimension((int) f3, (int) f3);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f9455r ? this.f9457t.onTouchEvent(motionEvent) : this.f9456s.onTouchEvent(motionEvent);
    }

    @SuppressLint({"NewApi"})
    public void setBackgroundCompat(Drawable drawable) {
        setBackground(drawable);
    }

    public void setButtonColor(int i2) {
        this.f9453p = i2;
        this.f9447b.setColor(i2);
        invalidate();
    }

    public void setButtonPressedColor(int i2) {
        this.f9454q = i2;
        this.f9457t.setPressedColor(i2);
    }

    public void setIcon(int i2) {
        if (this.f9446A != i2) {
            this.f9446A = i2;
        }
    }

    @Override // android.view.View
    public void setRotation(float f3) {
        this.f9462y = f3;
        invalidate();
    }

    public void setUseSelector(boolean z6) {
        this.f9455r = z6;
    }
}
