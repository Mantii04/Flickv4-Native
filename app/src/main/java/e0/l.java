package e0;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final j f13924a;

    public l(TextView textView, boolean z6) {
        L.h.checkNotNull(textView, "textView cannot be null");
        if (z6) {
            this.f13924a = new i(textView);
        } else {
            this.f13924a = new k(textView);
        }
    }

    public InputFilter[] getFilters(InputFilter[] inputFilterArr) {
        return this.f13924a.a(inputFilterArr);
    }

    public boolean isEnabled() {
        return this.f13924a.isEnabled();
    }

    public void setAllCaps(boolean z6) {
        this.f13924a.b(z6);
    }

    public void setEnabled(boolean z6) {
        this.f13924a.c(z6);
    }

    public TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
        return this.f13924a.d(transformationMethod);
    }
}
