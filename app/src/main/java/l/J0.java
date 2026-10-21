package l;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* loaded from: classes.dex */
public final class J0 extends ToggleButton implements S.D {

    /* renamed from: b, reason: collision with root package name */
    public final C1120B f17724b;

    /* renamed from: e, reason: collision with root package name */
    public final C1199y0 f17725e;

    /* renamed from: f, reason: collision with root package name */
    public M f17726f;

    public J0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyleToggle);
    }

    private M getEmojiTextViewHelper() {
        if (this.f17726f == null) {
            this.f17726f = new M(this);
        }
        return this.f17726f;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1120B c1120b = this.f17724b;
        if (c1120b != null) {
            c1120b.a();
        }
        C1199y0 c1199y0 = this.f17725e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1120B c1120b = this.f17724b;
        if (c1120b != null) {
            return c1120b.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1120B c1120b = this.f17724b;
        if (c1120b != null) {
            return c1120b.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17725e.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17725e.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z6) {
        super.setAllCaps(z6);
        getEmojiTextViewHelper().b(z6);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1120B c1120b = this.f17724b;
        if (c1120b != null) {
            c1120b.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C1120B c1120b = this.f17724b;
        if (c1120b != null) {
            c1120b.f(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17725e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17725e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z6) {
        getEmojiTextViewHelper().c(z6);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().f17739b.getFilters(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C1120B c1120b = this.f17724b;
        if (c1120b != null) {
            c1120b.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1120B c1120b = this.f17724b;
        if (c1120b != null) {
            c1120b.i(mode);
        }
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C1199y0 c1199y0 = this.f17725e;
        c1199y0.k(colorStateList);
        c1199y0.b();
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C1199y0 c1199y0 = this.f17725e;
        c1199y0.l(mode);
        c1199y0.b();
    }

    public J0(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a2.checkAppCompatTheme(this, getContext());
        C1120B c1120b = new C1120B(this);
        this.f17724b = c1120b;
        c1120b.d(attributeSet, i2);
        C1199y0 c1199y0 = new C1199y0(this);
        this.f17725e = c1199y0;
        c1199y0.f(attributeSet, i2);
        getEmojiTextViewHelper().a(attributeSet, i2);
    }
}
