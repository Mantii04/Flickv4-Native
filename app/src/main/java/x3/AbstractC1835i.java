package x3;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import com.google.android.material.R;
import l.AbstractC1135c1;

/* renamed from: x3.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1835i extends AbstractC1135c1 {

    /* renamed from: A, reason: collision with root package name */
    public final Rect f20901A;

    /* renamed from: B, reason: collision with root package name */
    public int f20902B;

    /* renamed from: C, reason: collision with root package name */
    public final boolean f20903C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f20904D;

    /* renamed from: y, reason: collision with root package name */
    public Drawable f20905y;

    /* renamed from: z, reason: collision with root package name */
    public final Rect f20906z;

    public AbstractC1835i(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f20906z = new Rect();
        this.f20901A = new Rect();
        this.f20902B = 119;
        this.f20903C = true;
        this.f20904D = false;
        TypedArray obtainStyledAttributes = L.obtainStyledAttributes(context, attributeSet, R.styleable.ForegroundLinearLayout, i2, 0, new int[0]);
        this.f20902B = obtainStyledAttributes.getInt(R.styleable.ForegroundLinearLayout_android_foregroundGravity, this.f20902B);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f20903C = obtainStyledAttributes.getBoolean(R.styleable.ForegroundLinearLayout_foregroundInsidePadding, true);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f20905y;
        if (drawable != null) {
            if (this.f20904D) {
                this.f20904D = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z6 = this.f20903C;
                Rect rect = this.f20906z;
                if (z6) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i2 = this.f20902B;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f20901A;
                Gravity.apply(i2, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f3, float f7) {
        super.drawableHotspotChanged(f3, f7);
        Drawable drawable = this.f20905y;
        if (drawable != null) {
            drawable.setHotspot(f3, f7);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f20905y;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f20905y.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f20905y;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f20902B;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f20905y;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // l.AbstractC1135c1, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        this.f20904D = z6 | this.f20904D;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        this.f20904D = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f20905y;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f20905y);
            }
            this.f20905y = drawable;
            this.f20904D = true;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f20902B == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i2) {
        if (this.f20902B != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= 8388611;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f20902B = i2;
            if (i2 == 119 && this.f20905y != null) {
                this.f20905y.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f20905y;
    }
}
