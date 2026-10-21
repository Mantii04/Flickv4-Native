package androidx.leanback.widget;

import M.AbstractC0181p0;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

/* loaded from: classes.dex */
public class PagingIndicator extends View {

    /* renamed from: F, reason: collision with root package name */
    public static final DecelerateInterpolator f6628F = new DecelerateInterpolator();

    /* renamed from: G, reason: collision with root package name */
    public static final C0534v0 f6629G = new C0534v0(Float.class, "alpha");

    /* renamed from: H, reason: collision with root package name */
    public static final C0536w0 f6630H = new C0536w0(Float.class, "diameter");

    /* renamed from: I, reason: collision with root package name */
    public static final C0538x0 f6631I = new C0538x0(Float.class, "translation_x");

    /* renamed from: A, reason: collision with root package name */
    public final Paint f6632A;

    /* renamed from: B, reason: collision with root package name */
    public Bitmap f6633B;

    /* renamed from: C, reason: collision with root package name */
    public Paint f6634C;

    /* renamed from: D, reason: collision with root package name */
    public final Rect f6635D;

    /* renamed from: E, reason: collision with root package name */
    public final float f6636E;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6637b;

    /* renamed from: e, reason: collision with root package name */
    public final int f6638e;

    /* renamed from: f, reason: collision with root package name */
    public final int f6639f;

    /* renamed from: j, reason: collision with root package name */
    public final int f6640j;

    /* renamed from: m, reason: collision with root package name */
    public final int f6641m;

    /* renamed from: n, reason: collision with root package name */
    public final int f6642n;

    /* renamed from: p, reason: collision with root package name */
    public final int f6643p;

    /* renamed from: q, reason: collision with root package name */
    public final int f6644q;

    /* renamed from: r, reason: collision with root package name */
    public C0540y0[] f6645r;

    /* renamed from: s, reason: collision with root package name */
    public int[] f6646s;

    /* renamed from: t, reason: collision with root package name */
    public int[] f6647t;

    /* renamed from: u, reason: collision with root package name */
    public int[] f6648u;

    /* renamed from: v, reason: collision with root package name */
    public int f6649v;

    /* renamed from: w, reason: collision with root package name */
    public int f6650w;

    /* renamed from: x, reason: collision with root package name */
    public int f6651x;

    /* renamed from: y, reason: collision with root package name */
    public int f6652y;

    /* renamed from: z, reason: collision with root package name */
    public final Paint f6653z;

    public PagingIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int getDesiredHeight() {
        return getPaddingBottom() + getPaddingTop() + this.f6641m + this.f6644q;
    }

    private int getDesiredWidth() {
        return getPaddingRight() + getPaddingLeft() + getRequiredWidth();
    }

    private int getRequiredWidth() {
        return ((this.f6650w - 3) * this.f6640j) + (this.f6643p * 2) + (this.f6639f * 2);
    }

    private void setSelectedPage(int i2) {
        if (i2 == this.f6651x) {
            return;
        }
        this.f6651x = i2;
        a();
    }

    public final void a() {
        int i2;
        int i7 = 0;
        while (true) {
            i2 = this.f6651x;
            if (i7 >= i2) {
                break;
            }
            this.f6645r[i7].a();
            C0540y0 c0540y0 = this.f6645r[i7];
            if (i7 != 0) {
                r2 = 1.0f;
            }
            c0540y0.f6930h = r2;
            c0540y0.f6926d = this.f6647t[i7];
            i7++;
        }
        C0540y0 c0540y02 = this.f6645r[i2];
        c0540y02.f6925c = 0.0f;
        c0540y02.f6926d = 0.0f;
        PagingIndicator pagingIndicator = c0540y02.f6932j;
        c0540y02.f6927e = pagingIndicator.f6641m;
        float f3 = pagingIndicator.f6642n;
        c0540y02.f6928f = f3;
        c0540y02.f6929g = f3 * pagingIndicator.f6636E;
        c0540y02.f6923a = 1.0f;
        c0540y02.adjustAlpha();
        C0540y0[] c0540y0Arr = this.f6645r;
        int i8 = this.f6651x;
        C0540y0 c0540y03 = c0540y0Arr[i8];
        c0540y03.f6930h = i8 <= 0 ? 1.0f : -1.0f;
        c0540y03.f6926d = this.f6646s[i8];
        while (true) {
            i8++;
            if (i8 >= this.f6650w) {
                return;
            }
            this.f6645r[i8].a();
            C0540y0 c0540y04 = this.f6645r[i8];
            c0540y04.f6930h = 1.0f;
            c0540y04.f6926d = this.f6648u[i8];
        }
    }

    public final void b() {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int requiredWidth = getRequiredWidth();
        int i2 = (paddingLeft + width) / 2;
        int i7 = this.f6650w;
        int[] iArr = new int[i7];
        this.f6646s = iArr;
        int[] iArr2 = new int[i7];
        this.f6647t = iArr2;
        int[] iArr3 = new int[i7];
        this.f6648u = iArr3;
        boolean z6 = this.f6637b;
        int i8 = this.f6639f;
        int i9 = this.f6643p;
        int i10 = this.f6640j;
        int i11 = 1;
        if (z6) {
            int i12 = i2 - (requiredWidth / 2);
            iArr[0] = ((i12 + i8) - i10) + i9;
            iArr2[0] = i12 + i8;
            iArr3[0] = (i9 * 2) + ((i12 + i8) - (i10 * 2));
            while (i11 < this.f6650w) {
                int[] iArr4 = this.f6646s;
                int[] iArr5 = this.f6647t;
                int i13 = i11 - 1;
                iArr4[i11] = iArr5[i13] + i9;
                iArr5[i11] = iArr5[i13] + i10;
                this.f6648u[i11] = iArr4[i13] + i9;
                i11++;
            }
        } else {
            int i14 = (requiredWidth / 2) + i2;
            iArr[0] = ((i14 - i8) + i10) - i9;
            iArr2[0] = i14 - i8;
            iArr3[0] = ((i10 * 2) + (i14 - i8)) - (i9 * 2);
            while (i11 < this.f6650w) {
                int[] iArr6 = this.f6646s;
                int[] iArr7 = this.f6647t;
                int i15 = i11 - 1;
                iArr6[i11] = iArr7[i15] - i9;
                iArr7[i11] = iArr7[i15] - i10;
                this.f6648u[i11] = iArr6[i15] - i9;
                i11++;
            }
        }
        this.f6649v = paddingTop + this.f6642n;
        a();
    }

    public final ObjectAnimator c() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object) null, f6631I, (-this.f6643p) + this.f6640j, 0.0f);
        ofFloat.setDuration(417L);
        ofFloat.setInterpolator(f6628F);
        return ofFloat;
    }

    public final Bitmap d() {
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), androidx.leanback.R.drawable.lb_ic_nav_arrow);
        if (this.f6637b) {
            return decodeResource;
        }
        Matrix matrix = new Matrix();
        matrix.preScale(-1.0f, 1.0f);
        return Bitmap.createBitmap(decodeResource, 0, 0, decodeResource.getWidth(), decodeResource.getHeight(), matrix, false);
    }

    public int[] getDotSelectedLeftX() {
        return this.f6647t;
    }

    public int[] getDotSelectedRightX() {
        return this.f6648u;
    }

    public int[] getDotSelectedX() {
        return this.f6646s;
    }

    public int getPageCount() {
        return this.f6650w;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f6650w; i2++) {
            C0540y0 c0540y0 = this.f6645r[i2];
            float f3 = c0540y0.f6926d + c0540y0.f6925c;
            PagingIndicator pagingIndicator = c0540y0.f6932j;
            canvas.drawCircle(f3, pagingIndicator.f6649v, c0540y0.f6928f, pagingIndicator.f6653z);
            if (c0540y0.f6923a > 0.0f) {
                Paint paint = pagingIndicator.f6632A;
                paint.setColor(c0540y0.f6924b);
                canvas.drawCircle(f3, pagingIndicator.f6649v, c0540y0.f6928f, paint);
                Bitmap bitmap = pagingIndicator.f6633B;
                float f7 = c0540y0.f6929g;
                float f8 = pagingIndicator.f6649v;
                canvas.drawBitmap(bitmap, pagingIndicator.f6635D, new Rect((int) (f3 - f7), (int) (f8 - f7), (int) (f3 + f7), (int) (f8 + f7)), pagingIndicator.f6634C);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i7) {
        int desiredHeight = getDesiredHeight();
        int mode = View.MeasureSpec.getMode(i7);
        if (mode == Integer.MIN_VALUE) {
            desiredHeight = Math.min(desiredHeight, View.MeasureSpec.getSize(i7));
        } else if (mode == 1073741824) {
            desiredHeight = View.MeasureSpec.getSize(i7);
        }
        int desiredWidth = getDesiredWidth();
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE) {
            desiredWidth = Math.min(desiredWidth, View.MeasureSpec.getSize(i2));
        } else if (mode2 == 1073741824) {
            desiredWidth = View.MeasureSpec.getSize(i2);
        }
        setMeasuredDimension(desiredWidth, desiredHeight);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        boolean z6 = i2 == 0;
        if (this.f6637b != z6) {
            this.f6637b = z6;
            this.f6633B = d();
            C0540y0[] c0540y0Arr = this.f6645r;
            if (c0540y0Arr != null) {
                for (C0540y0 c0540y0 : c0540y0Arr) {
                    c0540y0.f6931i = c0540y0.f6932j.f6637b ? 1.0f : -1.0f;
                }
            }
            b();
            invalidate();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        setMeasuredDimension(i2, i7);
        b();
    }

    public void setArrowBackgroundColor(int i2) {
        this.f6652y = i2;
    }

    public void setArrowColor(int i2) {
        if (this.f6634C == null) {
            this.f6634C = new Paint();
        }
        this.f6634C.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN));
    }

    public void setDotBackgroundColor(int i2) {
        this.f6653z.setColor(i2);
    }

    public void setPageCount(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("The page count should be a positive integer");
        }
        this.f6650w = i2;
        this.f6645r = new C0540y0[i2];
        for (int i7 = 0; i7 < this.f6650w; i7++) {
            this.f6645r[i7] = new C0540y0(this);
        }
        b();
        setSelectedPage(0);
    }

    public PagingIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        AnimatorSet animatorSet = new AnimatorSet();
        Resources resources = getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.leanback.R.styleable.PagingIndicator, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, androidx.leanback.R.styleable.PagingIndicator, attributeSet, obtainStyledAttributes, i2, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(androidx.leanback.R.styleable.PagingIndicator_lbDotRadius, getResources().getDimensionPixelOffset(androidx.leanback.R.dimen.lb_page_indicator_dot_radius));
        this.f6639f = dimensionPixelOffset;
        int i7 = dimensionPixelOffset * 2;
        this.f6638e = i7;
        int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(androidx.leanback.R.styleable.PagingIndicator_arrowRadius, getResources().getDimensionPixelOffset(androidx.leanback.R.dimen.lb_page_indicator_arrow_radius));
        this.f6642n = dimensionPixelOffset2;
        int i8 = dimensionPixelOffset2 * 2;
        this.f6641m = i8;
        this.f6640j = obtainStyledAttributes.getDimensionPixelOffset(androidx.leanback.R.styleable.PagingIndicator_dotToDotGap, getResources().getDimensionPixelOffset(androidx.leanback.R.dimen.lb_page_indicator_dot_gap));
        this.f6643p = obtainStyledAttributes.getDimensionPixelOffset(androidx.leanback.R.styleable.PagingIndicator_dotToArrowGap, getResources().getDimensionPixelOffset(androidx.leanback.R.dimen.lb_page_indicator_arrow_gap));
        int color = obtainStyledAttributes.getColor(androidx.leanback.R.styleable.PagingIndicator_dotBgColor, getResources().getColor(androidx.leanback.R.color.lb_page_indicator_dot));
        Paint paint = new Paint(1);
        this.f6653z = paint;
        paint.setColor(color);
        this.f6652y = obtainStyledAttributes.getColor(androidx.leanback.R.styleable.PagingIndicator_arrowBgColor, getResources().getColor(androidx.leanback.R.color.lb_page_indicator_arrow_background));
        if (this.f6634C == null && obtainStyledAttributes.hasValue(androidx.leanback.R.styleable.PagingIndicator_arrowColor)) {
            setArrowColor(obtainStyledAttributes.getColor(androidx.leanback.R.styleable.PagingIndicator_arrowColor, 0));
        }
        obtainStyledAttributes.recycle();
        this.f6637b = resources.getConfiguration().getLayoutDirection() == 0;
        int color2 = resources.getColor(androidx.leanback.R.color.lb_page_indicator_arrow_shadow);
        int dimensionPixelSize = resources.getDimensionPixelSize(androidx.leanback.R.dimen.lb_page_indicator_arrow_shadow_radius);
        this.f6644q = dimensionPixelSize;
        Paint paint2 = new Paint(1);
        this.f6632A = paint2;
        float dimensionPixelSize2 = resources.getDimensionPixelSize(androidx.leanback.R.dimen.lb_page_indicator_arrow_shadow_offset);
        paint2.setShadowLayer(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize2, color2);
        this.f6633B = d();
        this.f6635D = new Rect(0, 0, this.f6633B.getWidth(), this.f6633B.getHeight());
        float f3 = i8;
        this.f6636E = this.f6633B.getWidth() / f3;
        AnimatorSet animatorSet2 = new AnimatorSet();
        C0534v0 c0534v0 = f6629G;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object) null, c0534v0, 0.0f, 1.0f);
        ofFloat.setDuration(167L);
        DecelerateInterpolator decelerateInterpolator = f6628F;
        ofFloat.setInterpolator(decelerateInterpolator);
        float f7 = i7;
        C0536w0 c0536w0 = f6630H;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object) null, c0536w0, f7, f3);
        ofFloat2.setDuration(417L);
        ofFloat2.setInterpolator(decelerateInterpolator);
        animatorSet2.playTogether(ofFloat, ofFloat2, c());
        AnimatorSet animatorSet3 = new AnimatorSet();
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat((Object) null, c0534v0, 1.0f, 0.0f);
        ofFloat3.setDuration(167L);
        ofFloat3.setInterpolator(decelerateInterpolator);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat((Object) null, c0536w0, f3, f7);
        ofFloat4.setDuration(417L);
        ofFloat4.setInterpolator(decelerateInterpolator);
        animatorSet3.playTogether(ofFloat3, ofFloat4, c());
        animatorSet.playTogether(animatorSet2, animatorSet3);
        setLayerType(1, null);
    }
}
