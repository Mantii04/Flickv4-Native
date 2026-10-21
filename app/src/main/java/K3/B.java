package K3;

import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes2.dex */
public final class B implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f1655b;

    public B(TextInputLayout textInputLayout) {
        this.f1655b = textInputLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        CheckableImageButton checkableImageButton = this.f1655b.f12902f.f1713p;
        checkableImageButton.performClick();
        checkableImageButton.jumpDrawablesToCurrentState();
    }
}
