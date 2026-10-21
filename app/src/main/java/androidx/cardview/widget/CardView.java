package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import o.C1420a;
import o.C1421b;

/* loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f5189n = {R.attr.colorBackground};

    /* renamed from: p, reason: collision with root package name */
    public static final C1421b f5190p;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5191b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5192e;

    /* renamed from: f, reason: collision with root package name */
    public final Rect f5193f;

    /* renamed from: j, reason: collision with root package name */
    public final Rect f5194j;

    /* renamed from: m, reason: collision with root package name */
    public final C1420a f5195m;

    static {
        C1421b c1421b = new C1421b();
        f5190p = c1421b;
        c1421b.initStatic();
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.cardview.R.attr.cardViewStyle);
    }

    public ColorStateList getCardBackgroundColor() {
        return f5190p.getBackgroundColor(this.f5195m);
    }

    public float getCardElevation() {
        return f5190p.getElevation(this.f5195m);
    }

    public int getContentPaddingBottom() {
        return this.f5193f.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f5193f.left;
    }

    public int getContentPaddingRight() {
        return this.f5193f.right;
    }

    public int getContentPaddingTop() {
        return this.f5193f.top;
    }

    public float getMaxCardElevation() {
        return f5190p.getMaxElevation(this.f5195m);
    }

    public boolean getPreventCornerOverlap() {
        return this.f5192e;
    }

    public float getRadius() {
        return f5190p.getRadius(this.f5195m);
    }

    public boolean getUseCompatPadding() {
        return this.f5191b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
    }

    public void setCardBackgroundColor(int i2) {
        f5190p.setBackgroundColor(this.f5195m, ColorStateList.valueOf(i2));
    }

    public void setCardElevation(float f3) {
        f5190p.setElevation(this.f5195m, f3);
    }

    public void setMaxCardElevation(float f3) {
        f5190p.setMaxElevation(this.f5195m, f3);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i2) {
        super.setMinimumHeight(i2);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i2) {
        super.setMinimumWidth(i2);
    }

    @Override // android.view.View
    public void setPadding(int i2, int i7, int i8, int i9) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i2, int i7, int i8, int i9) {
    }

    public void setPreventCornerOverlap(boolean z6) {
        if (z6 != this.f5192e) {
            this.f5192e = z6;
            f5190p.onPreventCornerOverlapChanged(this.f5195m);
        }
    }

    public void setRadius(float f3) {
        f5190p.setRadius(this.f5195m, f3);
    }

    public void setUseCompatPadding(boolean z6) {
        if (this.f5191b != z6) {
            this.f5191b = z6;
            f5190p.onCompatPaddingChanged(this.f5195m);
        }
    }

    public CardView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        ColorStateList valueOf;
        Rect rect = new Rect();
        this.f5193f = rect;
        this.f5194j = new Rect();
        C1420a c1420a = new C1420a(this);
        this.f5195m = c1420a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.cardview.R.styleable.CardView, i2, androidx.cardview.R.style.CardView);
        if (obtainStyledAttributes.hasValue(androidx.cardview.R.styleable.CardView_cardBackgroundColor)) {
            valueOf = obtainStyledAttributes.getColorStateList(androidx.cardview.R.styleable.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f5189n);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            valueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(androidx.cardview.R.color.cardview_light_background) : getResources().getColor(androidx.cardview.R.color.cardview_dark_background));
        }
        ColorStateList colorStateList = valueOf;
        float dimension = obtainStyledAttributes.getDimension(androidx.cardview.R.styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(androidx.cardview.R.styleable.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(androidx.cardview.R.styleable.CardView_cardMaxElevation, 0.0f);
        this.f5191b = obtainStyledAttributes.getBoolean(androidx.cardview.R.styleable.CardView_cardUseCompatPadding, false);
        this.f5192e = obtainStyledAttributes.getBoolean(androidx.cardview.R.styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPadding, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        float f3 = dimension2 > dimension3 ? dimension2 : dimension3;
        obtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_android_minWidth, 0);
        obtainStyledAttributes.getDimensionPixelSize(androidx.cardview.R.styleable.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f5190p.initialize(c1420a, context, colorStateList, dimension, dimension2, f3);
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f5190p.setBackgroundColor(this.f5195m, colorStateList);
    }
}
