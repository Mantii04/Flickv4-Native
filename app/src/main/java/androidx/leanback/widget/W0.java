package androidx.leanback.widget;

import android.view.View;

/* loaded from: classes.dex */
public final class W0 implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f6758b;

    public W0(SearchBar searchBar) {
        this.f6758b = searchBar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z6) {
        SearchBar searchBar = this.f6758b;
        if (z6) {
            searchBar.f6686r.hideSoftInputFromWindow(searchBar.f6678b.getWindowToken(), 0);
            if (searchBar.f6687s) {
                searchBar.startRecognition();
                searchBar.f6687s = false;
            }
        } else {
            searchBar.stopRecognition();
        }
        searchBar.b(z6);
    }
}
