package l;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import f.AbstractC0876a;

/* loaded from: classes.dex */
public final class Q extends MultiAutoCompleteTextView implements S.D {

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f17761j = {R.attr.popupBackground};

    /* renamed from: b, reason: collision with root package name */
    public final C1120B f17762b;

    /* renamed from: e, reason: collision with root package name */
    public final C1199y0 f17763e;

    /* renamed from: f, reason: collision with root package name */
    public final L f17764f;

    public Q(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.autoCompleteTextViewStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1120B c1120b = this.f17762b;
        if (c1120b != null) {
            c1120b.a();
        }
        C1199y0 c1199y0 = this.f17763e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1120B c1120b = this.f17762b;
        if (c1120b != null) {
            return c1120b.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1120B c1120b = this.f17762b;
        if (c1120b != null) {
            return c1120b.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17763e.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17763e.e();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        androidx.leanback.widget.W.f(onCreateInputConnection, editorInfo, this);
        return this.f17764f.f17736b.onCreateInputConnection(onCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1120B c1120b = this.f17762b;
        if (c1120b != null) {
            c1120b.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C1120B c1120b = this.f17762b;
        if (c1120b != null) {
            c1120b.f(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17763e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f17763e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i2) {
        setDropDownBackgroundDrawable(AbstractC0876a.getDrawable(getContext(), i2));
    }

    public void setEmojiCompatEnabled(boolean z6) {
        this.f17764f.f17736b.setEnabled(z6);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f17764f.a(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C1120B c1120b = this.f17762b;
        if (c1120b != null) {
            c1120b.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1120B c1120b = this.f17762b;
        if (c1120b != null) {
            c1120b.i(mode);
        }
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C1199y0 c1199y0 = this.f17763e;
        c1199y0.k(colorStateList);
        c1199y0.b();
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C1199y0 c1199y0 = this.f17763e;
        c1199y0.l(mode);
        c1199y0.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C1199y0 c1199y0 = this.f17763e;
        if (c1199y0 != null) {
            c1199y0.g(context, i2);
        }
    }

    public Q(Context context, AttributeSet attributeSet, int i2) {
        super(b2.wrap(context), attributeSet, i2);
        a2.checkAppCompatTheme(this, getContext());
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(getContext(), attributeSet, f17761j, i2, 0);
        if (obtainStyledAttributes.hasValue(0)) {
            setDropDownBackgroundDrawable(obtainStyledAttributes.getDrawable(0));
        }
        obtainStyledAttributes.recycle();
        C1120B c1120b = new C1120B(this);
        this.f17762b = c1120b;
        c1120b.d(attributeSet, i2);
        C1199y0 c1199y0 = new C1199y0(this);
        this.f17763e = c1199y0;
        c1199y0.f(attributeSet, i2);
        c1199y0.b();
        L l7 = new L(this);
        this.f17764f = l7;
        l7.b(attributeSet, i2);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean isFocusable = isFocusable();
        boolean isClickable = isClickable();
        boolean isLongClickable = isLongClickable();
        int inputType = getInputType();
        KeyListener a7 = l7.a(keyListener);
        if (a7 == keyListener) {
            return;
        }
        super.setKeyListener(a7);
        setRawInputType(inputType);
        setFocusable(isFocusable);
        setClickable(isClickable);
        setLongClickable(isLongClickable);
    }
}
