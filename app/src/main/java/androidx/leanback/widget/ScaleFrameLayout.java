package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class ScaleFrameLayout extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public float f6668b;

    /* renamed from: e, reason: collision with root package name */
    public float f6669e;

    /* renamed from: f, reason: collision with root package name */
    public float f6670f;

    public ScaleFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        view.setScaleX(this.f6670f);
        view.setScaleY(this.f6670f);
    }

    @Override // android.view.ViewGroup
    public boolean addViewInLayout(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z6) {
        boolean addViewInLayout = super.addViewInLayout(view, i2, layoutParams, z6);
        if (addViewInLayout) {
            view.setScaleX(this.f6670f);
            view.setScaleY(this.f6670f);
        }
        return addViewInLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00de  */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r17, int r18, int r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.ScaleFrameLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        float f3 = this.f6668b;
        if (f3 == 1.0f && this.f6669e == 1.0f) {
            super.onMeasure(i2, i7);
            return;
        }
        if (f3 != 1.0f) {
            i2 = View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i2) / f3) + 0.5f), View.MeasureSpec.getMode(i2));
        }
        float f7 = this.f6669e;
        if (f7 != 1.0f) {
            i7 = View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i7) / f7) + 0.5f), View.MeasureSpec.getMode(i7));
        }
        super.onMeasure(i2, i7);
        setMeasuredDimension((int) ((getMeasuredWidth() * this.f6668b) + 0.5f), (int) ((getMeasuredHeight() * this.f6669e) + 0.5f));
    }

    public void setChildScale(float f3) {
        if (this.f6670f != f3) {
            this.f6670f = f3;
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                getChildAt(i2).setScaleX(f3);
                getChildAt(i2).setScaleY(f3);
            }
        }
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        throw new UnsupportedOperationException();
    }

    public void setLayoutScaleX(float f3) {
        if (f3 != this.f6668b) {
            this.f6668b = f3;
            requestLayout();
        }
    }

    public void setLayoutScaleY(float f3) {
        if (f3 != this.f6669e) {
            this.f6669e = f3;
            requestLayout();
        }
    }

    public ScaleFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6668b = 1.0f;
        this.f6669e = 1.0f;
        this.f6670f = 1.0f;
    }
}
