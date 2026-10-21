package f1;

import android.util.SparseArray;

/* loaded from: classes.dex */
public final class n0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p0 f14273b;

    public n0(p0 p0Var) {
        this.f14273b = p0Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        SparseArray sparseArray = this.f14273b.f14295h;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((O) sparseArray.valueAt(i2)).onError(null, null);
        }
        sparseArray.clear();
    }
}
