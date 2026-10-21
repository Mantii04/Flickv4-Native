package e;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.appcompat.R;

/* renamed from: e.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0822a extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public int f13686a;

    public AbstractC0822a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13686a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBarLayout);
        this.f13686a = obtainStyledAttributes.getInt(R.styleable.ActionBarLayout_android_layout_gravity, 0);
        obtainStyledAttributes.recycle();
    }

    public AbstractC0822a(int i2, int i7) {
        super(i2, i7);
        this.f13686a = 8388627;
    }

    public AbstractC0822a(AbstractC0822a abstractC0822a) {
        super((ViewGroup.MarginLayoutParams) abstractC0822a);
        this.f13686a = 0;
        this.f13686a = abstractC0822a.f13686a;
    }

    public AbstractC0822a(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f13686a = 0;
    }
}
