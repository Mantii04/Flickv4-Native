package h5;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import flix.com.vision.R;

/* renamed from: h5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0988b {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f16613a;

    /* renamed from: b, reason: collision with root package name */
    public final float f16614b;

    /* renamed from: c, reason: collision with root package name */
    public float f16615c;

    /* renamed from: d, reason: collision with root package name */
    public final Drawable f16616d;

    public C0988b(Context context, AttributeSet attributeSet) {
        this.f16613a = true;
        this.f16616d = new ColorDrawable(-1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ArcDrawer, 0, 0);
        this.f16614b = 200.0f;
        this.f16613a = false;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.background, android.R.attr.layout_gravity});
        this.f16616d = obtainStyledAttributes2.getDrawable(0);
        obtainStyledAttributes2.recycle();
        obtainStyledAttributes.recycle();
    }

    public static float dpToPx(Context context, int i2) {
        return TypedValue.applyDimension(1, i2, context.getResources().getDisplayMetrics());
    }

    public float getArcWidth() {
        return this.f16614b;
    }

    public Drawable getBackgroundDrawable() {
        return this.f16616d;
    }

    public float getElevation() {
        return this.f16615c;
    }

    public boolean isCropInside() {
        return this.f16613a;
    }

    public void setElevation(float f3) {
        this.f16615c = f3;
    }
}
