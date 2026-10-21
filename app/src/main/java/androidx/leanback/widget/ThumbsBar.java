package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class ThumbsBar extends LinearLayout {

    /* renamed from: b, reason: collision with root package name */
    public int f6736b;

    /* renamed from: e, reason: collision with root package name */
    public final int f6737e;

    /* renamed from: f, reason: collision with root package name */
    public final int f6738f;

    /* renamed from: j, reason: collision with root package name */
    public final int f6739j;

    /* renamed from: m, reason: collision with root package name */
    public final int f6740m;

    /* renamed from: n, reason: collision with root package name */
    public int f6741n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f6742p;

    public ThumbsBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a() {
        int i2;
        int i7;
        while (getChildCount() > this.f6736b) {
            removeView(getChildAt(getChildCount() - 1));
        }
        while (true) {
            int childCount = getChildCount();
            int i8 = this.f6736b;
            i2 = this.f6738f;
            i7 = this.f6737e;
            if (childCount >= i8) {
                break;
            } else {
                addView(createThumbView(this), new LinearLayout.LayoutParams(i7, i2));
            }
        }
        int heroIndex = getHeroIndex();
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (heroIndex == i9) {
                layoutParams.width = this.f6739j;
                layoutParams.height = this.f6740m;
            } else {
                layoutParams.width = i7;
                layoutParams.height = i2;
            }
            childAt.setLayoutParams(layoutParams);
        }
    }

    public View createThumbView(ViewGroup viewGroup) {
        return new ImageView(viewGroup.getContext());
    }

    public int getHeroIndex() {
        return getChildCount() / 2;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        int heroIndex = getHeroIndex();
        View childAt = getChildAt(heroIndex);
        int width = (getWidth() / 2) - (childAt.getMeasuredWidth() / 2);
        int measuredWidth = (childAt.getMeasuredWidth() / 2) + (getWidth() / 2);
        childAt.layout(width, getPaddingTop(), measuredWidth, childAt.getMeasuredHeight() + getPaddingTop());
        int measuredHeight = (childAt.getMeasuredHeight() / 2) + getPaddingTop();
        for (int i10 = heroIndex - 1; i10 >= 0; i10--) {
            int i11 = width - this.f6741n;
            View childAt2 = getChildAt(i10);
            childAt2.layout(i11 - childAt2.getMeasuredWidth(), measuredHeight - (childAt2.getMeasuredHeight() / 2), i11, (childAt2.getMeasuredHeight() / 2) + measuredHeight);
            width = i11 - childAt2.getMeasuredWidth();
        }
        while (true) {
            heroIndex++;
            if (heroIndex >= this.f6736b) {
                return;
            }
            int i12 = measuredWidth + this.f6741n;
            View childAt3 = getChildAt(heroIndex);
            childAt3.layout(i12, measuredHeight - (childAt3.getMeasuredHeight() / 2), childAt3.getMeasuredWidth() + i12, (childAt3.getMeasuredHeight() / 2) + measuredHeight);
            measuredWidth = i12 + childAt3.getMeasuredWidth();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        int measuredWidth = getMeasuredWidth();
        if (this.f6742p) {
            return;
        }
        int i8 = measuredWidth - this.f6739j;
        int i9 = ((i8 + r3) - 1) / (this.f6737e + this.f6741n);
        if (i9 < 2) {
            i9 = 2;
        } else if ((i9 & 1) != 0) {
            i9++;
        }
        int i10 = i9 + 1;
        if (this.f6736b != i10) {
            this.f6736b = i10;
            a();
        }
    }

    public void setNumberOfThumbs(int i2) {
        this.f6742p = true;
        this.f6736b = i2;
        a();
    }

    public void setThumbSpace(int i2) {
        this.f6741n = i2;
        requestLayout();
    }

    public ThumbsBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6736b = -1;
        new SparseArray();
        this.f6742p = false;
        this.f6737e = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_playback_transport_thumbs_width);
        this.f6738f = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_playback_transport_thumbs_height);
        this.f6740m = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_playback_transport_hero_thumbs_width);
        this.f6739j = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_playback_transport_hero_thumbs_height);
        this.f6741n = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_playback_transport_thumbs_margin);
    }
}
