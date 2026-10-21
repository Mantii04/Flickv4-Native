package com.google.android.material.chip;

import C3.g;
import D3.a;
import G3.B;
import G3.k;
import G3.p;
import M.AbstractC0181p0;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.google.android.material.R;
import g3.C0953c;
import l.C1122D;
import q3.C1518b;
import q3.C1520d;
import q3.C1522f;
import q3.InterfaceC1521e;
import x3.InterfaceC1837k;

/* loaded from: classes2.dex */
public class Chip extends C1122D implements InterfaceC1521e, B, Checkable {

    /* renamed from: F, reason: collision with root package name */
    public static final int f12557F = R.style.Widget_MaterialComponents_Chip_Action;

    /* renamed from: G, reason: collision with root package name */
    public static final Rect f12558G = new Rect();

    /* renamed from: H, reason: collision with root package name */
    public static final int[] f12559H = {android.R.attr.state_selected};

    /* renamed from: I, reason: collision with root package name */
    public static final int[] f12560I = {android.R.attr.state_checkable};

    /* renamed from: A, reason: collision with root package name */
    public final C1520d f12561A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f12562B;

    /* renamed from: C, reason: collision with root package name */
    public final Rect f12563C;

    /* renamed from: D, reason: collision with root package name */
    public final RectF f12564D;

    /* renamed from: E, reason: collision with root package name */
    public final C1518b f12565E;

    /* renamed from: m, reason: collision with root package name */
    public C1522f f12566m;

    /* renamed from: n, reason: collision with root package name */
    public InsetDrawable f12567n;

    /* renamed from: p, reason: collision with root package name */
    public RippleDrawable f12568p;

    /* renamed from: q, reason: collision with root package name */
    public View.OnClickListener f12569q;

    /* renamed from: r, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f12570r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f12571s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f12572t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f12573u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f12574v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f12575w;

    /* renamed from: x, reason: collision with root package name */
    public int f12576x;

    /* renamed from: y, reason: collision with root package name */
    public int f12577y;

    /* renamed from: z, reason: collision with root package name */
    public CharSequence f12578z;

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.f12564D;
        rectF.setEmpty();
        if (c() && this.f12569q != null) {
            this.f12566m.getCloseIconTouchBounds(rectF);
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i2 = (int) closeIconTouchBounds.left;
        int i7 = (int) closeIconTouchBounds.top;
        int i8 = (int) closeIconTouchBounds.right;
        int i9 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f12563C;
        rect.set(i2, i7, i8, i9);
        return rect;
    }

    private g getTextAppearance() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getTextAppearance();
        }
        return null;
    }

    private void setCloseIconHovered(boolean z6) {
        if (this.f12573u != z6) {
            this.f12573u = z6;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z6) {
        if (this.f12572t != z6) {
            this.f12572t = z6;
            refreshDrawableState();
        }
    }

    public final boolean c() {
        C1522f c1522f = this.f12566m;
        return (c1522f == null || c1522f.getCloseIcon() == null) ? false : true;
    }

    public final void d() {
        if (c() && isCloseIconVisible() && this.f12569q != null) {
            AbstractC0181p0.setAccessibilityDelegate(this, this.f12561A);
            this.f12562B = true;
        } else {
            AbstractC0181p0.setAccessibilityDelegate(this, null);
            this.f12562B = false;
        }
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return !this.f12562B ? super.dispatchHoverEvent(motionEvent) : this.f12561A.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f12562B) {
            return super.dispatchKeyEvent(keyEvent);
        }
        C1520d c1520d = this.f12561A;
        if (!c1520d.dispatchKeyEvent(keyEvent) || c1520d.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // l.C1122D, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1522f c1522f = this.f12566m;
        boolean z6 = false;
        int i2 = 0;
        z6 = false;
        if (c1522f != null && c1522f.isCloseIconStateful()) {
            C1522f c1522f2 = this.f12566m;
            ?? isEnabled = isEnabled();
            int i7 = isEnabled;
            if (this.f12574v) {
                i7 = isEnabled + 1;
            }
            int i8 = i7;
            if (this.f12573u) {
                i8 = i7 + 1;
            }
            int i9 = i8;
            if (this.f12572t) {
                i9 = i8 + 1;
            }
            int i10 = i9;
            if (isChecked()) {
                i10 = i9 + 1;
            }
            int[] iArr = new int[i10];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i2 = 1;
            }
            if (this.f12574v) {
                iArr[i2] = 16842908;
                i2++;
            }
            if (this.f12573u) {
                iArr[i2] = 16843623;
                i2++;
            }
            if (this.f12572t) {
                iArr[i2] = 16842919;
                i2++;
            }
            if (isChecked()) {
                iArr[i2] = 16842913;
            }
            z6 = c1522f2.setCloseIconState(iArr);
        }
        if (z6) {
            invalidate();
        }
    }

    public final void e() {
        this.f12568p = new RippleDrawable(a.sanitizeRippleDrawableColor(this.f12566m.getRippleColor()), getBackgroundDrawable(), null);
        this.f12566m.setUseCompatRipple(false);
        AbstractC0181p0.setBackground(this, this.f12568p);
        f();
    }

    public boolean ensureAccessibleTouchTarget(int i2) {
        this.f12577y = i2;
        if (shouldEnsureMinTouchTargetSize()) {
            int max = Math.max(0, i2 - this.f12566m.getIntrinsicHeight());
            int max2 = Math.max(0, i2 - this.f12566m.getIntrinsicWidth());
            if (max2 > 0 || max > 0) {
                int i7 = max2 > 0 ? max2 / 2 : 0;
                int i8 = max > 0 ? max / 2 : 0;
                if (this.f12567n != null) {
                    Rect rect = new Rect();
                    this.f12567n.getPadding(rect);
                    if (rect.top == i8 && rect.bottom == i8 && rect.left == i7 && rect.right == i7) {
                        int[] iArr = a.f888a;
                        e();
                        return true;
                    }
                }
                if (getMinHeight() != i2) {
                    setMinHeight(i2);
                }
                if (getMinWidth() != i2) {
                    setMinWidth(i2);
                }
                this.f12567n = new InsetDrawable((Drawable) this.f12566m, i7, i8, i7, i8);
                int[] iArr2 = a.f888a;
                e();
                return true;
            }
            InsetDrawable insetDrawable = this.f12567n;
            if (insetDrawable == null) {
                int[] iArr3 = a.f888a;
                e();
                return false;
            }
            if (insetDrawable != null) {
                this.f12567n = null;
                setMinWidth(0);
                setMinHeight((int) getChipMinHeight());
                int[] iArr4 = a.f888a;
                e();
            }
        } else {
            InsetDrawable insetDrawable2 = this.f12567n;
            if (insetDrawable2 == null) {
                int[] iArr5 = a.f888a;
                e();
                return false;
            }
            if (insetDrawable2 != null) {
                this.f12567n = null;
                setMinWidth(0);
                setMinHeight((int) getChipMinHeight());
                int[] iArr6 = a.f888a;
                e();
                return false;
            }
        }
        return false;
    }

    public final void f() {
        C1522f c1522f;
        if (TextUtils.isEmpty(getText()) || (c1522f = this.f12566m) == null) {
            return;
        }
        int k7 = (int) (this.f12566m.k() + this.f12566m.getTextEndPadding() + c1522f.getChipEndPadding());
        int j7 = (int) (this.f12566m.j() + this.f12566m.getTextStartPadding() + this.f12566m.getChipStartPadding());
        if (this.f12567n != null) {
            Rect rect = new Rect();
            this.f12567n.getPadding(rect);
            j7 += rect.left;
            k7 += rect.right;
        }
        AbstractC0181p0.setPaddingRelative(this, j7, getPaddingTop(), k7, getPaddingBottom());
    }

    public final void g() {
        TextPaint paint = getPaint();
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            paint.drawableState = c1522f.getState();
        }
        g textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.updateDrawState(getContext(), paint, this.f12565E);
        }
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f12578z)) {
            return this.f12578z;
        }
        if (!isCheckable()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        getParent();
        return "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f12567n;
        return insetDrawable == null ? this.f12566m : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getCheckedIcon();
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getCheckedIconTint();
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getChipBackgroundColor();
        }
        return null;
    }

    public float getChipCornerRadius() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return Math.max(0.0f, c1522f.getChipCornerRadius());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f12566m;
    }

    public float getChipEndPadding() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getChipEndPadding();
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getChipIcon();
        }
        return null;
    }

    public float getChipIconSize() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getChipIconSize();
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getChipIconTint();
        }
        return null;
    }

    public float getChipMinHeight() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getChipMinHeight();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getChipStartPadding();
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getChipStrokeColor();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getChipStrokeWidth();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getCloseIcon();
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getCloseIconContentDescription();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getCloseIconEndPadding();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getCloseIconSize();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getCloseIconStartPadding();
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getCloseIconTint();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getEllipsize();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.f12562B) {
            C1520d c1520d = this.f12561A;
            if (c1520d.getKeyboardFocusedVirtualViewId() == 1 || c1520d.getAccessibilityFocusedVirtualViewId() == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public C0953c getHideMotionSpec() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getHideMotionSpec();
        }
        return null;
    }

    public float getIconEndPadding() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getIconEndPadding();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getIconStartPadding();
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getRippleColor();
        }
        return null;
    }

    public p getShapeAppearanceModel() {
        return this.f12566m.getShapeAppearanceModel();
    }

    public C0953c getShowMotionSpec() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getShowMotionSpec();
        }
        return null;
    }

    public float getTextEndPadding() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getTextEndPadding();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            return c1522f.getTextStartPadding();
        }
        return 0.0f;
    }

    public boolean isCheckable() {
        C1522f c1522f = this.f12566m;
        return c1522f != null && c1522f.isCheckable();
    }

    public boolean isCloseIconVisible() {
        C1522f c1522f = this.f12566m;
        return c1522f != null && c1522f.isCloseIconVisible();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        k.setParentAbsoluteElevation(this, this.f12566m);
    }

    @Override // q3.InterfaceC1521e
    public void onChipDrawableSizeChange() {
        ensureAccessibleTouchTarget(this.f12577y);
        requestLayout();
        invalidateOutline();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f12559H);
        }
        if (isCheckable()) {
            View.mergeDrawableStates(onCreateDrawableState, f12560I);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z6, int i2, Rect rect) {
        super.onFocusChanged(z6, i2, rect);
        if (this.f12562B) {
            this.f12561A.onFocusChanged(z6, i2, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        getParent();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i2);
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        if (this.f12576x != i2) {
            this.f12576x = i2;
            f();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override // android.widget.TextView, android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L3a
            if (r0 == r2) goto L2c
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L35
            goto L40
        L21:
            boolean r0 = r5.f12572t
            if (r0 == 0) goto L40
            if (r1 != 0) goto L2a
            r5.setCloseIconPressed(r3)
        L2a:
            r0 = r2
            goto L41
        L2c:
            boolean r0 = r5.f12572t
            if (r0 == 0) goto L35
            r5.performCloseIconClick()
            r0 = r2
            goto L36
        L35:
            r0 = r3
        L36:
            r5.setCloseIconPressed(r3)
            goto L41
        L3a:
            if (r1 == 0) goto L40
            r5.setCloseIconPressed(r2)
            goto L2a
        L40:
            r0 = r3
        L41:
            if (r0 != 0) goto L4b
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L4a
            goto L4b
        L4a:
            return r3
        L4b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean performCloseIconClick() {
        boolean z6 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f12569q;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z6 = true;
        }
        if (this.f12562B) {
            this.f12561A.sendEventForVirtualView(1, 1);
        }
        return z6;
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.f12578z = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f12568p) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // l.C1122D, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f12568p) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // l.C1122D, android.view.View
    public void setBackgroundResource(int i2) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z6) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCheckable(z6);
        }
    }

    public void setCheckableResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCheckableResource(i2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z6) {
        C1522f c1522f = this.f12566m;
        if (c1522f == null) {
            this.f12571s = z6;
        } else if (c1522f.isCheckable()) {
            super.setChecked(z6);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCheckedIcon(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z6) {
        setCheckedIconVisible(z6);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i2) {
        setCheckedIconVisible(i2);
    }

    public void setCheckedIconResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCheckedIconResource(i2);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCheckedIconTint(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCheckedIconTintResource(i2);
        }
    }

    public void setCheckedIconVisible(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCheckedIconVisible(i2);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipBackgroundColor(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipBackgroundColorResource(i2);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipCornerRadius(f3);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipCornerRadiusResource(i2);
        }
    }

    public void setChipDrawable(C1522f c1522f) {
        C1522f c1522f2 = this.f12566m;
        if (c1522f2 != c1522f) {
            if (c1522f2 != null) {
                c1522f2.setDelegate(null);
            }
            this.f12566m = c1522f;
            c1522f.f19605N0 = false;
            c1522f.setDelegate(this);
            ensureAccessibleTouchTarget(this.f12577y);
        }
    }

    public void setChipEndPadding(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipEndPadding(f3);
        }
    }

    public void setChipEndPaddingResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipEndPaddingResource(i2);
        }
    }

    public void setChipIcon(Drawable drawable) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipIcon(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z6) {
        setChipIconVisible(z6);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i2) {
        setChipIconVisible(i2);
    }

    public void setChipIconResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipIconResource(i2);
        }
    }

    public void setChipIconSize(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipIconSize(f3);
        }
    }

    public void setChipIconSizeResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipIconSizeResource(i2);
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipIconTint(colorStateList);
        }
    }

    public void setChipIconTintResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipIconTintResource(i2);
        }
    }

    public void setChipIconVisible(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipIconVisible(i2);
        }
    }

    public void setChipMinHeight(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipMinHeight(f3);
        }
    }

    public void setChipMinHeightResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipMinHeightResource(i2);
        }
    }

    public void setChipStartPadding(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipStartPadding(f3);
        }
    }

    public void setChipStartPaddingResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipStartPaddingResource(i2);
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipStrokeColor(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipStrokeColorResource(i2);
        }
    }

    public void setChipStrokeWidth(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipStrokeWidth(f3);
        }
    }

    public void setChipStrokeWidthResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipStrokeWidthResource(i2);
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i2) {
        setText(getResources().getString(i2));
    }

    public void setCloseIcon(Drawable drawable) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIcon(drawable);
        }
        d();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconContentDescription(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z6) {
        setCloseIconVisible(z6);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i2) {
        setCloseIconVisible(i2);
    }

    public void setCloseIconEndPadding(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconEndPadding(f3);
        }
    }

    public void setCloseIconEndPaddingResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconEndPaddingResource(i2);
        }
    }

    public void setCloseIconResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconResource(i2);
        }
        d();
    }

    public void setCloseIconSize(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconSize(f3);
        }
    }

    public void setCloseIconSizeResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconSizeResource(i2);
        }
    }

    public void setCloseIconStartPadding(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconStartPadding(f3);
        }
    }

    public void setCloseIconStartPaddingResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconStartPaddingResource(i2);
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconTint(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconTintResource(i2);
        }
    }

    public void setCloseIconVisible(int i2) {
        setCloseIconVisible(getResources().getBoolean(i2));
    }

    @Override // l.C1122D, android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // l.C1122D, android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i7, int i8, int i9) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i8 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, i7, i8, i9);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i7, int i8, int i9) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i8 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i2, i7, i8, i9);
    }

    @Override // android.view.View
    public void setElevation(float f3) {
        super.setElevation(f3);
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setElevation(f3);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f12566m == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setEllipsize(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z6) {
        this.f12575w = z6;
        ensureAccessibleTouchTarget(this.f12577y);
    }

    @Override // android.widget.TextView
    public void setGravity(int i2) {
        if (i2 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i2);
        }
    }

    public void setHideMotionSpec(C0953c c0953c) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setHideMotionSpec(c0953c);
        }
    }

    public void setHideMotionSpecResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setHideMotionSpecResource(i2);
        }
    }

    public void setIconEndPadding(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setIconEndPadding(f3);
        }
    }

    public void setIconEndPaddingResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setIconEndPaddingResource(i2);
        }
    }

    public void setIconStartPadding(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setIconStartPadding(f3);
        }
    }

    public void setIconStartPaddingResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setIconStartPaddingResource(i2);
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i2) {
        if (this.f12566m == null) {
            return;
        }
        super.setLayoutDirection(i2);
    }

    @Override // android.widget.TextView
    public void setLines(int i2) {
        if (i2 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i2);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i2) {
        if (i2 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i2);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i2) {
        super.setMaxWidth(i2);
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setMaxWidth(i2);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i2) {
        if (i2 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i2);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f12570r = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f12569q = onClickListener;
        d();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setRippleColor(colorStateList);
        }
        if (this.f12566m.getUseCompatRipple()) {
            return;
        }
        e();
    }

    public void setRippleColorResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setRippleColorResource(i2);
            if (this.f12566m.getUseCompatRipple()) {
                return;
            }
            e();
        }
    }

    @Override // G3.B
    public void setShapeAppearanceModel(p pVar) {
        this.f12566m.setShapeAppearanceModel(pVar);
    }

    public void setShowMotionSpec(C0953c c0953c) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setShowMotionSpec(c0953c);
        }
    }

    public void setShowMotionSpecResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setShowMotionSpecResource(i2);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z6) {
        if (!z6) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z6);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        C1522f c1522f = this.f12566m;
        if (c1522f == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(c1522f.f19605N0 ? null : charSequence, bufferType);
        C1522f c1522f2 = this.f12566m;
        if (c1522f2 != null) {
            c1522f2.setText(charSequence);
        }
    }

    public void setTextAppearance(g gVar) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setTextAppearance(gVar);
        }
        g();
    }

    public void setTextAppearanceResource(int i2) {
        setTextAppearance(getContext(), i2);
    }

    public void setTextEndPadding(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setTextEndPadding(f3);
        }
    }

    public void setTextEndPaddingResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setTextEndPaddingResource(i2);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f3) {
        super.setTextSize(i2, f3);
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setTextSize(TypedValue.applyDimension(i2, f3, getResources().getDisplayMetrics()));
        }
        g();
    }

    public void setTextStartPadding(float f3) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setTextStartPadding(f3);
        }
    }

    public void setTextStartPaddingResource(int i2) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setTextStartPaddingResource(i2);
        }
    }

    public boolean shouldEnsureMinTouchTargetSize() {
        return this.f12575w;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Chip(android.content.Context r12, android.util.AttributeSet r13, int r14) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setCloseIconVisible(boolean z6) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCloseIconVisible(z6);
        }
        d();
    }

    public void setCheckedIconVisible(boolean z6) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setCheckedIconVisible(z6);
        }
    }

    public void setChipIconVisible(boolean z6) {
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setChipIconVisible(z6);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setTextAppearanceResource(i2);
        }
        g();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i2) {
        super.setTextAppearance(i2);
        C1522f c1522f = this.f12566m;
        if (c1522f != null) {
            c1522f.setTextAppearanceResource(i2);
        }
        g();
    }

    public void setInternalOnCheckedChangeListener(InterfaceC1837k interfaceC1837k) {
    }
}
