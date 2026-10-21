package T;

import android.database.DataSetObserver;

/* loaded from: classes.dex */
public final class b extends DataSetObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f3415a;

    public b(c cVar) {
        this.f3415a = cVar;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        c cVar = this.f3415a;
        cVar.f3416b = true;
        cVar.notifyDataSetChanged();
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        c cVar = this.f3415a;
        cVar.f3416b = false;
        cVar.notifyDataSetInvalidated();
    }
}
