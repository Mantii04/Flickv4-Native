package androidx.appcompat.widget;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: b, reason: collision with root package name */
    public boolean f5035b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5036e;

    /* renamed from: f, reason: collision with root package name */
    public int f5037f;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5037f = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ButtonBarLayout);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, R.styleable.ButtonBarLayout, attributeSet, obtainStyledAttributes, 0, 0);
        this.f5035b = obtainStyledAttributes.getBoolean(R.styleable.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.f5035b);
        }
    }

    private void setStacked(boolean z6) {
        if (this.f5036e != z6) {
            if (!z6 || this.f5035b) {
                this.f5036e = z6;
                setOrientation(z6 ? 1 : 0);
                setGravity(z6 ? 8388613 : 80);
                View findViewById = findViewById(R.id.spacer);
                if (findViewById != null) {
                    findViewById.setVisibility(z6 ? 8 : 4);
                }
                for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                    bringChildToFront(getChildAt(childCount));
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        int i8;
        boolean z6;
        int i9;
        int size = View.MeasureSpec.getSize(i2);
        int i10 = 0;
        if (this.f5035b) {
            if (size > this.f5037f && this.f5036e) {
                setStacked(false);
            }
            this.f5037f = size;
        }
        if (this.f5036e || View.MeasureSpec.getMode(i2) != 1073741824) {
            i8 = i2;
            z6 = false;
        } else {
            i8 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z6 = true;
        }
        super.onMeasure(i8, i7);
        if (this.f5035b && !this.f5036e && (getMeasuredWidthAndState() & (-16777216)) == 16777216) {
            setStacked(true);
            z6 = true;
        }
        if (z6) {
            super.onMeasure(i2, i7);
        }
        int childCount = getChildCount();
        int i11 = 0;
        while (true) {
            i9 = -1;
            if (i11 >= childCount) {
                i11 = -1;
                break;
            } else if (getChildAt(i11).getVisibility() == 0) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 >= 0) {
            View childAt = getChildAt(i11);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (this.f5036e) {
                int i12 = i11 + 1;
                int childCount2 = getChildCount();
                while (true) {
                    if (i12 >= childCount2) {
                        break;
                    }
                    if (getChildAt(i12).getVisibility() == 0) {
                        i9 = i12;
                        break;
                    }
                    i12++;
                }
                i10 = i9 >= 0 ? getChildAt(i9).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f)) + measuredHeight : measuredHeight;
            } else {
                i10 = getPaddingBottom() + measuredHeight;
            }
        }
        if (AbstractC0181p0.getMinimumHeight(this) != i10) {
            setMinimumHeight(i10);
            if (i7 == 0) {
                super.onMeasure(i2, i7);
            }
        }
    }

    public void setAllowStacking(boolean z6) {
        if (this.f5035b != z6) {
            this.f5035b = z6;
            if (!z6 && this.f5036e) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
