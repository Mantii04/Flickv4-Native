package com.google.android.material.appbar;

import G3.k;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.R;
import k.C1084p;
import x3.N;

/* loaded from: classes2.dex */
public class MaterialToolbar extends Toolbar {

    /* renamed from: l0, reason: collision with root package name */
    public static final int f12418l0 = R.style.Widget_MaterialComponents_Toolbar;

    /* renamed from: m0, reason: collision with root package name */
    public static final ImageView.ScaleType[] f12419m0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: g0, reason: collision with root package name */
    public Integer f12420g0;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f12421h0;

    /* renamed from: i0, reason: collision with root package name */
    public boolean f12422i0;

    /* renamed from: j0, reason: collision with root package name */
    public ImageView.ScaleType f12423j0;

    /* renamed from: k0, reason: collision with root package name */
    public Boolean f12424k0;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.f12423j0;
    }

    public Integer getNavigationIconTint() {
        return this.f12420g0;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void inflateMenu(int i2) {
        Menu menu = getMenu();
        boolean z6 = menu instanceof C1084p;
        if (z6) {
            ((C1084p) menu).stopDispatchingItemsChanged();
        }
        super.inflateMenu(i2);
        if (z6) {
            ((C1084p) menu).startDispatchingItemsChanged();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        k.setParentAbsoluteElevation(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        if (this.f12421h0 || this.f12422i0) {
            TextView titleTextView = N.getTitleTextView(this);
            TextView subtitleTextView = N.getSubtitleTextView(this);
            if (titleTextView != null || subtitleTextView != null) {
                int measuredWidth = getMeasuredWidth();
                int i10 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i11 = 0; i11 < getChildCount(); i11++) {
                    View childAt = getChildAt(i11);
                    if (childAt.getVisibility() != 8 && childAt != titleTextView && childAt != subtitleTextView) {
                        if (childAt.getRight() < i10 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i10 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.f12421h0 && titleTextView != null) {
                    r(titleTextView, pair);
                }
                if (this.f12422i0 && subtitleTextView != null) {
                    r(subtitleTextView, pair);
                }
            }
        }
        ImageView logoImageView = N.getLogoImageView(this);
        if (logoImageView != null) {
            Boolean bool = this.f12424k0;
            if (bool != null) {
                logoImageView.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f12423j0;
            if (scaleType != null) {
                logoImageView.setScaleType(scaleType);
            }
        }
    }

    public final void r(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i2 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i7 = measuredWidth2 + i2;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i2, 0), Math.max(i7 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i2 += max;
            i7 -= max;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i7 - i2, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i2, textView.getTop(), i7, textView.getBottom());
    }

    @Override // android.view.View
    public void setElevation(float f3) {
        super.setElevation(f3);
        k.setElevation(this, f3);
    }

    public void setLogoAdjustViewBounds(boolean z6) {
        Boolean bool = this.f12424k0;
        if (bool == null || bool.booleanValue() != z6) {
            this.f12424k0 = Boolean.valueOf(z6);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.f12423j0 != scaleType) {
            this.f12423j0 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.f12420g0 != null) {
            drawable = E.c.wrap(drawable.mutate());
            E.c.setTint(drawable, this.f12420g0.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i2) {
        this.f12420g0 = Integer.valueOf(i2);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z6) {
        if (this.f12422i0 != z6) {
            this.f12422i0 = z6;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z6) {
        if (this.f12421h0 != z6) {
            this.f12421h0 = z6;
            requestLayout();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialToolbar(android.content.Context r7, android.util.AttributeSet r8, int r9) {
        /*
            r6 = this;
            int r4 = com.google.android.material.appbar.MaterialToolbar.f12418l0
            android.content.Context r7 = M3.a.wrap(r7, r8, r9, r4)
            r6.<init>(r7, r8, r9)
            android.content.Context r0 = r6.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialToolbar
            r7 = 0
            int[] r5 = new int[r7]
            r1 = r8
            r3 = r9
            android.content.res.TypedArray r8 = x3.L.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r9 = com.google.android.material.R.styleable.MaterialToolbar_navigationIconTint
            boolean r9 = r8.hasValue(r9)
            r1 = -1
            if (r9 == 0) goto L2a
            int r9 = com.google.android.material.R.styleable.MaterialToolbar_navigationIconTint
            int r9 = r8.getColor(r9, r1)
            r6.setNavigationIconTint(r9)
        L2a:
            int r9 = com.google.android.material.R.styleable.MaterialToolbar_titleCentered
            boolean r9 = r8.getBoolean(r9, r7)
            r6.f12421h0 = r9
            int r9 = com.google.android.material.R.styleable.MaterialToolbar_subtitleCentered
            boolean r9 = r8.getBoolean(r9, r7)
            r6.f12422i0 = r9
            int r9 = com.google.android.material.R.styleable.MaterialToolbar_logoScaleType
            int r9 = r8.getInt(r9, r1)
            if (r9 < 0) goto L4b
            android.widget.ImageView$ScaleType[] r1 = com.google.android.material.appbar.MaterialToolbar.f12419m0
            int r2 = r1.length
            if (r9 >= r2) goto L4b
            r9 = r1[r9]
            r6.f12423j0 = r9
        L4b:
            int r9 = com.google.android.material.R.styleable.MaterialToolbar_logoAdjustViewBounds
            boolean r9 = r8.hasValue(r9)
            if (r9 == 0) goto L5f
            int r9 = com.google.android.material.R.styleable.MaterialToolbar_logoAdjustViewBounds
            boolean r9 = r8.getBoolean(r9, r7)
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r9)
            r6.f12424k0 = r9
        L5f:
            r8.recycle()
            android.graphics.drawable.Drawable r8 = r6.getBackground()
            if (r8 != 0) goto L6d
            android.content.res.ColorStateList r7 = android.content.res.ColorStateList.valueOf(r7)
            goto L71
        L6d:
            android.content.res.ColorStateList r7 = t3.c.getColorStateListOrNull(r8)
        L71:
            if (r7 == 0) goto L88
            G3.j r8 = new G3.j
            r8.<init>()
            r8.setFillColor(r7)
            r8.initializeElevationOverlay(r0)
            float r7 = M.AbstractC0181p0.getElevation(r6)
            r8.setElevation(r7)
            M.AbstractC0181p0.setBackground(r6, r8)
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.MaterialToolbar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
