package l;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class H1 implements TextWatcher {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView f17705b;

    public H1(SearchView searchView) {
        this.f17705b = searchView;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        SearchView searchView = this.f17705b;
        Editable text = searchView.f5085y.getText();
        searchView.f5077h0 = text;
        boolean isEmpty = TextUtils.isEmpty(text);
        searchView.n(!isEmpty);
        searchView.p(isEmpty);
        searchView.j();
        searchView.m();
        charSequence.toString();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
    }
}
