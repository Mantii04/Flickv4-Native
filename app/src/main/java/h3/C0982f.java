package h3;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.google.android.material.R;

/* renamed from: h3.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0982f extends LinearLayout.LayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public final int f16530a;

    /* renamed from: b, reason: collision with root package name */
    public C0981e f16531b;

    /* renamed from: c, reason: collision with root package name */
    public final Interpolator f16532c;

    public C0982f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16530a = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
        this.f16530a = obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
        setScrollEffect(obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollEffect, 0));
        if (obtainStyledAttributes.hasValue(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
            this.f16532c = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
        }
        obtainStyledAttributes.recycle();
    }

    public AbstractC0980d getScrollEffect() {
        return this.f16531b;
    }

    public int getScrollFlags() {
        return this.f16530a;
    }

    public Interpolator getScrollInterpolator() {
        return this.f16532c;
    }

    public void setScrollEffect(int i2) {
        this.f16531b = i2 != 1 ? null : new C0981e();
    }

    public C0982f(int i2, int i7) {
        super(i2, i7);
        this.f16530a = 1;
    }

    public C0982f(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f16530a = 1;
    }

    public C0982f(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f16530a = 1;
    }

    public C0982f(LinearLayout.LayoutParams layoutParams) {
        super(layoutParams);
        this.f16530a = 1;
    }
}
