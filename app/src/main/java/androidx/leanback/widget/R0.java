package androidx.leanback.widget;

import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;

/* loaded from: classes.dex */
public final class R0 implements TextWatcher {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Q0 f6655b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SearchBar f6656e;

    public R0(SearchBar searchBar, Q0 q02) {
        this.f6656e = searchBar;
        this.f6655b = q02;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i7, int i8) {
        SearchBar searchBar = this.f6656e;
        if (searchBar.f6676E) {
            return;
        }
        Handler handler = searchBar.f6685q;
        Q0 q02 = this.f6655b;
        handler.removeCallbacks(q02);
        handler.post(q02);
    }
}
