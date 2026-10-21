package de.hdodenhof.circleimageview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import w4.C1780a;

/* loaded from: classes2.dex */
public class CircleImageView extends ImageView {

    /* renamed from: D, reason: collision with root package name */
    public static final ImageView.ScaleType f13614D = ImageView.ScaleType.CENTER_CROP;

    /* renamed from: E, reason: collision with root package name */
    public static final Bitmap.Config f13615E = Bitmap.Config.ARGB_8888;

    /* renamed from: A, reason: collision with root package name */
    public boolean f13616A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f13617B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f13618C;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f13619b;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f13620e;

    /* renamed from: f, reason: collision with root package name */
    public final Matrix f13621f;

    /* renamed from: j, reason: collision with root package name */
    public final Paint f13622j;

    /* renamed from: m, reason: collision with root package name */
    public final Paint f13623m;

    /* renamed from: n, reason: collision with root package name */
    public final Paint f13624n;

    /* renamed from: p, reason: collision with root package name */
    public int f13625p;

    /* renamed from: q, reason: collision with root package name */
    public int f13626q;

    /* renamed from: r, reason: collision with root package name */
    public int f13627r;

    /* renamed from: s, reason: collision with root package name */
    public Bitmap f13628s;

    /* renamed from: t, reason: collision with root package name */
    public BitmapShader f13629t;

    /* renamed from: u, reason: collision with root package name */
    public int f13630u;

    /* renamed from: v, reason: collision with root package name */
    public int f13631v;

    /* renamed from: w, reason: collision with root package name */
    public float f13632w;

    /* renamed from: x, reason: collision with root package name */
    public float f13633x;

    /* renamed from: y, reason: collision with root package name */
    public ColorFilter f13634y;

    /* renamed from: z, reason: collision with root package name */
    public final boolean f13635z;

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a() {
        Bitmap bitmap = null;
        if (this.f13618C) {
            this.f13628s = null;
        } else {
            Drawable drawable = getDrawable();
            if (drawable != null) {
                if (drawable instanceof BitmapDrawable) {
                    bitmap = ((BitmapDrawable) drawable).getBitmap();
                } else {
                    try {
                        boolean z6 = drawable instanceof ColorDrawable;
                        Bitmap.Config config = f13615E;
                        Bitmap createBitmap = z6 ? Bitmap.createBitmap(2, 2, config) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), config);
                        Canvas canvas = new Canvas(createBitmap);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                        bitmap = createBitmap;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            }
            this.f13628s = bitmap;
        }
        b();
    }

    public final void b() {
        float width;
        float height;
        int i2;
        if (!this.f13635z) {
            this.f13616A = true;
            return;
        }
        if (getWidth() == 0 && getHeight() == 0) {
            return;
        }
        if (this.f13628s == null) {
            invalidate();
            return;
        }
        Bitmap bitmap = this.f13628s;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f13629t = new BitmapShader(bitmap, tileMode, tileMode);
        Paint paint = this.f13622j;
        paint.setAntiAlias(true);
        paint.setShader(this.f13629t);
        Paint.Style style = Paint.Style.STROKE;
        Paint paint2 = this.f13623m;
        paint2.setStyle(style);
        paint2.setAntiAlias(true);
        paint2.setColor(this.f13625p);
        paint2.setStrokeWidth(this.f13626q);
        Paint.Style style2 = Paint.Style.FILL;
        Paint paint3 = this.f13624n;
        paint3.setStyle(style2);
        paint3.setAntiAlias(true);
        paint3.setColor(this.f13627r);
        this.f13631v = this.f13628s.getHeight();
        this.f13630u = this.f13628s.getWidth();
        int min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        float paddingLeft = ((r1 - min) / 2.0f) + getPaddingLeft();
        float paddingTop = ((r2 - min) / 2.0f) + getPaddingTop();
        float f3 = min;
        RectF rectF = new RectF(paddingLeft, paddingTop, paddingLeft + f3, f3 + paddingTop);
        RectF rectF2 = this.f13620e;
        rectF2.set(rectF);
        this.f13633x = Math.min((rectF2.height() - this.f13626q) / 2.0f, (rectF2.width() - this.f13626q) / 2.0f);
        RectF rectF3 = this.f13619b;
        rectF3.set(rectF2);
        if (!this.f13617B && (i2 = this.f13626q) > 0) {
            float f7 = i2 - 1.0f;
            rectF3.inset(f7, f7);
        }
        this.f13632w = Math.min(rectF3.height() / 2.0f, rectF3.width() / 2.0f);
        paint.setColorFilter(this.f13634y);
        Matrix matrix = this.f13621f;
        matrix.set(null);
        float f8 = 0.0f;
        if (rectF3.height() * this.f13630u > rectF3.width() * this.f13631v) {
            width = rectF3.height() / this.f13631v;
            height = 0.0f;
            f8 = (rectF3.width() - (this.f13630u * width)) * 0.5f;
        } else {
            width = rectF3.width() / this.f13630u;
            height = (rectF3.height() - (this.f13631v * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate(((int) (f8 + 0.5f)) + rectF3.left, ((int) (height + 0.5f)) + rectF3.top);
        this.f13629t.setLocalMatrix(matrix);
        invalidate();
    }

    public int getBorderColor() {
        return this.f13625p;
    }

    public int getBorderWidth() {
        return this.f13626q;
    }

    public int getCircleBackgroundColor() {
        return this.f13627r;
    }

    @Override // android.widget.ImageView
    public ColorFilter getColorFilter() {
        return this.f13634y;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return f13614D;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f13618C) {
            super.onDraw(canvas);
            return;
        }
        if (this.f13628s == null) {
            return;
        }
        int i2 = this.f13627r;
        RectF rectF = this.f13619b;
        if (i2 != 0) {
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), this.f13632w, this.f13624n);
        }
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), this.f13632w, this.f13622j);
        if (this.f13626q > 0) {
            RectF rectF2 = this.f13620e;
            canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), this.f13633x, this.f13623m);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        b();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x6 = motionEvent.getX();
        float y6 = motionEvent.getY();
        RectF rectF = this.f13620e;
        return Math.pow((double) (y6 - rectF.centerY()), 2.0d) + Math.pow((double) (x6 - rectF.centerX()), 2.0d) <= Math.pow((double) this.f13633x, 2.0d) && super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z6) {
        if (z6) {
            throw new IllegalArgumentException("adjustViewBounds not supported.");
        }
    }

    public void setBorderColor(int i2) {
        if (i2 == this.f13625p) {
            return;
        }
        this.f13625p = i2;
        this.f13623m.setColor(i2);
        invalidate();
    }

    public void setBorderOverlay(boolean z6) {
        if (z6 == this.f13617B) {
            return;
        }
        this.f13617B = z6;
        b();
    }

    public void setBorderWidth(int i2) {
        if (i2 == this.f13626q) {
            return;
        }
        this.f13626q = i2;
        b();
    }

    public void setCircleBackgroundColor(int i2) {
        if (i2 == this.f13627r) {
            return;
        }
        this.f13627r = i2;
        this.f13624n.setColor(i2);
        invalidate();
    }

    public void setCircleBackgroundColorResource(int i2) {
        setCircleBackgroundColor(getContext().getResources().getColor(i2));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter == this.f13634y) {
            return;
        }
        this.f13634y = colorFilter;
        this.f13622j.setColorFilter(colorFilter);
        invalidate();
    }

    public void setDisableCircularTransformation(boolean z6) {
        if (this.f13618C == z6) {
            return;
        }
        this.f13618C = z6;
        a();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        a();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        a();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        super.setImageResource(i2);
        a();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        a();
    }

    @Override // android.view.View
    public void setPadding(int i2, int i7, int i8, int i9) {
        super.setPadding(i2, i7, i8, i9);
        b();
    }

    @Override // android.view.View
    public void setPaddingRelative(int i2, int i7, int i8, int i9) {
        super.setPaddingRelative(i2, i7, i8, i9);
        b();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == f13614D) {
            return;
        }
        throw new IllegalArgumentException("ScaleType " + scaleType + " not supported.");
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13619b = new RectF();
        this.f13620e = new RectF();
        this.f13621f = new Matrix();
        this.f13622j = new Paint();
        this.f13623m = new Paint();
        this.f13624n = new Paint();
        this.f13625p = -16777216;
        this.f13626q = 0;
        this.f13627r = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleImageView, i2, 0);
        this.f13626q = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CircleImageView_civ_border_width, 0);
        this.f13625p = obtainStyledAttributes.getColor(R.styleable.CircleImageView_civ_border_color, -16777216);
        this.f13617B = obtainStyledAttributes.getBoolean(R.styleable.CircleImageView_civ_border_overlay, false);
        this.f13627r = obtainStyledAttributes.getColor(R.styleable.CircleImageView_civ_circle_background_color, 0);
        obtainStyledAttributes.recycle();
        super.setScaleType(f13614D);
        this.f13635z = true;
        setOutlineProvider(new C1780a(this));
        if (this.f13616A) {
            b();
            this.f13616A = false;
        }
    }
}
