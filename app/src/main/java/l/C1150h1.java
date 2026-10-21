package l;

import android.database.DataSetObserver;

/* renamed from: l.h1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1150h1 extends DataSetObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1162l1 f17899a;

    public C1150h1(C1162l1 c1162l1) {
        this.f17899a = c1162l1;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        C1162l1 c1162l1 = this.f17899a;
        if (c1162l1.isShowing()) {
            c1162l1.show();
        }
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        this.f17899a.dismiss();
    }
}
