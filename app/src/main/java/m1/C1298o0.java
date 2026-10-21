package m1;

import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;

/* renamed from: m1.o0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1298o0 {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f18448a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public int f18449b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Set f18450c = Collections.newSetFromMap(new IdentityHashMap());

    public final C1296n0 a(int i2) {
        SparseArray sparseArray = this.f18448a;
        C1296n0 c1296n0 = (C1296n0) sparseArray.get(i2);
        if (c1296n0 != null) {
            return c1296n0;
        }
        C1296n0 c1296n02 = new C1296n0();
        sparseArray.put(i2, c1296n02);
        return c1296n02;
    }

    public void clear() {
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.f18448a;
            if (i2 >= sparseArray.size()) {
                return;
            }
            C1296n0 c1296n0 = (C1296n0) sparseArray.valueAt(i2);
            Iterator it = c1296n0.f18432a.iterator();
            while (it.hasNext()) {
                U.a.callPoolingContainerOnRelease(((B0) it.next()).f18217a);
            }
            c1296n0.f18432a.clear();
            i2++;
        }
    }

    public B0 getRecycledView(int i2) {
        C1296n0 c1296n0 = (C1296n0) this.f18448a.get(i2);
        if (c1296n0 == null) {
            return null;
        }
        ArrayList arrayList = c1296n0.f18432a;
        if (arrayList.isEmpty()) {
            return null;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!((B0) arrayList.get(size)).c()) {
                return (B0) arrayList.remove(size);
            }
        }
        return null;
    }

    public void putRecycledView(B0 b02) {
        int itemViewType = b02.getItemViewType();
        ArrayList arrayList = a(itemViewType).f18432a;
        if (((C1296n0) this.f18448a.get(itemViewType)).f18433b <= arrayList.size()) {
            U.a.callPoolingContainerOnRelease(b02.f18217a);
        } else {
            if (RecyclerView.f7998J0 && arrayList.contains(b02)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            b02.k();
            arrayList.add(b02);
        }
    }

    public void setMaxRecycledViews(int i2, int i7) {
        C1296n0 a7 = a(i2);
        a7.f18433b = i7;
        ArrayList arrayList = a7.f18432a;
        while (arrayList.size() > i7) {
            arrayList.remove(arrayList.size() - 1);
        }
    }
}
