package com.google.android.material.button;

import D3.a;
import E.c;
import G3.B;
import G3.k;
import G3.p;
import M.AbstractC0181p0;
import S.A;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import f.AbstractC0876a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import l.C1121C;
import m3.InterfaceC1318a;
import m3.d;
import m3.i;

/* loaded from: classes2.dex */
public class MaterialButton extends C1121C implements Checkable, B {

    /* renamed from: A, reason: collision with root package name */
    public static final int[] f12515A = {R.attr.state_checkable};

    /* renamed from: B, reason: collision with root package name */
    public static final int[] f12516B = {R.attr.state_checked};

    /* renamed from: C, reason: collision with root package name */
    public static final int f12517C = com.google.android.material.R.style.Widget_MaterialComponents_Button;

    /* renamed from: j, reason: collision with root package name */
    public final d f12518j;

    /* renamed from: m, reason: collision with root package name */
    public final LinkedHashSet f12519m;

    /* renamed from: n, reason: collision with root package name */
    public InterfaceC1318a f12520n;

    /* renamed from: p, reason: collision with root package name */
    public PorterDuff.Mode f12521p;

    /* renamed from: q, reason: collision with root package name */
    public ColorStateList f12522q;

    /* renamed from: r, reason: collision with root package name */
    public Drawable f12523r;

    /* renamed from: s, reason: collision with root package name */
    public String f12524s;

    /* renamed from: t, reason: collision with root package name */
    public int f12525t;

    /* renamed from: u, reason: collision with root package name */
    public int f12526u;

    /* renamed from: v, reason: collision with root package name */
    public int f12527v;

    /* renamed from: w, reason: collision with root package name */
    public int f12528w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f12529x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f12530y;

    /* renamed from: z, reason: collision with root package name */
    public int f12531z;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.materialButtonStyle);
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float f3 = 0.0f;
        for (int i2 = 0; i2 < lineCount; i2++) {
            f3 = Math.max(f3, getLayout().getLineWidth(i2));
        }
        return (int) Math.ceil(f3);
    }

    public final boolean a() {
        d dVar = this.f12518j;
        return (dVar == null || dVar.f18574o) ? false : true;
    }

    public final void b() {
        int i2 = this.f12531z;
        boolean z6 = true;
        if (i2 != 1 && i2 != 2) {
            z6 = false;
        }
        if (z6) {
            A.setCompoundDrawablesRelative(this, this.f12523r, null, null, null);
            return;
        }
        if (i2 == 3 || i2 == 4) {
            A.setCompoundDrawablesRelative(this, null, null, this.f12523r, null);
        } else if (i2 == 16 || i2 == 32) {
            A.setCompoundDrawablesRelative(this, null, this.f12523r, null, null);
        }
    }

    public final void c(boolean z6) {
        Drawable drawable = this.f12523r;
        if (drawable != null) {
            Drawable mutate = c.wrap(drawable).mutate();
            this.f12523r = mutate;
            c.setTintList(mutate, this.f12522q);
            PorterDuff.Mode mode = this.f12521p;
            if (mode != null) {
                c.setTintMode(this.f12523r, mode);
            }
            int i2 = this.f12525t;
            if (i2 == 0) {
                i2 = this.f12523r.getIntrinsicWidth();
            }
            int i7 = this.f12525t;
            if (i7 == 0) {
                i7 = this.f12523r.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f12523r;
            int i8 = this.f12526u;
            int i9 = this.f12527v;
            drawable2.setBounds(i8, i9, i2 + i8, i7 + i9);
            this.f12523r.setVisible(true, z6);
        }
        if (z6) {
            b();
            return;
        }
        Drawable[] compoundDrawablesRelative = A.getCompoundDrawablesRelative(this);
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i10 = this.f12531z;
        if (((i10 == 1 || i10 == 2) && drawable3 != this.f12523r) || (((i10 == 3 || i10 == 4) && drawable5 != this.f12523r) || ((i10 == 16 || i10 == 32) && drawable4 != this.f12523r))) {
            b();
        }
    }

    public final void d(int i2, int i7) {
        if (this.f12523r == null || getLayout() == null) {
            return;
        }
        int i8 = this.f12531z;
        if (!(i8 == 1 || i8 == 2) && i8 != 3 && i8 != 4) {
            if (i8 == 16 || i8 == 32) {
                this.f12526u = 0;
                if (i8 == 16) {
                    this.f12527v = 0;
                    c(false);
                    return;
                }
                int i9 = this.f12525t;
                if (i9 == 0) {
                    i9 = this.f12523r.getIntrinsicHeight();
                }
                int max = Math.max(0, (((((i7 - getTextHeight()) - getPaddingTop()) - i9) - this.f12528w) - getPaddingBottom()) / 2);
                if (this.f12527v != max) {
                    this.f12527v = max;
                    c(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f12527v = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i10 = this.f12531z;
        if (i10 == 1 || i10 == 3 || ((i10 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i10 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f12526u = 0;
            c(false);
            return;
        }
        int i11 = this.f12525t;
        if (i11 == 0) {
            i11 = this.f12523r.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i2 - getTextLayoutWidth()) - AbstractC0181p0.getPaddingEnd(this)) - i11) - this.f12528w) - AbstractC0181p0.getPaddingStart(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if ((AbstractC0181p0.getLayoutDirection(this) == 1) != (this.f12531z == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f12526u != textLayoutWidth) {
            this.f12526u = textLayoutWidth;
            c(false);
        }
    }

    public String getA11yClassName() {
        if (TextUtils.isEmpty(this.f12524s)) {
            return (isCheckable() ? CompoundButton.class : Button.class).getName();
        }
        return this.f12524s;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (a()) {
            return this.f12518j.f18566g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f12523r;
    }

    public int getIconGravity() {
        return this.f12531z;
    }

    public int getIconPadding() {
        return this.f12528w;
    }

    public int getIconSize() {
        return this.f12525t;
    }

    public ColorStateList getIconTint() {
        return this.f12522q;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f12521p;
    }

    public int getInsetBottom() {
        return this.f12518j.getInsetBottom();
    }

    public int getInsetTop() {
        return this.f12518j.getInsetTop();
    }

    public ColorStateList getRippleColor() {
        if (a()) {
            return this.f12518j.f18571l;
        }
        return null;
    }

    public p getShapeAppearanceModel() {
        if (a()) {
            return this.f12518j.f18561b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (a()) {
            return this.f12518j.f18570k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (a()) {
            return this.f12518j.f18567h;
        }
        return 0;
    }

    @Override // l.C1121C
    public ColorStateList getSupportBackgroundTintList() {
        return a() ? this.f12518j.f18569j : super.getSupportBackgroundTintList();
    }

    @Override // l.C1121C
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return a() ? this.f12518j.f18568i : super.getSupportBackgroundTintMode();
    }

    public boolean isCheckable() {
        d dVar = this.f12518j;
        return dVar != null && dVar.f18576q;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f12529x;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (a()) {
            k.setParentAbsoluteElevation(this, this.f12518j.a(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (isCheckable()) {
            View.mergeDrawableStates(onCreateDrawableState, f12515A);
        }
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f12516B);
        }
        return onCreateDrawableState;
    }

    @Override // l.C1121C, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // l.C1121C, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // l.C1121C, android.widget.TextView, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        d(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof m3.c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        m3.c cVar = (m3.c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        setChecked(cVar.f18559f);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        m3.c cVar = new m3.c(super.onSaveInstanceState());
        cVar.f18559f = this.f12529x;
        return cVar;
    }

    @Override // l.C1121C, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        super.onTextChanged(charSequence, i2, i7, i8);
        d(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f12518j.f18577r) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f12523r != null) {
            if (this.f12523r.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.f12524s = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        if (!a()) {
            super.setBackgroundColor(i2);
            return;
        }
        d dVar = this.f12518j;
        if (dVar.a(false) != null) {
            dVar.a(false).setTint(i2);
        }
    }

    @Override // l.C1121C, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!a()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        d dVar = this.f12518j;
        dVar.f18574o = true;
        ColorStateList colorStateList = dVar.f18569j;
        MaterialButton materialButton = dVar.f18560a;
        materialButton.setSupportBackgroundTintList(colorStateList);
        materialButton.setSupportBackgroundTintMode(dVar.f18568i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // l.C1121C, android.view.View
    public void setBackgroundResource(int i2) {
        setBackgroundDrawable(i2 != 0 ? AbstractC0876a.getDrawable(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z6) {
        if (a()) {
            this.f12518j.f18576q = z6;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z6) {
        if (isCheckable() && isEnabled() && this.f12529x != z6) {
            this.f12529x = z6;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z7 = this.f12529x;
                if (!materialButtonToggleGroup.f12538n) {
                    materialButtonToggleGroup.b(getId(), z7);
                }
            }
            if (this.f12530y) {
                return;
            }
            this.f12530y = true;
            Iterator it = this.f12519m.iterator();
            if (it.hasNext()) {
                throw b.c.g(it);
            }
            this.f12530y = false;
        }
    }

    public void setCornerRadius(int i2) {
        if (a()) {
            d dVar = this.f12518j;
            if (dVar.f18575p && dVar.f18566g == i2) {
                return;
            }
            dVar.f18566g = i2;
            dVar.f18575p = true;
            dVar.b(dVar.f18561b.withCornerSize(i2));
        }
    }

    public void setCornerRadiusResource(int i2) {
        if (a()) {
            setCornerRadius(getResources().getDimensionPixelSize(i2));
        }
    }

    @Override // android.view.View
    public void setElevation(float f3) {
        super.setElevation(f3);
        if (a()) {
            this.f12518j.a(false).setElevation(f3);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f12523r != drawable) {
            this.f12523r = drawable;
            c(true);
            d(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i2) {
        if (this.f12531z != i2) {
            this.f12531z = i2;
            d(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i2) {
        if (this.f12528w != i2) {
            this.f12528w = i2;
            setCompoundDrawablePadding(i2);
        }
    }

    public void setIconResource(int i2) {
        setIcon(i2 != 0 ? AbstractC0876a.getDrawable(getContext(), i2) : null);
    }

    public void setIconSize(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f12525t != i2) {
            this.f12525t = i2;
            c(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f12522q != colorStateList) {
            this.f12522q = colorStateList;
            c(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f12521p != mode) {
            this.f12521p = mode;
            c(false);
        }
    }

    public void setIconTintResource(int i2) {
        setIconTint(AbstractC0876a.getColorStateList(getContext(), i2));
    }

    public void setInsetBottom(int i2) {
        this.f12518j.setInsetBottom(i2);
    }

    public void setInsetTop(int i2) {
        this.f12518j.setInsetTop(i2);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(InterfaceC1318a interfaceC1318a) {
        this.f12520n = interfaceC1318a;
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        InterfaceC1318a interfaceC1318a = this.f12520n;
        if (interfaceC1318a != null) {
            ((i) interfaceC1318a).onPressedChanged(this, z6);
        }
        super.setPressed(z6);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (a()) {
            d dVar = this.f12518j;
            if (dVar.f18571l != colorStateList) {
                dVar.f18571l = colorStateList;
                MaterialButton materialButton = dVar.f18560a;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(a.sanitizeRippleDrawableColor(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i2) {
        if (a()) {
            setRippleColor(AbstractC0876a.getColorStateList(getContext(), i2));
        }
    }

    @Override // G3.B
    public void setShapeAppearanceModel(p pVar) {
        if (!a()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f12518j.b(pVar);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z6) {
        if (a()) {
            d dVar = this.f12518j;
            dVar.f18573n = z6;
            dVar.e();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (a()) {
            d dVar = this.f12518j;
            if (dVar.f18570k != colorStateList) {
                dVar.f18570k = colorStateList;
                dVar.e();
            }
        }
    }

    public void setStrokeColorResource(int i2) {
        if (a()) {
            setStrokeColor(AbstractC0876a.getColorStateList(getContext(), i2));
        }
    }

    public void setStrokeWidth(int i2) {
        if (a()) {
            d dVar = this.f12518j;
            if (dVar.f18567h != i2) {
                dVar.f18567h = i2;
                dVar.e();
            }
        }
    }

    public void setStrokeWidthResource(int i2) {
        if (a()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i2));
        }
    }

    @Override // l.C1121C
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!a()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        d dVar = this.f12518j;
        if (dVar.f18569j != colorStateList) {
            dVar.f18569j = colorStateList;
            if (dVar.a(false) != null) {
                c.setTintList(dVar.a(false), dVar.f18569j);
            }
        }
    }

    @Override // l.C1121C
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!a()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        d dVar = this.f12518j;
        if (dVar.f18568i != mode) {
            dVar.f18568i = mode;
            if (dVar.a(false) == null || dVar.f18568i == null) {
                return;
            }
            c.setTintMode(dVar.a(false), dVar.f18568i);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i2) {
        super.setTextAlignment(i2);
        d(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z6) {
        this.f12518j.f18577r = z6;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f12529x);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButton(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
