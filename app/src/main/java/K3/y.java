package K3;

import B4.ViewOnClickListenerC0038a;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public final class y extends r {

    /* renamed from: e, reason: collision with root package name */
    public final int f1774e;

    /* renamed from: f, reason: collision with root package name */
    public EditText f1775f;

    /* renamed from: g, reason: collision with root package name */
    public final ViewOnClickListenerC0038a f1776g;

    public y(q qVar, int i2) {
        super(qVar);
        this.f1774e = R.drawable.design_password_eye;
        this.f1776g = new ViewOnClickListenerC0038a(this, 5);
        if (i2 != 0) {
            this.f1774e = i2;
        }
    }

    @Override // K3.r
    public final void a() {
        l();
    }

    @Override // K3.r
    public final int b() {
        return R.string.password_toggle_content_description;
    }

    @Override // K3.r
    public final int c() {
        return this.f1774e;
    }

    @Override // K3.r
    public final View.OnClickListener e() {
        return this.f1776g;
    }

    @Override // K3.r
    public final boolean i() {
        return true;
    }

    @Override // K3.r
    public final boolean j() {
        EditText editText = this.f1775f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // K3.r
    public final void m() {
        EditText editText = this.f1775f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f1775f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // K3.r
    public final void n() {
        EditText editText = this.f1775f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override // K3.r
    public final void onEditTextAttached(EditText editText) {
        this.f1775f = editText;
        l();
    }
}
