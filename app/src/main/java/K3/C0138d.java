package K3;

import B4.ViewOnClickListenerC0038a;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import g3.AbstractC0951a;

/* renamed from: K3.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0138d extends r {

    /* renamed from: e, reason: collision with root package name */
    public final int f1664e;

    /* renamed from: f, reason: collision with root package name */
    public final int f1665f;

    /* renamed from: g, reason: collision with root package name */
    public final TimeInterpolator f1666g;

    /* renamed from: h, reason: collision with root package name */
    public final TimeInterpolator f1667h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f1668i;

    /* renamed from: j, reason: collision with root package name */
    public final ViewOnClickListenerC0038a f1669j;

    /* renamed from: k, reason: collision with root package name */
    public final A4.g f1670k;

    /* renamed from: l, reason: collision with root package name */
    public AnimatorSet f1671l;

    /* renamed from: m, reason: collision with root package name */
    public ValueAnimator f1672m;

    public C0138d(q qVar) {
        super(qVar);
        this.f1669j = new ViewOnClickListenerC0038a(this, 3);
        this.f1670k = new A4.g(this, 4);
        this.f1664e = z3.k.resolveThemeDuration(qVar.getContext(), R.attr.motionDurationShort3, 100);
        this.f1665f = z3.k.resolveThemeDuration(qVar.getContext(), R.attr.motionDurationShort3, 150);
        this.f1666g = z3.k.resolveThemeInterpolator(qVar.getContext(), R.attr.motionEasingLinearInterpolator, AbstractC0951a.f16460a);
        this.f1667h = z3.k.resolveThemeInterpolator(qVar.getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0951a.f16463d);
    }

    @Override // K3.r
    public final void afterEditTextChanged(Editable editable) {
        if (this.f1725b.f1722y != null) {
            return;
        }
        o(p());
    }

    @Override // K3.r
    public final int b() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // K3.r
    public final int c() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // K3.r
    public final View.OnFocusChangeListener d() {
        return this.f1670k;
    }

    @Override // K3.r
    public final View.OnClickListener e() {
        return this.f1669j;
    }

    @Override // K3.r
    public final View.OnFocusChangeListener f() {
        return this.f1670k;
    }

    @Override // K3.r
    public final void k(boolean z6) {
        if (this.f1725b.f1722y == null) {
            return;
        }
        o(z6);
    }

    @Override // K3.r
    public final void m() {
        final int i2 = 1;
        final int i7 = 0;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(this.f1667h);
        ofFloat.setDuration(this.f1665f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: K3.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ C0138d f1661e;

            {
                this.f1661e = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i2) {
                    case 0:
                        C0138d c0138d = this.f1661e;
                        c0138d.getClass();
                        c0138d.f1727d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        C0138d c0138d2 = this.f1661e;
                        c0138d2.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c0138d2.f1727d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        break;
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f1666g;
        ofFloat2.setInterpolator(timeInterpolator);
        int i8 = this.f1664e;
        ofFloat2.setDuration(i8);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: K3.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ C0138d f1661e;

            {
                this.f1661e = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i7) {
                    case 0:
                        C0138d c0138d = this.f1661e;
                        c0138d.getClass();
                        c0138d.f1727d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        C0138d c0138d2 = this.f1661e;
                        c0138d2.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c0138d2.f1727d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        break;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.f1671l = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.f1671l.addListener(new C0136b(this));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat3.setInterpolator(timeInterpolator);
        ofFloat3.setDuration(i8);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: K3.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ C0138d f1661e;

            {
                this.f1661e = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i7) {
                    case 0:
                        C0138d c0138d = this.f1661e;
                        c0138d.getClass();
                        c0138d.f1727d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        C0138d c0138d2 = this.f1661e;
                        c0138d2.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c0138d2.f1727d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        break;
                }
            }
        });
        this.f1672m = ofFloat3;
        ofFloat3.addListener(new C0137c(this));
    }

    @Override // K3.r
    public final void n() {
        EditText editText = this.f1668i;
        if (editText != null) {
            editText.post(new A3.d(this, 8));
        }
    }

    public final void o(boolean z6) {
        boolean z7 = this.f1725b.d() == z6;
        if (z6 && !this.f1671l.isRunning()) {
            this.f1672m.cancel();
            this.f1671l.start();
            if (z7) {
                this.f1671l.end();
                return;
            }
            return;
        }
        if (z6) {
            return;
        }
        this.f1671l.cancel();
        this.f1672m.start();
        if (z7) {
            this.f1672m.end();
        }
    }

    @Override // K3.r
    public void onEditTextAttached(EditText editText) {
        this.f1668i = editText;
        this.f1724a.setEndIconVisible(p());
    }

    public final boolean p() {
        EditText editText = this.f1668i;
        if (editText != null) {
            return (editText.hasFocus() || this.f1727d.hasFocus()) && this.f1668i.getText().length() > 0;
        }
        return false;
    }
}
