package com.bosphere.fadingedgelayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class FadingEdgeLayout extends FrameLayout {

    /* renamed from: A, reason: collision with root package name */
    public static final int[] f9102A = {0, -16777216};

    /* renamed from: B, reason: collision with root package name */
    public static final int[] f9103B = {-16777216, 0};

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9104b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f9105e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f9106f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f9107j;

    /* renamed from: m, reason: collision with root package name */
    public final int f9108m;

    /* renamed from: n, reason: collision with root package name */
    public final int f9109n;

    /* renamed from: p, reason: collision with root package name */
    public final int f9110p;

    /* renamed from: q, reason: collision with root package name */
    public final int f9111q;

    /* renamed from: r, reason: collision with root package name */
    public final Paint f9112r;

    /* renamed from: s, reason: collision with root package name */
    public final Paint f9113s;

    /* renamed from: t, reason: collision with root package name */
    public final Paint f9114t;

    /* renamed from: u, reason: collision with root package name */
    public final Paint f9115u;

    /* renamed from: v, reason: collision with root package name */
    public final Rect f9116v;

    /* renamed from: w, reason: collision with root package name */
    public final Rect f9117w;

    /* renamed from: x, reason: collision with root package name */
    public final Rect f9118x;

    /* renamed from: y, reason: collision with root package name */
    public final Rect f9119y;

    /* renamed from: z, reason: collision with root package name */
    public int f9120z;

    public FadingEdgeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int applyDimension = (int) TypedValue.applyDimension(1, 80.0f, getResources().getDisplayMetrics());
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.FadingEdgeLayout, 0, 0);
            int i2 = obtainStyledAttributes.getInt(R.styleable.FadingEdgeLayout_fel_edge, 0);
            this.f9104b = (i2 & 1) == 1;
            this.f9105e = (i2 & 2) == 2;
            this.f9106f = (i2 & 4) == 4;
            this.f9107j = (i2 & 8) == 8;
            this.f9108m = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FadingEdgeLayout_fel_size_top, applyDimension);
            this.f9109n = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FadingEdgeLayout_fel_size_bottom, applyDimension);
            this.f9110p = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FadingEdgeLayout_fel_size_left, applyDimension);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FadingEdgeLayout_fel_size_right, applyDimension);
            this.f9111q = dimensionPixelSize;
            if (this.f9104b && this.f9108m > 0) {
                this.f9120z |= 1;
            }
            if (this.f9106f && this.f9110p > 0) {
                this.f9120z |= 4;
            }
            if (this.f9105e && this.f9109n > 0) {
                this.f9120z |= 2;
            }
            if (this.f9107j && dimensionPixelSize > 0) {
                this.f9120z |= 8;
            }
            obtainStyledAttributes.recycle();
        } else {
            this.f9111q = applyDimension;
            this.f9110p = applyDimension;
            this.f9109n = applyDimension;
            this.f9108m = applyDimension;
        }
        PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        Paint paint = new Paint(1);
        this.f9112r = paint;
        paint.setXfermode(porterDuffXfermode);
        Paint paint2 = new Paint(1);
        this.f9113s = paint2;
        paint2.setXfermode(porterDuffXfermode);
        Paint paint3 = new Paint(1);
        this.f9114t = paint3;
        paint3.setXfermode(porterDuffXfermode);
        Paint paint4 = new Paint(1);
        this.f9115u = paint4;
        paint4.setXfermode(porterDuffXfermode);
        this.f9116v = new Rect();
        this.f9118x = new Rect();
        this.f9117w = new Rect();
        this.f9119y = new Rect();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        boolean z6 = this.f9104b || this.f9105e || this.f9106f || this.f9107j;
        if (getVisibility() == 8 || width == 0 || height == 0 || !z6) {
            super.dispatchDraw(canvas);
            return;
        }
        int i2 = this.f9120z;
        int i7 = i2 & 1;
        int[] iArr = f9102A;
        if (i7 == 1) {
            this.f9120z = i2 & (-2);
            int min = Math.min(this.f9108m, (getHeight() - getPaddingTop()) - getPaddingBottom());
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int i8 = min + paddingTop;
            this.f9116v.set(paddingLeft, paddingTop, getWidth() - getPaddingRight(), i8);
            float f3 = paddingLeft;
            this.f9112r.setShader(new LinearGradient(f3, paddingTop, f3, i8, iArr, (float[]) null, Shader.TileMode.CLAMP));
        }
        int i9 = this.f9120z;
        if ((i9 & 4) == 4) {
            this.f9120z = i9 & (-5);
            int min2 = Math.min(this.f9110p, (getWidth() - getPaddingLeft()) - getPaddingRight());
            int paddingLeft2 = getPaddingLeft();
            int paddingTop2 = getPaddingTop();
            int i10 = min2 + paddingLeft2;
            this.f9118x.set(paddingLeft2, paddingTop2, i10, getHeight() - getPaddingBottom());
            float f7 = paddingTop2;
            this.f9114t.setShader(new LinearGradient(paddingLeft2, f7, i10, f7, iArr, (float[]) null, Shader.TileMode.CLAMP));
        }
        int i11 = this.f9120z;
        int i12 = i11 & 2;
        int[] iArr2 = f9103B;
        if (i12 == 2) {
            this.f9120z = i11 & (-3);
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int min3 = Math.min(this.f9109n, height2);
            int paddingLeft3 = getPaddingLeft();
            int paddingTop3 = (getPaddingTop() + height2) - min3;
            int i13 = min3 + paddingTop3;
            this.f9117w.set(paddingLeft3, paddingTop3, getWidth() - getPaddingRight(), i13);
            float f8 = paddingLeft3;
            this.f9113s.setShader(new LinearGradient(f8, paddingTop3, f8, i13, iArr2, (float[]) null, Shader.TileMode.CLAMP));
        }
        int i14 = this.f9120z;
        if ((i14 & 8) == 8) {
            this.f9120z = i14 & (-9);
            int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int min4 = Math.min(this.f9111q, width2);
            int paddingLeft4 = (getPaddingLeft() + width2) - min4;
            int paddingTop4 = getPaddingTop();
            int i15 = min4 + paddingLeft4;
            this.f9119y.set(paddingLeft4, paddingTop4, i15, getHeight() - getPaddingBottom());
            float f9 = paddingTop4;
            this.f9115u.setShader(new LinearGradient(paddingLeft4, f9, i15, f9, iArr2, (float[]) null, Shader.TileMode.CLAMP));
        }
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        super.dispatchDraw(canvas);
        if (this.f9104b && this.f9108m > 0) {
            canvas.drawRect(this.f9116v, this.f9112r);
        }
        if (this.f9105e && this.f9109n > 0) {
            canvas.drawRect(this.f9117w, this.f9113s);
        }
        if (this.f9106f && this.f9110p > 0) {
            canvas.drawRect(this.f9118x, this.f9114t);
        }
        if (this.f9107j && this.f9111q > 0) {
            canvas.drawRect(this.f9119y, this.f9115u);
        }
        canvas.restoreToCount(saveLayer);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        if (i2 != i8) {
            this.f9120z |= 12;
        }
        if (i7 != i9) {
            this.f9120z |= 3;
        }
    }

    @Override // android.view.View
    public void setPadding(int i2, int i7, int i8, int i9) {
        if (getPaddingLeft() != i2) {
            this.f9120z |= 4;
        }
        if (getPaddingTop() != i7) {
            this.f9120z |= 1;
        }
        if (getPaddingRight() != i8) {
            this.f9120z |= 8;
        }
        if (getPaddingBottom() != i9) {
            this.f9120z |= 2;
        }
        super.setPadding(i2, i7, i8, i9);
    }
}
