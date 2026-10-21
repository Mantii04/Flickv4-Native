package K3;

import M.AbstractC0181p0;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import g3.AbstractC0951a;
import g3.AbstractC0952b;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class u {

    /* renamed from: A, reason: collision with root package name */
    public ColorStateList f1734A;

    /* renamed from: B, reason: collision with root package name */
    public Typeface f1735B;

    /* renamed from: a, reason: collision with root package name */
    public final int f1736a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1737b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1738c;

    /* renamed from: d, reason: collision with root package name */
    public final TimeInterpolator f1739d;

    /* renamed from: e, reason: collision with root package name */
    public final TimeInterpolator f1740e;

    /* renamed from: f, reason: collision with root package name */
    public final TimeInterpolator f1741f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f1742g;

    /* renamed from: h, reason: collision with root package name */
    public final TextInputLayout f1743h;

    /* renamed from: i, reason: collision with root package name */
    public LinearLayout f1744i;

    /* renamed from: j, reason: collision with root package name */
    public int f1745j;

    /* renamed from: k, reason: collision with root package name */
    public FrameLayout f1746k;

    /* renamed from: l, reason: collision with root package name */
    public AnimatorSet f1747l;

    /* renamed from: m, reason: collision with root package name */
    public final float f1748m;

    /* renamed from: n, reason: collision with root package name */
    public int f1749n;

    /* renamed from: o, reason: collision with root package name */
    public int f1750o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f1751p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f1752q;

    /* renamed from: r, reason: collision with root package name */
    public AppCompatTextView f1753r;

    /* renamed from: s, reason: collision with root package name */
    public CharSequence f1754s;

    /* renamed from: t, reason: collision with root package name */
    public int f1755t;

    /* renamed from: u, reason: collision with root package name */
    public int f1756u;

    /* renamed from: v, reason: collision with root package name */
    public ColorStateList f1757v;

    /* renamed from: w, reason: collision with root package name */
    public CharSequence f1758w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1759x;

    /* renamed from: y, reason: collision with root package name */
    public AppCompatTextView f1760y;

    /* renamed from: z, reason: collision with root package name */
    public int f1761z;

    public u(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f1742g = context;
        this.f1743h = textInputLayout;
        this.f1748m = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        this.f1736a = z3.k.resolveThemeDuration(context, R.attr.motionDurationShort4, 217);
        this.f1737b = z3.k.resolveThemeDuration(context, R.attr.motionDurationMedium4, 167);
        this.f1738c = z3.k.resolveThemeDuration(context, R.attr.motionDurationShort4, 167);
        this.f1739d = z3.k.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, AbstractC0951a.f16463d);
        int i2 = R.attr.motionEasingEmphasizedDecelerateInterpolator;
        LinearInterpolator linearInterpolator = AbstractC0951a.f16460a;
        this.f1740e = z3.k.resolveThemeInterpolator(context, i2, linearInterpolator);
        this.f1741f = z3.k.resolveThemeInterpolator(context, R.attr.motionEasingLinearInterpolator, linearInterpolator);
    }

    public final void a(AppCompatTextView appCompatTextView, int i2) {
        if (this.f1744i == null && this.f1746k == null) {
            Context context = this.f1742g;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f1744i = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f1744i;
            TextInputLayout textInputLayout = this.f1743h;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f1746k = new FrameLayout(context);
            this.f1744i.addView(this.f1746k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i2 == 0 || i2 == 1) {
            this.f1746k.setVisibility(0);
            this.f1746k.addView(appCompatTextView);
        } else {
            this.f1744i.addView(appCompatTextView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f1744i.setVisibility(0);
        this.f1745j++;
    }

    public final void b() {
        if (this.f1744i != null) {
            TextInputLayout textInputLayout = this.f1743h;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.f1742g;
                boolean isFontScaleAtLeast1_3 = C3.d.isFontScaleAtLeast1_3(context);
                LinearLayout linearLayout = this.f1744i;
                int i2 = R.dimen.material_helper_text_font_1_3_padding_horizontal;
                int paddingStart = AbstractC0181p0.getPaddingStart(editText);
                if (isFontScaleAtLeast1_3) {
                    paddingStart = context.getResources().getDimensionPixelSize(i2);
                }
                int i7 = R.dimen.material_helper_text_font_1_3_padding_top;
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
                if (isFontScaleAtLeast1_3) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(i7);
                }
                int i8 = R.dimen.material_helper_text_font_1_3_padding_horizontal;
                int paddingEnd = AbstractC0181p0.getPaddingEnd(editText);
                if (isFontScaleAtLeast1_3) {
                    paddingEnd = context.getResources().getDimensionPixelSize(i8);
                }
                AbstractC0181p0.setPaddingRelative(linearLayout, paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    public final void c() {
        AnimatorSet animatorSet = this.f1747l;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void d(ArrayList arrayList, boolean z6, AppCompatTextView appCompatTextView, int i2, int i7, int i8) {
        if (appCompatTextView == null || !z6) {
            return;
        }
        if (i2 == i8 || i2 == i7) {
            boolean z7 = i8 == i2;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.ALPHA, z7 ? 1.0f : 0.0f);
            int i9 = this.f1738c;
            ofFloat.setDuration(z7 ? this.f1737b : i9);
            ofFloat.setInterpolator(z7 ? this.f1740e : this.f1741f);
            if (i2 == i8 && i7 != 0) {
                ofFloat.setStartDelay(i9);
            }
            arrayList.add(ofFloat);
            if (i8 != i2 || i7 == 0) {
                return;
            }
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.TRANSLATION_Y, -this.f1748m, 0.0f);
            ofFloat2.setDuration(this.f1736a);
            ofFloat2.setInterpolator(this.f1739d);
            ofFloat2.setStartDelay(i9);
            arrayList.add(ofFloat2);
        }
    }

    public final TextView e(int i2) {
        if (i2 == 1) {
            return this.f1753r;
        }
        if (i2 != 2) {
            return null;
        }
        return this.f1760y;
    }

    public final void f() {
        this.f1751p = null;
        c();
        if (this.f1749n == 1) {
            if (!this.f1759x || TextUtils.isEmpty(this.f1758w)) {
                this.f1750o = 0;
            } else {
                this.f1750o = 2;
            }
        }
        i(this.f1749n, this.f1750o, h(this.f1753r, ""));
    }

    public final void g(AppCompatTextView appCompatTextView, int i2) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f1744i;
        if (linearLayout == null) {
            return;
        }
        if ((i2 == 0 || i2 == 1) && (frameLayout = this.f1746k) != null) {
            frameLayout.removeView(appCompatTextView);
        } else {
            linearLayout.removeView(appCompatTextView);
        }
        int i7 = this.f1745j - 1;
        this.f1745j = i7;
        LinearLayout linearLayout2 = this.f1744i;
        if (i7 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean h(AppCompatTextView appCompatTextView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f1743h;
        if (AbstractC0181p0.isLaidOut(textInputLayout) && textInputLayout.isEnabled()) {
            return (this.f1750o == this.f1749n && appCompatTextView != null && TextUtils.equals(appCompatTextView.getText(), charSequence)) ? false : true;
        }
        return false;
    }

    public final void i(int i2, int i7, boolean z6) {
        TextView e3;
        TextView e7;
        if (i2 == i7) {
            return;
        }
        if (z6) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f1747l = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.f1759x, this.f1760y, 2, i2, i7);
            d(arrayList, this.f1752q, this.f1753r, 1, i2, i7);
            AbstractC0952b.playTogether(animatorSet, arrayList);
            animatorSet.addListener(new s(this, i7, e(i2), i2, e(i7)));
            animatorSet.start();
        } else if (i2 != i7) {
            if (i7 != 0 && (e7 = e(i7)) != null) {
                e7.setVisibility(0);
                e7.setAlpha(1.0f);
            }
            if (i2 != 0 && (e3 = e(i2)) != null) {
                e3.setVisibility(4);
                if (i2 == 1) {
                    e3.setText((CharSequence) null);
                }
            }
            this.f1749n = i7;
        }
        TextInputLayout textInputLayout = this.f1743h;
        textInputLayout.r();
        textInputLayout.u(z6, false);
        textInputLayout.x();
    }
}
