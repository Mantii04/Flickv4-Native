package androidx.leanback.widget;

/* loaded from: classes.dex */
public final class O0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6623b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SearchBar f6624e;

    public O0(SearchBar searchBar, int i2) {
        this.f6624e = searchBar;
        this.f6623b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        SearchBar searchBar = this.f6624e;
        searchBar.f6674C.play(searchBar.f6675D.get(this.f6623b), 1.0f, 1.0f, 1, 0, 1.0f);
    }
}
