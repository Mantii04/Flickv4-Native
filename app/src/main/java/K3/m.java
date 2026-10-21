package K3;

import android.text.Editable;
import x3.K;

/* loaded from: classes2.dex */
public final class m extends K {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f1695b;

    public m(q qVar) {
        this.f1695b = qVar;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.f1695b.b().afterEditTextChanged(editable);
    }

    @Override // x3.K, android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        this.f1695b.b().a();
    }
}
