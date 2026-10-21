package androidx.leanback.widget;

import android.view.View;

/* loaded from: classes.dex */
public final class P0 implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f6627b;

    public P0(SearchBar searchBar) {
        this.f6627b = searchBar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z6) {
        SearchBar searchBar = this.f6627b;
        if (z6) {
            searchBar.f6685q.post(new X0(searchBar));
        } else {
            searchBar.f6686r.hideSoftInputFromWindow(searchBar.f6678b.getWindowToken(), 0);
        }
        searchBar.b(z6);
    }
}
