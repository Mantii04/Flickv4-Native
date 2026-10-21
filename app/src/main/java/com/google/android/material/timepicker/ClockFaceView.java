package com.google.android.material.timepicker;

import M.AbstractC0181p0;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.google.android.material.R;
import f.AbstractC0876a;
import java.util.Arrays;

/* loaded from: classes2.dex */
class ClockFaceView extends i implements f {

    /* renamed from: G, reason: collision with root package name */
    public final ClockHandView f12941G;

    /* renamed from: H, reason: collision with root package name */
    public final Rect f12942H;

    /* renamed from: I, reason: collision with root package name */
    public final RectF f12943I;

    /* renamed from: J, reason: collision with root package name */
    public final Rect f12944J;

    /* renamed from: K, reason: collision with root package name */
    public final SparseArray f12945K;

    /* renamed from: L, reason: collision with root package name */
    public final c f12946L;

    /* renamed from: M, reason: collision with root package name */
    public final int[] f12947M;

    /* renamed from: N, reason: collision with root package name */
    public final float[] f12948N;

    /* renamed from: O, reason: collision with root package name */
    public final int f12949O;

    /* renamed from: P, reason: collision with root package name */
    public final int f12950P;

    /* renamed from: Q, reason: collision with root package name */
    public final int f12951Q;

    /* renamed from: R, reason: collision with root package name */
    public final int f12952R;

    /* renamed from: S, reason: collision with root package name */
    public String[] f12953S;

    /* renamed from: T, reason: collision with root package name */
    public float f12954T;

    /* renamed from: U, reason: collision with root package name */
    public final ColorStateList f12955U;

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    public final void c() {
        SparseArray sparseArray;
        RectF rectF;
        Rect rect;
        RectF currentSelectorBox = this.f12941G.getCurrentSelectorBox();
        float f3 = Float.MAX_VALUE;
        TextView textView = null;
        int i2 = 0;
        while (true) {
            sparseArray = this.f12945K;
            int size = sparseArray.size();
            rectF = this.f12943I;
            rect = this.f12942H;
            if (i2 >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i2);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(currentSelectorBox);
                float height = rectF.height() * rectF.width();
                if (height < f3) {
                    textView = textView2;
                    f3 = height;
                }
            }
            i2++;
        }
        for (int i7 = 0; i7 < sparseArray.size(); i7++) {
            TextView textView3 = (TextView) sparseArray.get(i7);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                textView3.getLineBounds(0, this.f12944J);
                rectF.inset(r8.left, r8.top);
                textView3.getPaint().setShader(!RectF.intersects(currentSelectorBox, rectF) ? null : new RadialGradient(currentSelectorBox.centerX() - rectF.left, currentSelectorBox.centerY() - rectF.top, 0.5f * currentSelectorBox.width(), this.f12947M, this.f12948N, Shader.TileMode.CLAMP));
                textView3.invalidate();
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        N.n.wrap(accessibilityNodeInfo).setCollectionInfo(N.l.obtain(1, this.f12953S.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        c();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int max = (int) (this.f12952R / Math.max(Math.max(this.f12950P / displayMetrics.heightPixels, this.f12951Q / displayMetrics.widthPixels), 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        setMeasuredDimension(max, max);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    @Override // com.google.android.material.timepicker.f
    public void onRotate(float f3, boolean z6) {
        if (Math.abs(this.f12954T - f3) > 0.001f) {
            this.f12954T = f3;
            c();
        }
    }

    @Override // com.google.android.material.timepicker.i
    public void setRadius(int i2) {
        if (i2 != getRadius()) {
            super.setRadius(i2);
            this.f12941G.setCircleRadius(getRadius());
        }
    }

    public void setValues(String[] strArr, int i2) {
        this.f12953S = strArr;
        LayoutInflater from = LayoutInflater.from(getContext());
        SparseArray sparseArray = this.f12945K;
        int size = sparseArray.size();
        boolean z6 = false;
        for (int i7 = 0; i7 < Math.max(this.f12953S.length, size); i7++) {
            TextView textView = (TextView) sparseArray.get(i7);
            if (i7 >= this.f12953S.length) {
                removeView(textView);
                sparseArray.remove(i7);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i7, textView);
                    addView(textView);
                }
                textView.setText(this.f12953S[i7]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i7));
                int i8 = (i7 / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i8));
                if (i8 > 1) {
                    z6 = true;
                }
                AbstractC0181p0.setAccessibilityDelegate(textView, this.f12946L);
                textView.setTextColor(this.f12955U);
                if (i2 != 0) {
                    textView.setContentDescription(getResources().getString(i2, this.f12953S[i7]));
                }
            }
        }
        ClockHandView clockHandView = this.f12941G;
        if (clockHandView.f12960j && !z6) {
            clockHandView.f12971x = 1;
        }
        clockHandView.f12960j = z6;
        clockHandView.invalidate();
    }

    @Override // com.google.android.material.timepicker.i
    public void updateLayoutParams() {
        super.updateLayoutParams();
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.f12945K;
            if (i2 >= sparseArray.size()) {
                return;
            }
            ((TextView) sparseArray.get(i2)).setVisibility(0);
            i2++;
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12942H = new Rect();
        this.f12943I = new RectF();
        this.f12944J = new Rect();
        this.f12945K = new SparseArray();
        this.f12948N = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockFaceView, i2, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateList = C3.d.getColorStateList(context, obtainStyledAttributes, R.styleable.ClockFaceView_clockNumberTextColor);
        this.f12955U = colorStateList;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f12941G = clockHandView;
        this.f12949O = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = colorStateList.getColorForState(new int[]{android.R.attr.state_selected}, colorStateList.getDefaultColor());
        this.f12947M = new int[]{colorForState, colorForState, colorStateList.getDefaultColor()};
        clockHandView.addOnRotateListener(this);
        int defaultColor = AbstractC0876a.getColorStateList(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateList2 = C3.d.getColorStateList(context, obtainStyledAttributes, R.styleable.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateList2 != null ? colorStateList2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new b(this));
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.f12946L = new c(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        setValues(strArr, 0);
        this.f12950P = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.f12951Q = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.f12952R = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }
}
