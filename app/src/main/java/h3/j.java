package h3;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public final class j extends FrameLayout.LayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public final int f16535a;

    /* renamed from: b, reason: collision with root package name */
    public float f16536b;

    public j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16535a = 0;
        this.f16536b = 0.5f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsingToolbarLayout_Layout);
        this.f16535a = obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
        setParallaxMultiplier(obtainStyledAttributes.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
        obtainStyledAttributes.recycle();
    }

    public void setParallaxMultiplier(float f3) {
        this.f16536b = f3;
    }

    public j(int i2, int i7) {
        super(i2, i7);
        this.f16535a = 0;
        this.f16536b = 0.5f;
    }

    public j(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f16535a = 0;
        this.f16536b = 0.5f;
    }
}
