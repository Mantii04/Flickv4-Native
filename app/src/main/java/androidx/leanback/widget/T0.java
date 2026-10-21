package androidx.leanback.widget;

/* loaded from: classes.dex */
public final class T0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ U0 f6735b;

    public T0(U0 u02) {
        this.f6735b = u02;
    }

    @Override // java.lang.Runnable
    public void run() {
        SearchBar searchBar = this.f6735b.f6752a;
        searchBar.f6687s = true;
        searchBar.f6679e.requestFocus();
    }
}
