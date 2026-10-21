package K3;

import M.AbstractC0181p0;
import M.AbstractC0193w;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.leanback.widget.W;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import l.e2;
import x3.T;

/* loaded from: classes2.dex */
public final class z extends LinearLayout {

    /* renamed from: b, reason: collision with root package name */
    public final TextInputLayout f1777b;

    /* renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f1778e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f1779f;

    /* renamed from: j, reason: collision with root package name */
    public final CheckableImageButton f1780j;

    /* renamed from: m, reason: collision with root package name */
    public ColorStateList f1781m;

    /* renamed from: n, reason: collision with root package name */
    public PorterDuff.Mode f1782n;

    /* renamed from: p, reason: collision with root package name */
    public int f1783p;

    /* renamed from: q, reason: collision with root package name */
    public ImageView.ScaleType f1784q;

    /* renamed from: r, reason: collision with root package name */
    public View.OnLongClickListener f1785r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f1786s;

    public z(TextInputLayout textInputLayout, e2 e2Var) {
        super(textInputLayout.getContext());
        CharSequence text;
        this.f1777b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f1780j = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f1778e = appCompatTextView;
        if (C3.d.isFontScaleAtLeast1_3(getContext())) {
            AbstractC0193w.setMarginEnd((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        View.OnLongClickListener onLongClickListener = this.f1785r;
        checkableImageButton.setOnClickListener(null);
        W.h(checkableImageButton, onLongClickListener);
        this.f1785r = null;
        checkableImageButton.setOnLongClickListener(null);
        W.h(checkableImageButton, null);
        if (e2Var.hasValue(R.styleable.TextInputLayout_startIconTint)) {
            this.f1781m = C3.d.getColorStateList(getContext(), e2Var, R.styleable.TextInputLayout_startIconTint);
        }
        if (e2Var.hasValue(R.styleable.TextInputLayout_startIconTintMode)) {
            this.f1782n = T.parseTintMode(e2Var.getInt(R.styleable.TextInputLayout_startIconTintMode, -1), null);
        }
        if (e2Var.hasValue(R.styleable.TextInputLayout_startIconDrawable)) {
            b(e2Var.getDrawable(R.styleable.TextInputLayout_startIconDrawable));
            if (e2Var.hasValue(R.styleable.TextInputLayout_startIconContentDescription) && checkableImageButton.getContentDescription() != (text = e2Var.getText(R.styleable.TextInputLayout_startIconContentDescription))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(e2Var.getBoolean(R.styleable.TextInputLayout_startIconCheckable, true));
        }
        int dimensionPixelSize = e2Var.getDimensionPixelSize(R.styleable.TextInputLayout_startIconMinSize, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f1783p) {
            this.f1783p = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (e2Var.hasValue(R.styleable.TextInputLayout_startIconScaleType)) {
            ImageView.ScaleType b7 = W.b(e2Var.getInt(R.styleable.TextInputLayout_startIconScaleType, -1));
            this.f1784q = b7;
            checkableImageButton.setScaleType(b7);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        AbstractC0181p0.setAccessibilityLiveRegion(appCompatTextView, 1);
        S.A.setTextAppearance(appCompatTextView, e2Var.getResourceId(R.styleable.TextInputLayout_prefixTextAppearance, 0));
        if (e2Var.hasValue(R.styleable.TextInputLayout_prefixTextColor)) {
            appCompatTextView.setTextColor(e2Var.getColorStateList(R.styleable.TextInputLayout_prefixTextColor));
        }
        CharSequence text2 = e2Var.getText(R.styleable.TextInputLayout_prefixText);
        this.f1779f = TextUtils.isEmpty(text2) ? null : text2;
        appCompatTextView.setText(text2);
        e();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    public final int a() {
        int i2;
        CheckableImageButton checkableImageButton = this.f1780j;
        if (checkableImageButton.getVisibility() == 0) {
            i2 = AbstractC0193w.getMarginEnd((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()) + checkableImageButton.getMeasuredWidth();
        } else {
            i2 = 0;
        }
        return AbstractC0181p0.getPaddingStart(this.f1778e) + AbstractC0181p0.getPaddingStart(this) + i2;
    }

    public final void b(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f1780j;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f1781m;
            PorterDuff.Mode mode = this.f1782n;
            TextInputLayout textInputLayout = this.f1777b;
            W.a(textInputLayout, checkableImageButton, colorStateList, mode);
            c(true);
            W.g(textInputLayout, checkableImageButton, this.f1781m);
            return;
        }
        c(false);
        View.OnLongClickListener onLongClickListener = this.f1785r;
        checkableImageButton.setOnClickListener(null);
        W.h(checkableImageButton, onLongClickListener);
        this.f1785r = null;
        checkableImageButton.setOnLongClickListener(null);
        W.h(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    public final void c(boolean z6) {
        CheckableImageButton checkableImageButton = this.f1780j;
        if ((checkableImageButton.getVisibility() == 0) != z6) {
            checkableImageButton.setVisibility(z6 ? 0 : 8);
            d();
            e();
        }
    }

    public final void d() {
        EditText editText = this.f1777b.f12907j;
        if (editText == null) {
            return;
        }
        AbstractC0181p0.setPaddingRelative(this.f1778e, this.f1780j.getVisibility() == 0 ? 0 : AbstractC0181p0.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    public final void e() {
        int i2 = (this.f1779f == null || this.f1786s) ? 8 : 0;
        setVisibility((this.f1780j.getVisibility() == 0 || i2 == 0) ? 0 : 8);
        this.f1778e.setVisibility(i2);
        this.f1777b.q();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        d();
    }
}
