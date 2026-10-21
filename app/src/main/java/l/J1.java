package l;

import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class J1 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView f17727b;

    public J1(SearchView searchView) {
        this.f17727b = searchView;
    }

    @Override // java.lang.Runnable
    public void run() {
        T.c cVar = this.f17727b.f5070a0;
        if (cVar instanceof W1) {
            cVar.changeCursor(null);
        }
    }
}
