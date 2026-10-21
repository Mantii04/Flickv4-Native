package p3;

import S.g;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import com.google.android.material.R;
import f.AbstractC0876a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import l.C1122D;
import r3.AbstractC1595a;
import x3.T;
import y1.C1877h;

/* renamed from: p3.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1500d extends C1122D {

    /* renamed from: H, reason: collision with root package name */
    public static final int f19478H = R.style.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* renamed from: I, reason: collision with root package name */
    public static final int[] f19479I = {R.attr.state_indeterminate};

    /* renamed from: J, reason: collision with root package name */
    public static final int[] f19480J;

    /* renamed from: K, reason: collision with root package name */
    public static final int[][] f19481K;

    /* renamed from: L, reason: collision with root package name */
    public static final int f19482L;

    /* renamed from: A, reason: collision with root package name */
    public int f19483A;

    /* renamed from: B, reason: collision with root package name */
    public int[] f19484B;

    /* renamed from: C, reason: collision with root package name */
    public boolean f19485C;

    /* renamed from: D, reason: collision with root package name */
    public CharSequence f19486D;

    /* renamed from: E, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f19487E;

    /* renamed from: F, reason: collision with root package name */
    public final C1877h f19488F;

    /* renamed from: G, reason: collision with root package name */
    public final C1497a f19489G;

    /* renamed from: m, reason: collision with root package name */
    public final LinkedHashSet f19490m;

    /* renamed from: n, reason: collision with root package name */
    public final LinkedHashSet f19491n;

    /* renamed from: p, reason: collision with root package name */
    public ColorStateList f19492p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f19493q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f19494r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19495s;

    /* renamed from: t, reason: collision with root package name */
    public CharSequence f19496t;

    /* renamed from: u, reason: collision with root package name */
    public Drawable f19497u;

    /* renamed from: v, reason: collision with root package name */
    public Drawable f19498v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f19499w;

    /* renamed from: x, reason: collision with root package name */
    public ColorStateList f19500x;

    /* renamed from: y, reason: collision with root package name */
    public ColorStateList f19501y;

    /* renamed from: z, reason: collision with root package name */
    public PorterDuff.Mode f19502z;

    static {
        int i2 = R.attr.state_error;
        f19480J = new int[]{i2};
        f19481K = new int[][]{new int[]{android.R.attr.state_enabled, i2}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
        f19482L = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");
    }

    public C1500d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    private String getButtonStateDescription() {
        int i2 = this.f19483A;
        return i2 == 1 ? getResources().getString(R.string.mtrl_checkbox_state_description_checked) : i2 == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f19492p == null) {
            int color = AbstractC1595a.getColor(this, R.attr.colorControlActivated);
            int color2 = AbstractC1595a.getColor(this, R.attr.colorError);
            int color3 = AbstractC1595a.getColor(this, R.attr.colorSurface);
            int color4 = AbstractC1595a.getColor(this, R.attr.colorOnSurface);
            this.f19492p = new ColorStateList(f19481K, new int[]{AbstractC1595a.layer(color3, color2, 1.0f), AbstractC1595a.layer(color3, color, 1.0f), AbstractC1595a.layer(color3, color4, 0.54f), AbstractC1595a.layer(color3, color4, 0.38f), AbstractC1595a.layer(color3, color4, 0.38f)});
        }
        return this.f19492p;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f19500x;
        return colorStateList != null ? colorStateList : super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    public final void a() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        this.f19497u = t3.c.createTintableMutatedDrawableIfNeeded(this.f19497u, this.f19500x, g.getButtonTintMode(this));
        this.f19498v = t3.c.createTintableMutatedDrawableIfNeeded(this.f19498v, this.f19501y, this.f19502z);
        if (this.f19499w) {
            C1877h c1877h = this.f19488F;
            if (c1877h != null) {
                C1497a c1497a = this.f19489G;
                c1877h.unregisterAnimationCallback(c1497a);
                c1877h.registerAnimationCallback(c1497a);
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Drawable drawable = this.f19497u;
                if ((drawable instanceof AnimatedStateListDrawable) && c1877h != null) {
                    ((AnimatedStateListDrawable) drawable).addTransition(R.id.checked, R.id.unchecked, c1877h, false);
                    ((AnimatedStateListDrawable) this.f19497u).addTransition(R.id.indeterminate, R.id.unchecked, c1877h, false);
                }
            }
        }
        Drawable drawable2 = this.f19497u;
        if (drawable2 != null && (colorStateList2 = this.f19500x) != null) {
            E.c.setTintList(drawable2, colorStateList2);
        }
        Drawable drawable3 = this.f19498v;
        if (drawable3 != null && (colorStateList = this.f19501y) != null) {
            E.c.setTintList(drawable3, colorStateList);
        }
        super.setButtonDrawable(t3.c.compositeTwoLayeredDrawable(this.f19497u, this.f19498v));
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.f19497u;
    }

    public Drawable getButtonIconDrawable() {
        return this.f19498v;
    }

    public ColorStateList getButtonIconTintList() {
        return this.f19501y;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f19502z;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.f19500x;
    }

    public int getCheckedState() {
        return this.f19483A;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.f19496t;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public boolean isChecked() {
        return this.f19483A == 1;
    }

    public boolean isErrorShown() {
        return this.f19495s;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f19493q && this.f19500x == null && this.f19501y == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(onCreateDrawableState, f19479I);
        }
        if (isErrorShown()) {
            View.mergeDrawableStates(onCreateDrawableState, f19480J);
        }
        this.f19484B = t3.c.getCheckedState(onCreateDrawableState);
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.f19494r || !TextUtils.isEmpty(getText()) || (buttonDrawable = g.getButtonDrawable(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (T.isLayoutRtl(this) ? -1 : 1);
        int save = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            E.c.setHotspotBounds(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && isErrorShown()) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f19496t));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1499c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1499c c1499c = (C1499c) parcelable;
        super.onRestoreInstanceState(c1499c.getSuperState());
        setCheckedState(c1499c.f19477b);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        C1499c c1499c = new C1499c(super.onSaveInstanceState());
        c1499c.f19477b = getCheckedState();
        return c1499c;
    }

    @Override // l.C1122D, android.widget.CompoundButton
    public void setButtonDrawable(int i2) {
        setButtonDrawable(AbstractC0876a.getDrawable(getContext(), i2));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.f19498v = drawable;
        a();
    }

    public void setButtonIconDrawableResource(int i2) {
        setButtonIconDrawable(AbstractC0876a.getDrawable(getContext(), i2));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.f19501y == colorStateList) {
            return;
        }
        this.f19501y = colorStateList;
        a();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.f19502z == mode) {
            return;
        }
        this.f19502z = mode;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.f19500x == colorStateList) {
            return;
        }
        this.f19500x = colorStateList;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        a();
    }

    public void setCenterIfNoTextEnabled(boolean z6) {
        this.f19494r = z6;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z6) {
        setCheckedState(z6 ? 1 : 0);
    }

    public void setCheckedState(int i2) {
        AutofillManager autofillManager;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f19483A != i2) {
            this.f19483A = i2;
            super.setChecked(i2 == 1);
            refreshDrawableState();
            int i7 = Build.VERSION.SDK_INT;
            if (i7 >= 30 && this.f19486D == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.f19485C) {
                return;
            }
            this.f19485C = true;
            LinkedHashSet linkedHashSet = this.f19491n;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw b.c.g(it);
                }
            }
            if (this.f19483A != 2 && (onCheckedChangeListener = this.f19487E) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (i7 >= 26 && (autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class)) != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f19485C = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z6) {
        super.setEnabled(z6);
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.f19496t = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i2) {
        setErrorAccessibilityLabel(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setErrorShown(boolean z6) {
        if (this.f19495s == z6) {
            return;
        }
        this.f19495s = z6;
        refreshDrawableState();
        Iterator it = this.f19490m.iterator();
        if (it.hasNext()) {
            throw b.c.g(it);
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f19487E = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.f19486D = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build.VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z6) {
        this.f19493q = z6;
        if (z6) {
            g.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            g.setButtonTintList(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1500d(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r4 = p3.C1500d.f19478H
            android.content.Context r8 = M3.a.wrap(r8, r9, r10, r4)
            r7.<init>(r8, r9, r10)
            java.util.LinkedHashSet r8 = new java.util.LinkedHashSet
            r8.<init>()
            r7.f19490m = r8
            java.util.LinkedHashSet r8 = new java.util.LinkedHashSet
            r8.<init>()
            r7.f19491n = r8
            android.content.Context r8 = r7.getContext()
            int r0 = com.google.android.material.R.drawable.mtrl_checkbox_button_checked_unchecked
            y1.h r8 = y1.C1877h.create(r8, r0)
            r7.f19488F = r8
            p3.a r8 = new p3.a
            r8.<init>(r7)
            r7.f19489G = r8
            android.content.Context r0 = r7.getContext()
            android.graphics.drawable.Drawable r8 = S.g.getButtonDrawable(r7)
            r7.f19497u = r8
            android.content.res.ColorStateList r8 = r7.getSuperButtonTintList()
            r7.f19500x = r8
            r8 = 0
            r7.setSupportButtonTintList(r8)
            int[] r2 = com.google.android.material.R.styleable.MaterialCheckBox
            r6 = 0
            int[] r5 = new int[r6]
            r1 = r9
            r3 = r10
            l.e2 r9 = x3.L.obtainTintedStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r10 = com.google.android.material.R.styleable.MaterialCheckBox_buttonIcon
            android.graphics.drawable.Drawable r10 = r9.getDrawable(r10)
            r7.f19498v = r10
            android.graphics.drawable.Drawable r10 = r7.f19497u
            r1 = 1
            if (r10 == 0) goto L87
            boolean r10 = x3.L.isMaterial3Theme(r0)
            if (r10 == 0) goto L87
            int r10 = com.google.android.material.R.styleable.MaterialCheckBox_android_button
            int r10 = r9.getResourceId(r10, r6)
            int r2 = com.google.android.material.R.styleable.MaterialCheckBox_buttonCompat
            int r2 = r9.getResourceId(r2, r6)
            int r3 = p3.C1500d.f19482L
            if (r10 != r3) goto L87
            if (r2 != 0) goto L87
            super.setButtonDrawable(r8)
            int r8 = com.google.android.material.R.drawable.mtrl_checkbox_button
            android.graphics.drawable.Drawable r8 = f.AbstractC0876a.getDrawable(r0, r8)
            r7.f19497u = r8
            r7.f19499w = r1
            android.graphics.drawable.Drawable r8 = r7.f19498v
            if (r8 != 0) goto L87
            int r8 = com.google.android.material.R.drawable.mtrl_checkbox_button_icon
            android.graphics.drawable.Drawable r8 = f.AbstractC0876a.getDrawable(r0, r8)
            r7.f19498v = r8
        L87:
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_buttonIconTint
            android.content.res.ColorStateList r8 = C3.d.getColorStateList(r0, r9, r8)
            r7.f19501y = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_buttonIconTintMode
            r10 = -1
            int r8 = r9.getInt(r8, r10)
            android.graphics.PorterDuff$Mode r10 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r8 = x3.T.parseTintMode(r8, r10)
            r7.f19502z = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_useMaterialThemeColors
            boolean r8 = r9.getBoolean(r8, r6)
            r7.f19493q = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_centerIfNoTextEnabled
            boolean r8 = r9.getBoolean(r8, r1)
            r7.f19494r = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_errorShown
            boolean r8 = r9.getBoolean(r8, r6)
            r7.f19495s = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_errorAccessibilityLabel
            java.lang.CharSequence r8 = r9.getText(r8)
            r7.f19496t = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_checkedState
            boolean r8 = r9.hasValue(r8)
            if (r8 == 0) goto Lcf
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_checkedState
            int r8 = r9.getInt(r8, r6)
            r7.setCheckedState(r8)
        Lcf:
            r9.recycle()
            r7.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p3.C1500d.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // l.C1122D, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.f19497u = drawable;
        this.f19499w = false;
        a();
    }
}
