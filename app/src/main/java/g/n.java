package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public final class n extends Drawable {

    /* renamed from: m, reason: collision with root package name */
    public static final float f16375m = (float) Math.toRadians(45.0d);

    /* renamed from: a, reason: collision with root package name */
    public final Paint f16376a;

    /* renamed from: b, reason: collision with root package name */
    public final float f16377b;

    /* renamed from: c, reason: collision with root package name */
    public final float f16378c;

    /* renamed from: d, reason: collision with root package name */
    public final float f16379d;

    /* renamed from: e, reason: collision with root package name */
    public float f16380e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16381f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f16382g;

    /* renamed from: h, reason: collision with root package name */
    public final int f16383h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f16384i;

    /* renamed from: j, reason: collision with root package name */
    public float f16385j;

    /* renamed from: k, reason: collision with root package name */
    public float f16386k;

    /* renamed from: l, reason: collision with root package name */
    public final int f16387l;

    public n(Context context) {
        Paint paint = new Paint();
        this.f16376a = paint;
        this.f16382g = new Path();
        this.f16384i = false;
        this.f16387l = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R.styleable.DrawerArrowToggle, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        setColor(obtainStyledAttributes.getColor(R.styleable.DrawerArrowToggle_color, 0));
        setBarThickness(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_thickness, 0.0f));
        setSpinEnabled(obtainStyledAttributes.getBoolean(R.styleable.DrawerArrowToggle_spinBars, true));
        setGapSize(Math.round(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.f16383h = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.f16378c = Math.round(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.f16377b = Math.round(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.f16379d = obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        obtainStyledAttributes.recycle();
    }

    public static float a(float f3, float f7, float f8) {
        return b.c.a(f7, f3, f8, f3);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i2 = this.f16387l;
        boolean z6 = false;
        if (i2 != 0 && (i2 == 1 || (i2 == 3 ? E.c.getLayoutDirection(this) == 0 : E.c.getLayoutDirection(this) == 1))) {
            z6 = true;
        }
        float f3 = this.f16377b;
        float sqrt = (float) Math.sqrt(f3 * f3 * 2.0f);
        float f7 = this.f16385j;
        float f8 = this.f16378c;
        float a7 = a(f8, sqrt, f7);
        float a8 = a(f8, this.f16379d, this.f16385j);
        float round = Math.round(a(0.0f, this.f16386k, this.f16385j));
        float a9 = a(0.0f, f16375m, this.f16385j);
        float a10 = a(z6 ? 0.0f : -180.0f, z6 ? 180.0f : 0.0f, this.f16385j);
        double d7 = a7;
        double d8 = a9;
        boolean z7 = z6;
        float round2 = Math.round(Math.cos(d8) * d7);
        float round3 = Math.round(Math.sin(d8) * d7);
        Path path = this.f16382g;
        path.rewind();
        float f9 = this.f16380e;
        Paint paint = this.f16376a;
        float a11 = a(paint.getStrokeWidth() + f9, -this.f16386k, this.f16385j);
        float f10 = (-a8) / 2.0f;
        path.moveTo(f10 + round, 0.0f);
        path.rLineTo(a8 - (round * 2.0f), 0.0f);
        path.moveTo(f10, a11);
        path.rLineTo(round2, round3);
        path.moveTo(f10, -a11);
        path.rLineTo(round2, -round3);
        path.close();
        canvas.save();
        float strokeWidth = paint.getStrokeWidth();
        float height = bounds.height() - (3.0f * strokeWidth);
        canvas.translate(bounds.centerX(), (strokeWidth * 1.5f) + this.f16380e + ((((int) (height - (r6 * 2.0f))) / 4) * 2));
        if (this.f16381f) {
            canvas.rotate(a10 * (this.f16384i ^ z7 ? -1 : 1));
        } else if (z7) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(path, paint);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f16383h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f16383h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        Paint paint = this.f16376a;
        if (i2 != paint.getAlpha()) {
            paint.setAlpha(i2);
            invalidateSelf();
        }
    }

    public void setBarThickness(float f3) {
        Paint paint = this.f16376a;
        if (paint.getStrokeWidth() != f3) {
            paint.setStrokeWidth(f3);
            this.f16386k = (float) (Math.cos(f16375m) * (f3 / 2.0f));
            invalidateSelf();
        }
    }

    public void setColor(int i2) {
        Paint paint = this.f16376a;
        if (i2 != paint.getColor()) {
            paint.setColor(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f16376a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setGapSize(float f3) {
        if (f3 != this.f16380e) {
            this.f16380e = f3;
            invalidateSelf();
        }
    }

    public void setProgress(float f3) {
        if (this.f16385j != f3) {
            this.f16385j = f3;
            invalidateSelf();
        }
    }

    public void setSpinEnabled(boolean z6) {
        if (this.f16381f != z6) {
            this.f16381f = z6;
            invalidateSelf();
        }
    }

    public void setVerticalMirror(boolean z6) {
        if (this.f16384i != z6) {
            this.f16384i = z6;
            invalidateSelf();
        }
    }
}
