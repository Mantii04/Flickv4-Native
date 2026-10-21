package androidx.leanback.widget;

import android.view.View;

/* loaded from: classes.dex */
public final class V0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f6757b;

    public V0(SearchBar searchBar) {
        this.f6757b = searchBar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SearchBar searchBar = this.f6757b;
        if (searchBar.f6676E) {
            searchBar.stopRecognition();
        } else {
            searchBar.startRecognition();
        }
    }
}
