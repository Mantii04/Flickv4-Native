package l;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.R;

/* renamed from: l.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1121C extends Button implements S.D {

    /* renamed from: b, reason: collision with root package name */
    public final C1120B f17657b;

    /* renamed from: e, reason: collision with root package name */
    public final C1199y0 f17658e;

    /* renamed from: f, reason: collision with root package name */
    public M f17659f;

    public C1121C(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    private M getEmojiTextViewHelper() {
        if (this.f17659f == null) {
            this.f17659f = new M(this);
        }
        return this.f17659f;
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1120B c1120b = this.f17657b;
        if (c1120b != null) {
            c1120b.a();
        }
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (z2.f18070b) {
            return super.getAutoSizeMaxTextSize();
        }
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            return Math.round(c1199y0.f18064i.f17715e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (z2.f18070b) {
            return super.getAutoSizeMinTextSize();
        }
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            return Math.round(c1199y0.f18064i.f17714d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (z2.f18070b) {
            return super.getAutoSizeStepGranularity();
        }
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            return Math.round(c1199y0.f18064i.f17713c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (z2.f18070b) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C1199y0 c1199y0 = this.f17658e;
        return c1199y0 != null ? c1199y0.f18064i.f17716f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (z2.f18070b) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            return c1199y0.f18064i.f17711a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return S.A.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1120B c1120b = this.f17657b;
        if (c1120b != null) {
            return c1120b.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1120B c1120b = this.f17657b;
        if (c1120b != null) {
            return c1120b.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17658e.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17658e.e();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 == null || z2.f18070b) {
            return;
        }
        c1199y0.f18064i.a();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        super.onTextChanged(charSequence, i2, i7, i8);
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 == null || z2.f18070b) {
            return;
        }
        I0 i02 = c1199y0.f18064i;
        if (i02.f()) {
            i02.a();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z6) {
        super.setAllCaps(z6);
        getEmojiTextViewHelper().b(z6);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i7, int i8, int i9) throws IllegalArgumentException {
        if (z2.f18070b) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i2, i7, i8, i9);
            return;
        }
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            c1199y0.h(i2, i7, i8, i9);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i2) throws IllegalArgumentException {
        if (z2.f18070b) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
            return;
        }
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            c1199y0.i(iArr, i2);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i2) {
        if (z2.f18070b) {
            super.setAutoSizeTextTypeWithDefaults(i2);
            return;
        }
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            c1199y0.j(i2);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1120B c1120b = this.f17657b;
        if (c1120b != null) {
            c1120b.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C1120B c1120b = this.f17657b;
        if (c1120b != null) {
            c1120b.f(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(S.A.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z6) {
        getEmojiTextViewHelper().c(z6);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().f17739b.getFilters(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z6) {
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            c1199y0.f18056a.setAllCaps(z6);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C1120B c1120b = this.f17657b;
        if (c1120b != null) {
            c1120b.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1120B c1120b = this.f17657b;
        if (c1120b != null) {
            c1120b.i(mode);
        }
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C1199y0 c1199y0 = this.f17658e;
        c1199y0.k(colorStateList);
        c1199y0.b();
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C1199y0 c1199y0 = this.f17658e;
        c1199y0.l(mode);
        c1199y0.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 != null) {
            c1199y0.g(context, i2);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f3) {
        boolean z6 = z2.f18070b;
        if (z6) {
            super.setTextSize(i2, f3);
            return;
        }
        C1199y0 c1199y0 = this.f17658e;
        if (c1199y0 == null || z6) {
            return;
        }
        I0 i02 = c1199y0.f18064i;
        if (i02.f()) {
            return;
        }
        i02.g(f3, i2);
    }

    public C1121C(Context context, AttributeSet attributeSet, int i2) {
        super(b2.wrap(context), attributeSet, i2);
        a2.checkAppCompatTheme(this, getContext());
        C1120B c1120b = new C1120B(this);
        this.f17657b = c1120b;
        c1120b.d(attributeSet, i2);
        C1199y0 c1199y0 = new C1199y0(this);
        this.f17658e = c1199y0;
        c1199y0.f(attributeSet, i2);
        c1199y0.b();
        getEmojiTextViewHelper().a(attributeSet, i2);
    }
}
