package l;

import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class I1 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView f17722b;

    public I1(SearchView searchView) {
        this.f17722b = searchView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f17722b.k();
    }
}
