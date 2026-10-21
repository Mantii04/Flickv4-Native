package androidx.leanback.widget;

import android.os.Parcelable;
import android.util.SparseArray;
import m1.InterfaceC1302q0;

/* renamed from: androidx.leanback.widget.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0513l implements InterfaceC1302q0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC0529t f6844a;

    public C0513l(AbstractC0529t abstractC0529t) {
        this.f6844a = abstractC0529t;
    }

    public void onViewRecycled(m1.B0 b02) {
        GridLayoutManager gridLayoutManager = this.f6844a.f6904T0;
        gridLayoutManager.getClass();
        int absoluteAdapterPosition = b02.getAbsoluteAdapterPosition();
        if (absoluteAdapterPosition != -1) {
            G2.b bVar = gridLayoutManager.f6527d0;
            int i2 = bVar.f1024a;
            if (i2 == 1) {
                p.p pVar = (p.p) bVar.f1026c;
                if (pVar == null || pVar.size() == 0) {
                    return;
                }
                ((p.p) bVar.f1026c).remove(Integer.toString(absoluteAdapterPosition));
                return;
            }
            if ((i2 == 2 || i2 == 3) && ((p.p) bVar.f1026c) != null) {
                String num = Integer.toString(absoluteAdapterPosition);
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                b02.f18217a.saveHierarchyState(sparseArray);
                ((p.p) bVar.f1026c).put(num, sparseArray);
            }
        }
    }
}
