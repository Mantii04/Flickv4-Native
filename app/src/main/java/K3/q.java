package K3;

import M.AbstractC0181p0;
import M.AbstractC0193w;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.leanback.widget.W;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import f.AbstractC0876a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import l.e2;
import x3.T;

/* loaded from: classes2.dex */
public final class q extends LinearLayout {

    /* renamed from: A, reason: collision with root package name */
    public boolean f1702A;

    /* renamed from: B, reason: collision with root package name */
    public EditText f1703B;

    /* renamed from: C, reason: collision with root package name */
    public final AccessibilityManager f1704C;

    /* renamed from: D, reason: collision with root package name */
    public N.c f1705D;

    /* renamed from: E, reason: collision with root package name */
    public final m f1706E;

    /* renamed from: b, reason: collision with root package name */
    public final TextInputLayout f1707b;

    /* renamed from: e, reason: collision with root package name */
    public final FrameLayout f1708e;

    /* renamed from: f, reason: collision with root package name */
    public final CheckableImageButton f1709f;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f1710j;

    /* renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f1711m;

    /* renamed from: n, reason: collision with root package name */
    public View.OnLongClickListener f1712n;

    /* renamed from: p, reason: collision with root package name */
    public final CheckableImageButton f1713p;

    /* renamed from: q, reason: collision with root package name */
    public final p f1714q;

    /* renamed from: r, reason: collision with root package name */
    public int f1715r;

    /* renamed from: s, reason: collision with root package name */
    public final LinkedHashSet f1716s;

    /* renamed from: t, reason: collision with root package name */
    public ColorStateList f1717t;

    /* renamed from: u, reason: collision with root package name */
    public PorterDuff.Mode f1718u;

    /* renamed from: v, reason: collision with root package name */
    public int f1719v;

    /* renamed from: w, reason: collision with root package name */
    public ImageView.ScaleType f1720w;

    /* renamed from: x, reason: collision with root package name */
    public View.OnLongClickListener f1721x;

    /* renamed from: y, reason: collision with root package name */
    public CharSequence f1722y;

    /* renamed from: z, reason: collision with root package name */
    public final AppCompatTextView f1723z;

    public q(TextInputLayout textInputLayout, e2 e2Var) {
        super(textInputLayout.getContext());
        CharSequence text;
        this.f1715r = 0;
        this.f1716s = new LinkedHashSet();
        this.f1706E = new m(this);
        n nVar = new n(this);
        this.f1704C = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f1707b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f1708e = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton a7 = a(this, from, R.id.text_input_error_icon);
        this.f1709f = a7;
        CheckableImageButton a8 = a(frameLayout, from, R.id.text_input_end_icon);
        this.f1713p = a8;
        this.f1714q = new p(this, e2Var);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f1723z = appCompatTextView;
        if (e2Var.hasValue(R.styleable.TextInputLayout_errorIconTint)) {
            this.f1710j = C3.d.getColorStateList(getContext(), e2Var, R.styleable.TextInputLayout_errorIconTint);
        }
        if (e2Var.hasValue(R.styleable.TextInputLayout_errorIconTintMode)) {
            this.f1711m = T.parseTintMode(e2Var.getInt(R.styleable.TextInputLayout_errorIconTintMode, -1), null);
        }
        if (e2Var.hasValue(R.styleable.TextInputLayout_errorIconDrawable)) {
            i(e2Var.getDrawable(R.styleable.TextInputLayout_errorIconDrawable));
        }
        a7.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        AbstractC0181p0.setImportantForAccessibility(a7, 2);
        a7.setClickable(false);
        a7.setPressable(false);
        a7.setFocusable(false);
        if (!e2Var.hasValue(R.styleable.TextInputLayout_passwordToggleEnabled)) {
            if (e2Var.hasValue(R.styleable.TextInputLayout_endIconTint)) {
                this.f1717t = C3.d.getColorStateList(getContext(), e2Var, R.styleable.TextInputLayout_endIconTint);
            }
            if (e2Var.hasValue(R.styleable.TextInputLayout_endIconTintMode)) {
                this.f1718u = T.parseTintMode(e2Var.getInt(R.styleable.TextInputLayout_endIconTintMode, -1), null);
            }
        }
        if (e2Var.hasValue(R.styleable.TextInputLayout_endIconMode)) {
            g(e2Var.getInt(R.styleable.TextInputLayout_endIconMode, 0));
            if (e2Var.hasValue(R.styleable.TextInputLayout_endIconContentDescription) && a8.getContentDescription() != (text = e2Var.getText(R.styleable.TextInputLayout_endIconContentDescription))) {
                a8.setContentDescription(text);
            }
            a8.setCheckable(e2Var.getBoolean(R.styleable.TextInputLayout_endIconCheckable, true));
        } else if (e2Var.hasValue(R.styleable.TextInputLayout_passwordToggleEnabled)) {
            if (e2Var.hasValue(R.styleable.TextInputLayout_passwordToggleTint)) {
                this.f1717t = C3.d.getColorStateList(getContext(), e2Var, R.styleable.TextInputLayout_passwordToggleTint);
            }
            if (e2Var.hasValue(R.styleable.TextInputLayout_passwordToggleTintMode)) {
                this.f1718u = T.parseTintMode(e2Var.getInt(R.styleable.TextInputLayout_passwordToggleTintMode, -1), null);
            }
            g(e2Var.getBoolean(R.styleable.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            CharSequence text2 = e2Var.getText(R.styleable.TextInputLayout_passwordToggleContentDescription);
            if (a8.getContentDescription() != text2) {
                a8.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = e2Var.getDimensionPixelSize(R.styleable.TextInputLayout_endIconMinSize, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f1719v) {
            this.f1719v = dimensionPixelSize;
            a8.setMinimumWidth(dimensionPixelSize);
            a8.setMinimumHeight(dimensionPixelSize);
            a7.setMinimumWidth(dimensionPixelSize);
            a7.setMinimumHeight(dimensionPixelSize);
        }
        if (e2Var.hasValue(R.styleable.TextInputLayout_endIconScaleType)) {
            ImageView.ScaleType b7 = W.b(e2Var.getInt(R.styleable.TextInputLayout_endIconScaleType, -1));
            this.f1720w = b7;
            a8.setScaleType(b7);
            a7.setScaleType(b7);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        AbstractC0181p0.setAccessibilityLiveRegion(appCompatTextView, 1);
        S.A.setTextAppearance(appCompatTextView, e2Var.getResourceId(R.styleable.TextInputLayout_suffixTextAppearance, 0));
        if (e2Var.hasValue(R.styleable.TextInputLayout_suffixTextColor)) {
            appCompatTextView.setTextColor(e2Var.getColorStateList(R.styleable.TextInputLayout_suffixTextColor));
        }
        CharSequence text3 = e2Var.getText(R.styleable.TextInputLayout_suffixText);
        this.f1722y = TextUtils.isEmpty(text3) ? null : text3;
        appCompatTextView.setText(text3);
        n();
        frameLayout.addView(a8);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(a7);
        textInputLayout.addOnEditTextAttachedListener(nVar);
        addOnAttachStateChangeListener(new o(this));
    }

    public final CheckableImageButton a(ViewGroup viewGroup, LayoutInflater layoutInflater, int i2) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i2);
        if (C3.d.isFontScaleAtLeast1_3(getContext())) {
            AbstractC0193w.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    public final r b() {
        r c0139e;
        int i2 = this.f1715r;
        p pVar = this.f1714q;
        SparseArray sparseArray = pVar.f1698a;
        r rVar = (r) sparseArray.get(i2);
        if (rVar != null) {
            return rVar;
        }
        q qVar = pVar.f1699b;
        if (i2 == -1) {
            c0139e = new C0139e(qVar, 0);
        } else if (i2 == 0) {
            c0139e = new C0139e(qVar, 1);
        } else if (i2 == 1) {
            c0139e = new y(qVar, pVar.f1701d);
        } else if (i2 == 2) {
            c0139e = new C0138d(qVar);
        } else {
            if (i2 != 3) {
                throw new IllegalArgumentException(A.i.f(i2, "Invalid end icon mode: "));
            }
            c0139e = new l(qVar);
        }
        sparseArray.append(i2, c0139e);
        return c0139e;
    }

    public final int c() {
        int marginStart;
        if (d() || e()) {
            CheckableImageButton checkableImageButton = this.f1713p;
            marginStart = AbstractC0193w.getMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()) + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        return AbstractC0181p0.getPaddingEnd(this.f1723z) + AbstractC0181p0.getPaddingEnd(this) + marginStart;
    }

    public final boolean d() {
        return this.f1708e.getVisibility() == 0 && this.f1713p.getVisibility() == 0;
    }

    public final boolean e() {
        return this.f1709f.getVisibility() == 0;
    }

    public final void f(boolean z6) {
        boolean z7;
        boolean isActivated;
        boolean isChecked;
        r b7 = b();
        boolean i2 = b7.i();
        CheckableImageButton checkableImageButton = this.f1713p;
        boolean z8 = true;
        if (!i2 || (isChecked = checkableImageButton.isChecked()) == b7.j()) {
            z7 = false;
        } else {
            checkableImageButton.setChecked(!isChecked);
            z7 = true;
        }
        if (!(b7 instanceof l) || (isActivated = checkableImageButton.isActivated()) == b7.h()) {
            z8 = z7;
        } else {
            checkableImageButton.setActivated(!isActivated);
        }
        if (z6 || z8) {
            W.g(this.f1707b, checkableImageButton, this.f1717t);
        }
    }

    public final void g(int i2) {
        if (this.f1715r == i2) {
            return;
        }
        r b7 = b();
        N.c cVar = this.f1705D;
        AccessibilityManager accessibilityManager = this.f1704C;
        if (cVar != null && accessibilityManager != null) {
            N.e.removeTouchExplorationStateChangeListener(accessibilityManager, cVar);
        }
        this.f1705D = null;
        b7.n();
        this.f1715r = i2;
        Iterator it = this.f1716s.iterator();
        if (it.hasNext()) {
            throw b.c.g(it);
        }
        h(i2 != 0);
        r b8 = b();
        int i7 = this.f1714q.f1700c;
        if (i7 == 0) {
            i7 = b8.c();
        }
        Drawable drawable = i7 != 0 ? AbstractC0876a.getDrawable(getContext(), i7) : null;
        CheckableImageButton checkableImageButton = this.f1713p;
        checkableImageButton.setImageDrawable(drawable);
        TextInputLayout textInputLayout = this.f1707b;
        if (drawable != null) {
            W.a(textInputLayout, checkableImageButton, this.f1717t, this.f1718u);
            W.g(textInputLayout, checkableImageButton, this.f1717t);
        }
        int b9 = b8.b();
        CharSequence text = b9 != 0 ? getResources().getText(b9) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(b8.i());
        if (!b8.g(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i2);
        }
        b8.m();
        N.c touchExplorationStateChangeListener = b8.getTouchExplorationStateChangeListener();
        this.f1705D = touchExplorationStateChangeListener;
        if (touchExplorationStateChangeListener != null && accessibilityManager != null && AbstractC0181p0.isAttachedToWindow(this)) {
            N.e.addTouchExplorationStateChangeListener(accessibilityManager, this.f1705D);
        }
        View.OnClickListener e3 = b8.e();
        View.OnLongClickListener onLongClickListener = this.f1721x;
        checkableImageButton.setOnClickListener(e3);
        W.h(checkableImageButton, onLongClickListener);
        EditText editText = this.f1703B;
        if (editText != null) {
            b8.onEditTextAttached(editText);
            j(b8);
        }
        W.a(textInputLayout, checkableImageButton, this.f1717t, this.f1718u);
        f(true);
    }

    public final void h(boolean z6) {
        if (d() != z6) {
            this.f1713p.setVisibility(z6 ? 0 : 8);
            k();
            m();
            this.f1707b.q();
        }
    }

    public final void i(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f1709f;
        checkableImageButton.setImageDrawable(drawable);
        l();
        W.a(this.f1707b, checkableImageButton, this.f1710j, this.f1711m);
    }

    public final void j(r rVar) {
        if (this.f1703B == null) {
            return;
        }
        if (rVar.d() != null) {
            this.f1703B.setOnFocusChangeListener(rVar.d());
        }
        if (rVar.f() != null) {
            this.f1713p.setOnFocusChangeListener(rVar.f());
        }
    }

    public final void k() {
        this.f1708e.setVisibility((this.f1713p.getVisibility() != 0 || e()) ? 8 : 0);
        setVisibility((d() || e() || !((this.f1722y == null || this.f1702A) ? 8 : false)) ? 0 : 8);
    }

    public final void l() {
        CheckableImageButton checkableImageButton = this.f1709f;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.f1707b;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.isErrorEnabled() && textInputLayout.m()) ? 0 : 8);
        k();
        m();
        if (this.f1715r != 0) {
            return;
        }
        textInputLayout.q();
    }

    public final void m() {
        TextInputLayout textInputLayout = this.f1707b;
        if (textInputLayout.f12907j == null) {
            return;
        }
        AbstractC0181p0.setPaddingRelative(this.f1723z, getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), textInputLayout.f12907j.getPaddingTop(), (d() || e()) ? 0 : AbstractC0181p0.getPaddingEnd(textInputLayout.f12907j), textInputLayout.f12907j.getPaddingBottom());
    }

    public final void n() {
        AppCompatTextView appCompatTextView = this.f1723z;
        int visibility = appCompatTextView.getVisibility();
        int i2 = (this.f1722y == null || this.f1702A) ? 8 : 0;
        if (visibility != i2) {
            b().k(i2 == 0);
        }
        k();
        appCompatTextView.setVisibility(i2);
        this.f1707b.q();
    }
}
