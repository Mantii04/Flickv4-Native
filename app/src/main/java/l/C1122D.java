package l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.R;
import f.AbstractC0876a;

/* renamed from: l.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1122D extends CheckBox implements S.C, S.D {

    /* renamed from: b, reason: collision with root package name */
    public final C1125G f17660b;

    /* renamed from: e, reason: collision with root package name */
    public final C1120B f17661e;

    /* renamed from: f, reason: collision with root package name */
    public final C1199y0 f17662f;

    /* renamed from: j, reason: collision with root package name */
    public M f17663j;

    public C1122D(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    private M getEmojiTextViewHelper() {
        if (this.f17663j == null) {
            this.f17663j = new M(this);
        }
        return this.f17663j;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1120B c1120b = this.f17661e;
        if (c1120b != null) {
            c1120b.a();
        }
        C1199y0 c1199y0 = this.f17662f;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C1125G c1125g = this.f17660b;
        if (c1125g != null) {
            c1125g.getClass();
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1120B c1120b = this.f17661e;
        if (c1120b != null) {
            return c1120b.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1120B c1120b = this.f17661e;
        if (c1120b != null) {
            return c1120b.c();
        }
        return null;
    }

    @Override // S.C
    public ColorStateList getSupportButtonTintList() {
        C1125G c1125g = this.f17660b;
        if (c1125g != null) {
            return c1125g.f17694b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C1125G c1125g = this.f17660b;
        if (c1125g != null) {
            return c1125g.f17695c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17662f.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17662f.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z6) {
        super.setAllCaps(z6);
        getEmojiTextViewHelper().b(z6);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1120B c1120b = this.f17661e;
        if (c1120b != null) {
            c1120b.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C1120B c1120b = this.f17661e;
        if (c1120b != null) {
            c1120b.f(i2);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C1125G c1125g = this.f17660b;
        if (c1125g != null) {
            if (c1125g.f17698f) {
                c1125g.f17698f = false;
            } else {
                c1125g.f17698f = true;
                c1125g.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17662f;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17662f;
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
        C1120B c1120b = this.f17661e;
        if (c1120b != null) {
            c1120b.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1120B c1120b = this.f17661e;
        if (c1120b != null) {
            c1120b.i(mode);
        }
    }

    @Override // S.C
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C1125G c1125g = this.f17660b;
        if (c1125g != null) {
            c1125g.f17694b = colorStateList;
            c1125g.f17696d = true;
            c1125g.a();
        }
    }

    @Override // S.C
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C1125G c1125g = this.f17660b;
        if (c1125g != null) {
            c1125g.f17695c = mode;
            c1125g.f17697e = true;
            c1125g.a();
        }
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C1199y0 c1199y0 = this.f17662f;
        c1199y0.k(colorStateList);
        c1199y0.b();
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C1199y0 c1199y0 = this.f17662f;
        c1199y0.l(mode);
        c1199y0.b();
    }

    public C1122D(Context context, AttributeSet attributeSet, int i2) {
        super(b2.wrap(context), attributeSet, i2);
        a2.checkAppCompatTheme(this, getContext());
        C1125G c1125g = new C1125G(this);
        this.f17660b = c1125g;
        c1125g.b(attributeSet, i2);
        C1120B c1120b = new C1120B(this);
        this.f17661e = c1120b;
        c1120b.d(attributeSet, i2);
        C1199y0 c1199y0 = new C1199y0(this);
        this.f17662f = c1199y0;
        c1199y0.f(attributeSet, i2);
        getEmojiTextViewHelper().a(attributeSet, i2);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i2) {
        setButtonDrawable(AbstractC0876a.getDrawable(getContext(), i2));
    }
}
