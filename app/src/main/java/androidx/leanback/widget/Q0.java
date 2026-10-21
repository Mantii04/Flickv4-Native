package androidx.leanback.widget;

/* loaded from: classes.dex */
public final class Q0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f6654b;

    public Q0(SearchBar searchBar) {
        this.f6654b = searchBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        SearchBar searchBar = this.f6654b;
        searchBar.setSearchQueryInternal(searchBar.f6678b.getText().toString());
    }
}
