package com.google.android.material.snackbar;

import I3.u;
import M.AbstractC0181p0;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.R;
import g3.AbstractC0951a;
import z3.k;

/* loaded from: classes2.dex */
public class SnackbarContentLayout extends LinearLayout implements u {

    /* renamed from: b, reason: collision with root package name */
    public TextView f12808b;

    /* renamed from: e, reason: collision with root package name */
    public Button f12809e;

    /* renamed from: f, reason: collision with root package name */
    public final TimeInterpolator f12810f;

    /* renamed from: j, reason: collision with root package name */
    public int f12811j;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12810f = k.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, AbstractC0951a.f16461b);
    }

    public final boolean a(int i2, int i7, int i8) {
        boolean z6;
        if (i2 != getOrientation()) {
            setOrientation(i2);
            z6 = true;
        } else {
            z6 = false;
        }
        if (this.f12808b.getPaddingTop() == i7 && this.f12808b.getPaddingBottom() == i8) {
            return z6;
        }
        TextView textView = this.f12808b;
        if (AbstractC0181p0.isPaddingRelative(textView)) {
            AbstractC0181p0.setPaddingRelative(textView, AbstractC0181p0.getPaddingStart(textView), i7, AbstractC0181p0.getPaddingEnd(textView), i8);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i7, textView.getPaddingRight(), i8);
        return true;
    }

    @Override // I3.u
    public void animateContentIn(int i2, int i7) {
        this.f12808b.setAlpha(0.0f);
        long j7 = i7;
        ViewPropertyAnimator duration = this.f12808b.animate().alpha(1.0f).setDuration(j7);
        TimeInterpolator timeInterpolator = this.f12810f;
        long j8 = i2;
        duration.setInterpolator(timeInterpolator).setStartDelay(j8).start();
        if (this.f12809e.getVisibility() == 0) {
            this.f12809e.setAlpha(0.0f);
            this.f12809e.animate().alpha(1.0f).setDuration(j7).setInterpolator(timeInterpolator).setStartDelay(j8).start();
        }
    }

    @Override // I3.u
    public void animateContentOut(int i2, int i7) {
        this.f12808b.setAlpha(1.0f);
        long j7 = i7;
        ViewPropertyAnimator duration = this.f12808b.animate().alpha(0.0f).setDuration(j7);
        TimeInterpolator timeInterpolator = this.f12810f;
        long j8 = i2;
        duration.setInterpolator(timeInterpolator).setStartDelay(j8).start();
        if (this.f12809e.getVisibility() == 0) {
            this.f12809e.setAlpha(1.0f);
            this.f12809e.animate().alpha(0.0f).setDuration(j7).setInterpolator(timeInterpolator).setStartDelay(j8).start();
        }
    }

    public Button getActionView() {
        return this.f12809e;
    }

    public TextView getMessageView() {
        return this.f12808b;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f12808b = (TextView) findViewById(R.id.snackbar_text);
        this.f12809e = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        Layout layout = this.f12808b.getLayout();
        boolean z6 = layout != null && layout.getLineCount() > 1;
        if (!z6 || this.f12811j <= 0 || this.f12809e.getMeasuredWidth() <= this.f12811j) {
            if (!z6) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!a(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i2, i7);
    }

    public void setMaxInlineActionWidth(int i2) {
        this.f12811j = i2;
    }
}
