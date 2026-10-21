package K3;

import B4.ViewOnClickListenerC0038a;
import M.AbstractC0181p0;
import a.AbstractC0373c;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import g3.AbstractC0951a;

/* loaded from: classes2.dex */
public final class l extends r {

    /* renamed from: e, reason: collision with root package name */
    public final int f1681e;

    /* renamed from: f, reason: collision with root package name */
    public final int f1682f;

    /* renamed from: g, reason: collision with root package name */
    public final TimeInterpolator f1683g;

    /* renamed from: h, reason: collision with root package name */
    public AutoCompleteTextView f1684h;

    /* renamed from: i, reason: collision with root package name */
    public final ViewOnClickListenerC0038a f1685i;

    /* renamed from: j, reason: collision with root package name */
    public final A4.g f1686j;

    /* renamed from: k, reason: collision with root package name */
    public final A0.a f1687k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f1688l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1689m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1690n;

    /* renamed from: o, reason: collision with root package name */
    public long f1691o;

    /* renamed from: p, reason: collision with root package name */
    public AccessibilityManager f1692p;

    /* renamed from: q, reason: collision with root package name */
    public ValueAnimator f1693q;

    /* renamed from: r, reason: collision with root package name */
    public ValueAnimator f1694r;

    public l(q qVar) {
        super(qVar);
        this.f1685i = new ViewOnClickListenerC0038a(this, 4);
        this.f1686j = new A4.g(this, 5);
        this.f1687k = new A0.a(this, 6);
        this.f1691o = Long.MAX_VALUE;
        this.f1682f = z3.k.resolveThemeDuration(qVar.getContext(), R.attr.motionDurationShort3, 67);
        this.f1681e = z3.k.resolveThemeDuration(qVar.getContext(), R.attr.motionDurationShort3, 50);
        this.f1683g = z3.k.resolveThemeInterpolator(qVar.getContext(), R.attr.motionEasingLinearInterpolator, AbstractC0951a.f16460a);
    }

    @Override // K3.r
    public void afterEditTextChanged(Editable editable) {
        if (this.f1692p.isTouchExplorationEnabled() && AbstractC0373c.c(this.f1684h) && !this.f1727d.hasFocus()) {
            this.f1684h.dismissDropDown();
        }
        this.f1684h.post(new A3.d(this, 9));
    }

    @Override // K3.r
    public final int b() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // K3.r
    public final int c() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // K3.r
    public final View.OnFocusChangeListener d() {
        return this.f1686j;
    }

    @Override // K3.r
    public final View.OnClickListener e() {
        return this.f1685i;
    }

    @Override // K3.r
    public final boolean g(int i2) {
        return i2 != 0;
    }

    @Override // K3.r
    public N.c getTouchExplorationStateChangeListener() {
        return this.f1687k;
    }

    @Override // K3.r
    public final boolean h() {
        return this.f1688l;
    }

    @Override // K3.r
    public final boolean j() {
        return this.f1690n;
    }

    @Override // K3.r
    public final void m() {
        int i2 = 3;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f1683g;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(this.f1682f);
        ofFloat.addUpdateListener(new A3.a(this, i2));
        this.f1694r = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(this.f1681e);
        ofFloat2.addUpdateListener(new A3.a(this, i2));
        this.f1693q = ofFloat2;
        ofFloat2.addListener(new k(this));
        this.f1692p = (AccessibilityManager) this.f1726c.getSystemService("accessibility");
    }

    @Override // K3.r
    public final void n() {
        AutoCompleteTextView autoCompleteTextView = this.f1684h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.f1684h.setOnDismissListener(null);
        }
    }

    public final void o(boolean z6) {
        if (this.f1690n != z6) {
            this.f1690n = z6;
            this.f1694r.cancel();
            this.f1693q.start();
        }
    }

    @Override // K3.r
    public void onEditTextAttached(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f1684h = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new i(this, 0));
        this.f1684h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: K3.j
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                l lVar = l.this;
                lVar.f1689m = true;
                lVar.f1691o = System.currentTimeMillis();
                lVar.o(false);
            }
        });
        this.f1684h.setThreshold(0);
        TextInputLayout textInputLayout = this.f1724a;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (!AbstractC0373c.c(editText) && this.f1692p.isTouchExplorationEnabled()) {
            AbstractC0181p0.setImportantForAccessibility(this.f1727d, 2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // K3.r
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        if (!AbstractC0373c.c(this.f1684h)) {
            nVar.setClassName(Spinner.class.getName());
        }
        if (nVar.isShowingHintText()) {
            nVar.setHintText(null);
        }
    }

    @Override // K3.r
    @SuppressLint({"WrongConstant"})
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (!this.f1692p.isEnabled() || AbstractC0373c.c(this.f1684h)) {
            return;
        }
        boolean z6 = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f1690n && !this.f1684h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z6) {
            p();
            this.f1689m = true;
            this.f1691o = System.currentTimeMillis();
        }
    }

    public final void p() {
        if (this.f1684h == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f1691o;
        if (currentTimeMillis < 0 || currentTimeMillis > 300) {
            this.f1689m = false;
        }
        if (this.f1689m) {
            this.f1689m = false;
            return;
        }
        o(!this.f1690n);
        if (!this.f1690n) {
            this.f1684h.dismissDropDown();
        } else {
            this.f1684h.requestFocus();
            this.f1684h.showDropDown();
        }
    }
}
