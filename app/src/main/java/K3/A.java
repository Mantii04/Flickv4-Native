package K3;

import M.AbstractC0181p0;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes2.dex */
public final class A implements TextWatcher {

    /* renamed from: b, reason: collision with root package name */
    public int f1652b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ EditText f1653e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f1654f;

    public A(TextInputLayout textInputLayout, EditText editText) {
        this.f1654f = textInputLayout;
        this.f1653e = editText;
        this.f1652b = editText.getLineCount();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.f1654f;
        textInputLayout.u(!textInputLayout.f12880J0, false);
        if (textInputLayout.f12924t) {
            textInputLayout.n(editable);
        }
        if (textInputLayout.f12863B) {
            textInputLayout.v(editable);
        }
        EditText editText = this.f1653e;
        int lineCount = editText.getLineCount();
        int i2 = this.f1652b;
        if (lineCount != i2) {
            if (lineCount < i2) {
                int minimumHeight = AbstractC0181p0.getMinimumHeight(editText);
                int i7 = textInputLayout.f12866C0;
                if (minimumHeight != i7) {
                    editText.setMinimumHeight(i7);
                }
            }
            this.f1652b = lineCount;
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
    }
}
