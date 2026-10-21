package c6;

import android.text.Editable;
import android.text.TextWatcher;

/* loaded from: classes2.dex */
public final class b implements TextWatcher {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ me.grantland.widget.a f8978b;

    public b(me.grantland.widget.a aVar) {
        this.f8978b = aVar;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        this.f8978b.a();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
    }
}
