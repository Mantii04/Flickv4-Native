package com.google.android.material.internal;

import M.AbstractC0181p0;
import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import l.N;
import x3.C1827a;
import x3.C1829c;

/* loaded from: classes2.dex */
public class CheckableImageButton extends N implements Checkable {

    /* renamed from: p, reason: collision with root package name */
    public static final int[] f12683p = {R.attr.state_checked};

    /* renamed from: j, reason: collision with root package name */
    public boolean f12684j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f12685m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f12686n;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.imageButtonStyle);
    }

    public boolean isCheckable() {
        return this.f12685m;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f12684j;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i2) {
        return this.f12684j ? View.mergeDrawableStates(super.onCreateDrawableState(i2 + 1), f12683p) : super.onCreateDrawableState(i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1829c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1829c c1829c = (C1829c) parcelable;
        super.onRestoreInstanceState(c1829c.getSuperState());
        setChecked(c1829c.f20896f);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C1829c c1829c = new C1829c(super.onSaveInstanceState());
        c1829c.f20896f = this.f12684j;
        return c1829c;
    }

    public void setCheckable(boolean z6) {
        if (this.f12685m != z6) {
            this.f12685m = z6;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z6) {
        if (!this.f12685m || this.f12684j == z6) {
            return;
        }
        this.f12684j = z6;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z6) {
        this.f12686n = z6;
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        if (this.f12686n) {
            super.setPressed(z6);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f12684j);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f12685m = true;
        this.f12686n = true;
        AbstractC0181p0.setAccessibilityDelegate(this, new C1827a(this));
    }
}
