package K3;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes2.dex */
public final class n implements F {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f1696a;

    public n(q qVar) {
        this.f1696a = qVar;
    }

    public void onEditTextAttached(TextInputLayout textInputLayout) {
        q qVar = this.f1696a;
        if (qVar.f1703B == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = qVar.f1703B;
        m mVar = qVar.f1706E;
        if (editText != null) {
            editText.removeTextChangedListener(mVar);
            if (qVar.f1703B.getOnFocusChangeListener() == qVar.b().d()) {
                qVar.f1703B.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        qVar.f1703B = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(mVar);
        }
        qVar.b().onEditTextAttached(qVar.f1703B);
        qVar.j(qVar.b());
    }
}
