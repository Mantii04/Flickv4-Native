package androidx.leanback.widget;

import M.AbstractC0181p0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class HorizontalGridView extends AbstractC0529t {

    /* renamed from: a1, reason: collision with root package name */
    public boolean f6552a1;

    /* renamed from: b1, reason: collision with root package name */
    public boolean f6553b1;

    /* renamed from: c1, reason: collision with root package name */
    public Paint f6554c1;

    /* renamed from: d1, reason: collision with root package name */
    public Bitmap f6555d1;

    /* renamed from: e1, reason: collision with root package name */
    public LinearGradient f6556e1;

    /* renamed from: f1, reason: collision with root package name */
    public int f6557f1;

    /* renamed from: g1, reason: collision with root package name */
    public int f6558g1;

    /* renamed from: h1, reason: collision with root package name */
    public Bitmap f6559h1;

    /* renamed from: i1, reason: collision with root package name */
    public LinearGradient f6560i1;

    /* renamed from: j1, reason: collision with root package name */
    public int f6561j1;

    /* renamed from: k1, reason: collision with root package name */
    public int f6562k1;

    /* renamed from: l1, reason: collision with root package name */
    public final Rect f6563l1;

    public HorizontalGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private Bitmap getTempBitmapHigh() {
        Bitmap bitmap = this.f6559h1;
        if (bitmap == null || bitmap.getWidth() != this.f6561j1 || this.f6559h1.getHeight() != getHeight()) {
            this.f6559h1 = Bitmap.createBitmap(this.f6561j1, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f6559h1;
    }

    private Bitmap getTempBitmapLow() {
        Bitmap bitmap = this.f6555d1;
        if (bitmap == null || bitmap.getWidth() != this.f6557f1 || this.f6555d1.getHeight() != getHeight()) {
            this.f6555d1 = Bitmap.createBitmap(this.f6557f1, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f6555d1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void draw(Canvas canvas) {
        boolean z6;
        boolean z7 = true;
        if (this.f6552a1) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                this.f6904T0.getClass();
                J j7 = (J) childAt.getLayoutParams();
                j7.getClass();
                if (childAt.getLeft() + j7.f6576e < getPaddingLeft() - this.f6558g1) {
                    z6 = true;
                    break;
                }
            }
        }
        z6 = false;
        if (this.f6553b1) {
            for (int childCount2 = getChildCount() - 1; childCount2 >= 0; childCount2--) {
                View childAt2 = getChildAt(childCount2);
                this.f6904T0.getClass();
                J j8 = (J) childAt2.getLayoutParams();
                j8.getClass();
                if (childAt2.getRight() - j8.f6578g > (getWidth() - getPaddingRight()) + this.f6562k1) {
                    break;
                }
            }
        }
        z7 = false;
        if (!z6) {
            this.f6555d1 = null;
        }
        if (!z7) {
            this.f6559h1 = null;
        }
        if (!z6 && !z7) {
            super.draw(canvas);
            return;
        }
        int paddingLeft = this.f6552a1 ? (getPaddingLeft() - this.f6558g1) - this.f6557f1 : 0;
        int width = this.f6553b1 ? (getWidth() - getPaddingRight()) + this.f6562k1 + this.f6561j1 : getWidth();
        int save = canvas.save();
        canvas.clipRect((this.f6552a1 ? this.f6557f1 : 0) + paddingLeft, 0, width - (this.f6553b1 ? this.f6561j1 : 0), getHeight());
        super.draw(canvas);
        canvas.restoreToCount(save);
        Canvas canvas2 = new Canvas();
        Rect rect = this.f6563l1;
        rect.top = 0;
        rect.bottom = getHeight();
        if (z6 && this.f6557f1 > 0) {
            Bitmap tempBitmapLow = getTempBitmapLow();
            tempBitmapLow.eraseColor(0);
            canvas2.setBitmap(tempBitmapLow);
            int save2 = canvas2.save();
            canvas2.clipRect(0, 0, this.f6557f1, getHeight());
            float f3 = -paddingLeft;
            canvas2.translate(f3, 0.0f);
            super.draw(canvas2);
            canvas2.restoreToCount(save2);
            this.f6554c1.setShader(this.f6556e1);
            canvas2.drawRect(0.0f, 0.0f, this.f6557f1, getHeight(), this.f6554c1);
            rect.left = 0;
            rect.right = this.f6557f1;
            canvas.translate(paddingLeft, 0.0f);
            canvas.drawBitmap(tempBitmapLow, rect, rect, (Paint) null);
            canvas.translate(f3, 0.0f);
        }
        if (!z7 || this.f6561j1 <= 0) {
            return;
        }
        Bitmap tempBitmapHigh = getTempBitmapHigh();
        tempBitmapHigh.eraseColor(0);
        canvas2.setBitmap(tempBitmapHigh);
        int save3 = canvas2.save();
        canvas2.clipRect(0, 0, this.f6561j1, getHeight());
        canvas2.translate(-(width - this.f6561j1), 0.0f);
        super.draw(canvas2);
        canvas2.restoreToCount(save3);
        this.f6554c1.setShader(this.f6560i1);
        canvas2.drawRect(0.0f, 0.0f, this.f6561j1, getHeight(), this.f6554c1);
        rect.left = 0;
        rect.right = this.f6561j1;
        canvas.translate(width - r3, 0.0f);
        canvas.drawBitmap(tempBitmapHigh, rect, rect, (Paint) null);
        canvas.translate(-(width - this.f6561j1), 0.0f);
    }

    public final void e0() {
        if (this.f6552a1 || this.f6553b1) {
            setLayerType(2, null);
            setWillNotDraw(false);
        } else {
            setLayerType(0, null);
            setWillNotDraw(true);
        }
    }

    @SuppressLint({"GetterSetterNames"})
    public final boolean getFadingLeftEdge() {
        return this.f6552a1;
    }

    public final int getFadingLeftEdgeLength() {
        return this.f6557f1;
    }

    public final int getFadingLeftEdgeOffset() {
        return this.f6558g1;
    }

    @SuppressLint({"GetterSetterNames"})
    public final boolean getFadingRightEdge() {
        return this.f6553b1;
    }

    public final int getFadingRightEdgeLength() {
        return this.f6561j1;
    }

    public final int getFadingRightEdgeOffset() {
        return this.f6562k1;
    }

    @SuppressLint({"CustomViewStyleable"})
    public void initAttributes(Context context, AttributeSet attributeSet) {
        d0(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.lbHorizontalGridView);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, R.styleable.lbHorizontalGridView, attributeSet, obtainStyledAttributes, 0, 0);
        setRowHeight(obtainStyledAttributes);
        setNumRows(obtainStyledAttributes.getInt(R.styleable.lbHorizontalGridView_numberOfRows, 1));
        obtainStyledAttributes.recycle();
        e0();
        Paint paint = new Paint();
        this.f6554c1 = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    public final void setFadingLeftEdge(boolean z6) {
        if (this.f6552a1 != z6) {
            this.f6552a1 = z6;
            if (!z6) {
                this.f6555d1 = null;
            }
            invalidate();
            e0();
        }
    }

    public final void setFadingLeftEdgeLength(int i2) {
        if (this.f6557f1 != i2) {
            this.f6557f1 = i2;
            if (i2 != 0) {
                this.f6556e1 = new LinearGradient(0.0f, 0.0f, this.f6557f1, 0.0f, 0, -16777216, Shader.TileMode.CLAMP);
            } else {
                this.f6556e1 = null;
            }
            invalidate();
        }
    }

    public final void setFadingLeftEdgeOffset(int i2) {
        if (this.f6558g1 != i2) {
            this.f6558g1 = i2;
            invalidate();
        }
    }

    public final void setFadingRightEdge(boolean z6) {
        if (this.f6553b1 != z6) {
            this.f6553b1 = z6;
            if (!z6) {
                this.f6559h1 = null;
            }
            invalidate();
            e0();
        }
    }

    public final void setFadingRightEdgeLength(int i2) {
        if (this.f6561j1 != i2) {
            this.f6561j1 = i2;
            if (i2 != 0) {
                this.f6560i1 = new LinearGradient(0.0f, 0.0f, this.f6561j1, 0.0f, -16777216, 0, Shader.TileMode.CLAMP);
            } else {
                this.f6560i1 = null;
            }
            invalidate();
        }
    }

    public final void setFadingRightEdgeOffset(int i2) {
        if (this.f6562k1 != i2) {
            this.f6562k1 = i2;
            invalidate();
        }
    }

    public void setNumRows(int i2) {
        GridLayoutManager gridLayoutManager = this.f6904T0;
        if (i2 < 0) {
            gridLayoutManager.getClass();
            throw new IllegalArgumentException();
        }
        gridLayoutManager.f6519V = i2;
        requestLayout();
    }

    public void setRowHeight(TypedArray typedArray) {
        if (typedArray.peekValue(R.styleable.lbHorizontalGridView_rowHeight) != null) {
            setRowHeight(typedArray.getLayoutDimension(R.styleable.lbHorizontalGridView_rowHeight, 0));
        }
    }

    public HorizontalGridView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6554c1 = new Paint();
        this.f6563l1 = new Rect();
        this.f6904T0.setOrientation(0);
        initAttributes(context, attributeSet);
    }

    public void setRowHeight(int i2) {
        this.f6904T0.P(i2);
        requestLayout();
    }
}
