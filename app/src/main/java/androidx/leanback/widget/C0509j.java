package androidx.leanback.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* renamed from: androidx.leanback.widget.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0509j extends FrameLayout.LayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public final int f6807a;

    @SuppressLint({"CustomViewStyleable"})
    public C0509j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6807a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.leanback.R.styleable.lbBaseCardView_Layout);
        this.f6807a = obtainStyledAttributes.getInt(androidx.leanback.R.styleable.lbBaseCardView_Layout_layout_viewType, 0);
        obtainStyledAttributes.recycle();
    }

    public C0509j(int i2, int i7) {
        super(i2, i7);
        this.f6807a = 0;
    }

    public C0509j(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f6807a = 0;
    }

    public C0509j(C0509j c0509j) {
        super((ViewGroup.MarginLayoutParams) c0509j);
        this.f6807a = 0;
        this.f6807a = c0509j.f6807a;
    }
}
