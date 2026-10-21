package androidx.leanback.widget;

import android.view.KeyEvent;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class U0 implements TextView.OnEditorActionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchBar f6752a;

    public U0(SearchBar searchBar) {
        this.f6752a = searchBar;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        SearchBar searchBar = this.f6752a;
        if (2 != i2) {
            return false;
        }
        searchBar.f6686r.hideSoftInputFromWindow(searchBar.f6678b.getWindowToken(), 0);
        searchBar.f6685q.postDelayed(new T0(this), 500L);
        return true;
    }
}
