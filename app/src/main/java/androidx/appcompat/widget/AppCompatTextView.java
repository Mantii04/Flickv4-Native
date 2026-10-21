package androidx.appcompat.widget;

import K.h;
import K.i;
import S.A;
import S.D;
import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.leanback.widget.W;
import f.AbstractC0876a;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import l.A0;
import l.B0;
import l.C1120B;
import l.C1176q0;
import l.C1199y0;
import l.I0;
import l.InterfaceC1202z0;
import l.M;
import l.a2;
import l.b2;
import l.z2;

/* loaded from: classes.dex */
public class AppCompatTextView extends TextView implements D {

    /* renamed from: b, reason: collision with root package name */
    public final C1120B f5028b;

    /* renamed from: e, reason: collision with root package name */
    public final C1199y0 f5029e;

    /* renamed from: f, reason: collision with root package name */
    public final C1176q0 f5030f;

    /* renamed from: j, reason: collision with root package name */
    public M f5031j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5032m;

    /* renamed from: n, reason: collision with root package name */
    public A0 f5033n;

    /* renamed from: p, reason: collision with root package name */
    public Future f5034p;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    private M getEmojiTextViewHelper() {
        if (this.f5031j == null) {
            this.f5031j = new M(this);
        }
        return this.f5031j;
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1120B c1120b = this.f5028b;
        if (c1120b != null) {
            c1120b.a();
        }
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (z2.f18070b) {
            return ((A0) getSuperCaller()).getAutoSizeMaxTextSize();
        }
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            return Math.round(c1199y0.f18064i.f17715e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (z2.f18070b) {
            return ((A0) getSuperCaller()).getAutoSizeMinTextSize();
        }
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            return Math.round(c1199y0.f18064i.f17714d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (z2.f18070b) {
            return ((A0) getSuperCaller()).getAutoSizeStepGranularity();
        }
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            return Math.round(c1199y0.f18064i.f17713c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (z2.f18070b) {
            return ((A0) getSuperCaller()).getAutoSizeTextAvailableSizes();
        }
        C1199y0 c1199y0 = this.f5029e;
        return c1199y0 != null ? c1199y0.f18064i.f17716f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (z2.f18070b) {
            return ((A0) getSuperCaller()).getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            return c1199y0.f18064i.f17711a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return A.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return A.getFirstBaselineToTopHeight(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return A.getLastBaselineToBottomHeight(this);
    }

    public InterfaceC1202z0 getSuperCaller() {
        if (this.f5033n == null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                this.f5033n = new B0(this);
            } else if (i2 >= 26) {
                this.f5033n = new A0(this);
            }
        }
        return this.f5033n;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1120B c1120b = this.f5028b;
        if (c1120b != null) {
            return c1120b.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1120B c1120b = this.f5028b;
        if (c1120b != null) {
            return c1120b.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f5029e.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f5029e.e();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C1176q0 c1176q0;
        return (Build.VERSION.SDK_INT >= 28 || (c1176q0 = this.f5030f) == null) ? ((A0) getSuperCaller()).getTextClassifier() : c1176q0.getTextClassifier();
    }

    public h getTextMetricsParamsCompat() {
        return A.getTextMetricsParams(this);
    }

    public final void m() {
        Future future = this.f5034p;
        if (future != null) {
            try {
                this.f5034p = null;
                if (future.get() != null) {
                    throw new ClassCastException();
                }
                A.setPrecomputedText(this, null);
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f5029e.getClass();
        if (Build.VERSION.SDK_INT < 30 && onCreateInputConnection != null) {
            R.c.setInitialSurroundingText(editorInfo, getText());
        }
        W.f(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 == null || z2.f18070b) {
            return;
        }
        c1199y0.f18064i.a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i7) {
        m();
        super.onMeasure(i2, i7);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        super.onTextChanged(charSequence, i2, i7, i8);
        C1199y0 c1199y0 = this.f5029e;
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
            ((A0) getSuperCaller()).setAutoSizeTextTypeUniformWithConfiguration(i2, i7, i8, i9);
            return;
        }
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.h(i2, i7, i8, i9);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i2) throws IllegalArgumentException {
        if (z2.f18070b) {
            ((A0) getSuperCaller()).setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
            return;
        }
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.i(iArr, i2);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i2) {
        if (z2.f18070b) {
            ((A0) getSuperCaller()).setAutoSizeTextTypeWithDefaults(i2);
            return;
        }
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.j(i2);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1120B c1120b = this.f5028b;
        if (c1120b != null) {
            c1120b.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C1120B c1120b = this.f5028b;
        if (c1120b != null) {
            c1120b.f(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(A.wrapCustomSelectionActionModeCallback(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z6) {
        getEmojiTextViewHelper().c(z6);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().f17739b.getFilters(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().setFirstBaselineToTopHeight(i2);
        } else {
            A.setFirstBaselineToTopHeight(this, i2);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().setLastBaselineToBottomHeight(i2);
        } else {
            A.setLastBaselineToBottomHeight(this, i2);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i2) {
        A.setLineHeight(this, i2);
    }

    public void setPrecomputedText(i iVar) {
        A.setPrecomputedText(this, iVar);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C1120B c1120b = this.f5028b;
        if (c1120b != null) {
            c1120b.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1120B c1120b = this.f5028b;
        if (c1120b != null) {
            c1120b.i(mode);
        }
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C1199y0 c1199y0 = this.f5029e;
        c1199y0.k(colorStateList);
        c1199y0.b();
    }

    @Override // S.D
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C1199y0 c1199y0 = this.f5029e;
        c1199y0.l(mode);
        c1199y0.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.g(context, i2);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C1176q0 c1176q0;
        if (Build.VERSION.SDK_INT >= 28 || (c1176q0 = this.f5030f) == null) {
            ((A0) getSuperCaller()).setTextClassifier(textClassifier);
        } else {
            c1176q0.setTextClassifier(textClassifier);
        }
    }

    public void setTextFuture(Future<i> future) {
        this.f5034p = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(h hVar) {
        A.setTextMetricsParams(this, hVar);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f3) {
        boolean z6 = z2.f18070b;
        if (z6) {
            super.setTextSize(i2, f3);
            return;
        }
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 == null || z6) {
            return;
        }
        I0 i02 = c1199y0.f18064i;
        if (i02.f()) {
            return;
        }
        i02.g(f3, i2);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i2) {
        if (this.f5032m) {
            return;
        }
        Typeface create = (typeface == null || i2 <= 0) ? null : D.i.create(getContext(), typeface, i2);
        this.f5032m = true;
        if (create != null) {
            typeface = create;
        }
        try {
            super.setTypeface(typeface, i2);
        } finally {
            this.f5032m = false;
        }
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i2) {
        super(b2.wrap(context), attributeSet, i2);
        this.f5032m = false;
        this.f5033n = null;
        a2.checkAppCompatTheme(this, getContext());
        C1120B c1120b = new C1120B(this);
        this.f5028b = c1120b;
        c1120b.d(attributeSet, i2);
        C1199y0 c1199y0 = new C1199y0(this);
        this.f5029e = c1199y0;
        c1199y0.f(attributeSet, i2);
        c1199y0.b();
        this.f5030f = new C1176q0(this);
        getEmojiTextViewHelper().a(attributeSet, i2);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i7, int i8, int i9) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i2 != 0 ? AbstractC0876a.getDrawable(context, i2) : null, i7 != 0 ? AbstractC0876a.getDrawable(context, i7) : null, i8 != 0 ? AbstractC0876a.getDrawable(context, i8) : null, i9 != 0 ? AbstractC0876a.getDrawable(context, i9) : null);
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i7, int i8, int i9) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i2 != 0 ? AbstractC0876a.getDrawable(context, i2) : null, i7 != 0 ? AbstractC0876a.getDrawable(context, i7) : null, i8 != 0 ? AbstractC0876a.getDrawable(context, i8) : null, i9 != 0 ? AbstractC0876a.getDrawable(context, i9) : null);
        C1199y0 c1199y0 = this.f5029e;
        if (c1199y0 != null) {
            c1199y0.b();
        }
    }
}
