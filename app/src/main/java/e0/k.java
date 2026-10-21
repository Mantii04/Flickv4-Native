package e0;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;
import androidx.emoji2.text.p;

/* loaded from: classes.dex */
public final class k extends j {

    /* renamed from: a, reason: collision with root package name */
    public final i f13923a;

    public k(TextView textView) {
        this.f13923a = new i(textView);
    }

    @Override // e0.j
    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return !p.isConfigured() ? inputFilterArr : this.f13923a.a(inputFilterArr);
    }

    @Override // e0.j
    public final void b(boolean z6) {
        if (p.isConfigured()) {
            this.f13923a.b(z6);
        }
    }

    @Override // e0.j
    public final void c(boolean z6) {
        boolean isConfigured = p.isConfigured();
        i iVar = this.f13923a;
        if (isConfigured) {
            iVar.c(z6);
        } else {
            iVar.f13922c = z6;
        }
    }

    @Override // e0.j
    public final TransformationMethod d(TransformationMethod transformationMethod) {
        return !p.isConfigured() ? transformationMethod : this.f13923a.d(transformationMethod);
    }

    @Override // e0.j
    public boolean isEnabled() {
        return this.f13923a.isEnabled();
    }
}
