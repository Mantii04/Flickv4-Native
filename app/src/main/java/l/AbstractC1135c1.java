package l;

import M.AbstractC0181p0;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.appcompat.R;

/* renamed from: l.c1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1135c1 extends ViewGroup {

    /* renamed from: b, reason: collision with root package name */
    public boolean f17861b;

    /* renamed from: e, reason: collision with root package name */
    public int f17862e;

    /* renamed from: f, reason: collision with root package name */
    public int f17863f;

    /* renamed from: j, reason: collision with root package name */
    public int f17864j;

    /* renamed from: m, reason: collision with root package name */
    public int f17865m;

    /* renamed from: n, reason: collision with root package name */
    public int f17866n;

    /* renamed from: p, reason: collision with root package name */
    public float f17867p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f17868q;

    /* renamed from: r, reason: collision with root package name */
    public int[] f17869r;

    /* renamed from: s, reason: collision with root package name */
    public int[] f17870s;

    /* renamed from: t, reason: collision with root package name */
    public Drawable f17871t;

    /* renamed from: u, reason: collision with root package name */
    public int f17872u;

    /* renamed from: v, reason: collision with root package name */
    public int f17873v;

    /* renamed from: w, reason: collision with root package name */
    public int f17874w;

    /* renamed from: x, reason: collision with root package name */
    public int f17875x;

    public AbstractC1135c1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a(Canvas canvas, int i2) {
        this.f17871t.setBounds(getPaddingLeft() + this.f17875x, i2, (getWidth() - getPaddingRight()) - this.f17875x, this.f17873v + i2);
        this.f17871t.draw(canvas);
    }

    public final void b(Canvas canvas, int i2) {
        this.f17871t.setBounds(i2, getPaddingTop() + this.f17875x, this.f17872u + i2, (getHeight() - getPaddingBottom()) - this.f17875x);
        this.f17871t.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1132b1;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i2;
        if (this.f17862e < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i7 = this.f17862e;
        if (childCount <= i7) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i7);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f17862e == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i8 = this.f17863f;
        if (this.f17864j == 1 && (i2 = this.f17865m & 112) != 48) {
            if (i2 == 16) {
                i8 = b.c.c(((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom(), this.f17866n, 2, i8);
            } else if (i2 == 80) {
                i8 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f17866n;
            }
        }
        return i8 + ((LinearLayout.LayoutParams) ((C1132b1) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f17862e;
    }

    public Drawable getDividerDrawable() {
        return this.f17871t;
    }

    public int getDividerPadding() {
        return this.f17875x;
    }

    public int getDividerWidth() {
        return this.f17872u;
    }

    public int getGravity() {
        return this.f17865m;
    }

    public int getOrientation() {
        return this.f17864j;
    }

    public int getShowDividers() {
        return this.f17874w;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f17867p;
    }

    public boolean hasDividerBeforeChildAt(int i2) {
        if (i2 == 0) {
            return (this.f17874w & 1) != 0;
        }
        if (i2 == getChildCount()) {
            return (this.f17874w & 4) != 0;
        }
        if ((this.f17874w & 2) != 0) {
            for (int i7 = i2 - 1; i7 >= 0; i7--) {
                if (getChildAt(i7).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int right;
        int left;
        int i2;
        if (this.f17871t == null) {
            return;
        }
        int i7 = 0;
        if (this.f17864j == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i7 < virtualChildCount) {
                View childAt = getChildAt(i7);
                if (childAt != null && childAt.getVisibility() != 8 && hasDividerBeforeChildAt(i7)) {
                    a(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((C1132b1) childAt.getLayoutParams())).topMargin) - this.f17873v);
                }
                i7++;
            }
            if (hasDividerBeforeChildAt(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f17873v : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((C1132b1) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean isLayoutRtl = z2.isLayoutRtl(this);
        while (i7 < virtualChildCount2) {
            View childAt3 = getChildAt(i7);
            if (childAt3 != null && childAt3.getVisibility() != 8 && hasDividerBeforeChildAt(i7)) {
                C1132b1 c1132b1 = (C1132b1) childAt3.getLayoutParams();
                b(canvas, isLayoutRtl ? childAt3.getRight() + ((LinearLayout.LayoutParams) c1132b1).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) c1132b1).leftMargin) - this.f17872u);
            }
            i7++;
        }
        if (hasDividerBeforeChildAt(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                C1132b1 c1132b12 = (C1132b1) childAt4.getLayoutParams();
                if (isLayoutRtl) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) c1132b12).leftMargin;
                    i2 = this.f17872u;
                    right = left - i2;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) c1132b12).rightMargin;
                }
            } else if (isLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i2 = this.f17872u;
                right = left - i2;
            }
            b(canvas, right);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x018e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r23, int r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l.AbstractC1135c1.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:222:0x04f9  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0548  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0148  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r39, int r40) {
        /*
            Method dump skipped, instructions count: 2151
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l.AbstractC1135c1.onMeasure(int, int):void");
    }

    public void setBaselineAligned(boolean z6) {
        this.f17861b = z6;
    }

    public void setBaselineAlignedChildIndex(int i2) {
        if (i2 >= 0 && i2 < getChildCount()) {
            this.f17862e = i2;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f17871t) {
            return;
        }
        this.f17871t = drawable;
        if (drawable != null) {
            this.f17872u = drawable.getIntrinsicWidth();
            this.f17873v = drawable.getIntrinsicHeight();
        } else {
            this.f17872u = 0;
            this.f17873v = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i2) {
        this.f17875x = i2;
    }

    public void setGravity(int i2) {
        if (this.f17865m != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= 8388611;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.f17865m = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i2) {
        int i7 = i2 & 8388615;
        int i8 = this.f17865m;
        if ((8388615 & i8) != i7) {
            this.f17865m = i7 | ((-8388616) & i8);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z6) {
        this.f17868q = z6;
    }

    public void setOrientation(int i2) {
        if (this.f17864j != i2) {
            this.f17864j = i2;
            requestLayout();
        }
    }

    public void setShowDividers(int i2) {
        if (i2 != this.f17874w) {
            requestLayout();
        }
        this.f17874w = i2;
    }

    public void setVerticalGravity(int i2) {
        int i7 = i2 & 112;
        int i8 = this.f17865m;
        if ((i8 & 112) != i7) {
            this.f17865m = i7 | (i8 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f3) {
        this.f17867p = Math.max(0.0f, f3);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public AbstractC1135c1(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17861b = true;
        this.f17862e = -1;
        this.f17863f = 0;
        this.f17865m = 8388659;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, attributeSet, R.styleable.LinearLayoutCompat, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, R.styleable.LinearLayoutCompat, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        int i7 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i7 >= 0) {
            setOrientation(i7);
        }
        int i8 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i8 >= 0) {
            setGravity(i8);
        }
        boolean z6 = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z6) {
            setBaselineAligned(z6);
        }
        this.f17867p = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f17862e = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f17868q = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.f17874w = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.f17875x = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public C1132b1 generateDefaultLayoutParams() {
        int i2 = this.f17864j;
        if (i2 == 0) {
            return new C1132b1(-2, -2);
        }
        if (i2 == 1) {
            return new C1132b1(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public C1132b1 generateLayoutParams(AttributeSet attributeSet) {
        return new C1132b1(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public C1132b1 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C1132b1(layoutParams);
    }
}
