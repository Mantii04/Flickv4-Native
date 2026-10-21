package m1;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class U {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f18338a;

    public U(RecyclerView recyclerView) {
        this.f18338a = recyclerView;
    }

    public final void a(C1269a c1269a) {
        int i2 = c1269a.f18342a;
        RecyclerView recyclerView = this.f18338a;
        if (i2 == 1) {
            recyclerView.f8075w.onItemsAdded(recyclerView, c1269a.f18343b, c1269a.f18345d);
            return;
        }
        if (i2 == 2) {
            recyclerView.f8075w.onItemsRemoved(recyclerView, c1269a.f18343b, c1269a.f18345d);
        } else if (i2 == 4) {
            recyclerView.f8075w.onItemsUpdated(recyclerView, c1269a.f18343b, c1269a.f18345d, c1269a.f18344c);
        } else {
            if (i2 != 8) {
                return;
            }
            recyclerView.f8075w.onItemsMoved(recyclerView, c1269a.f18343b, c1269a.f18345d, 1);
        }
    }

    public B0 findViewHolder(int i2) {
        RecyclerView recyclerView = this.f18338a;
        B0 B6 = recyclerView.B(i2, true);
        if (B6 != null) {
            C1275d c1275d = recyclerView.f8058n;
            if (!c1275d.f18365c.contains(B6.f18217a)) {
                return B6;
            }
            if (RecyclerView.f7999K0) {
                Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
            }
        }
        return null;
    }

    public void markViewHoldersUpdated(int i2, int i7, Object obj) {
        int i8;
        int i9;
        RecyclerView recyclerView = this.f18338a;
        int childCount = recyclerView.f8058n.f18363a.getChildCount();
        int i10 = i7 + i2;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = recyclerView.f8058n.f18363a.getChildAt(i11);
            B0 E6 = RecyclerView.E(childAt);
            if (E6 != null && !E6.l() && (i9 = E6.f18219c) >= i2 && i9 < i10) {
                E6.a(2);
                if (obj == null) {
                    E6.a(1024);
                } else if ((1024 & E6.f18226j) == 0) {
                    if (E6.f18227k == null) {
                        ArrayList arrayList = new ArrayList();
                        E6.f18227k = arrayList;
                        E6.f18228l = Collections.unmodifiableList(arrayList);
                    }
                    E6.f18227k.add(obj);
                }
                ((C1288j0) childAt.getLayoutParams()).f18411c = true;
            }
        }
        C1300p0 c1300p0 = recyclerView.f8047f;
        ArrayList arrayList2 = c1300p0.f18457c;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            B0 b02 = (B0) arrayList2.get(size);
            if (b02 != null && (i8 = b02.f18219c) >= i2 && i8 < i10) {
                b02.a(2);
                c1300p0.f(size);
            }
        }
        recyclerView.f8072u0 = true;
    }

    public void offsetPositionsForAdd(int i2, int i7) {
        RecyclerView recyclerView = this.f18338a;
        int childCount = recyclerView.f8058n.f18363a.getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            B0 E6 = RecyclerView.E(recyclerView.f8058n.f18363a.getChildAt(i8));
            if (E6 != null && !E6.l() && E6.f18219c >= i2) {
                if (RecyclerView.f7999K0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert attached child " + i8 + " holder " + E6 + " now at position " + (E6.f18219c + i7));
                }
                E6.j(i7, false);
                recyclerView.f8064q0.f18530f = true;
            }
        }
        ArrayList arrayList = recyclerView.f8047f.f18457c;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            B0 b02 = (B0) arrayList.get(i9);
            if (b02 != null && b02.f18219c >= i2) {
                if (RecyclerView.f7999K0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert cached " + i9 + " holder " + b02 + " now at position " + (b02.f18219c + i7));
                }
                b02.j(i7, false);
            }
        }
        recyclerView.requestLayout();
        recyclerView.f8070t0 = true;
    }

    public void offsetPositionsForMove(int i2, int i7) {
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        RecyclerView recyclerView = this.f18338a;
        int childCount = recyclerView.f8058n.f18363a.getChildCount();
        if (i2 < i7) {
            i9 = i2;
            i8 = i7;
            i10 = -1;
        } else {
            i8 = i2;
            i9 = i7;
            i10 = 1;
        }
        boolean z6 = false;
        for (int i16 = 0; i16 < childCount; i16++) {
            B0 E6 = RecyclerView.E(recyclerView.f8058n.f18363a.getChildAt(i16));
            if (E6 != null && (i15 = E6.f18219c) >= i9 && i15 <= i8) {
                if (RecyclerView.f7999K0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove attached child " + i16 + " holder " + E6);
                }
                if (E6.f18219c == i2) {
                    E6.j(i7 - i2, false);
                } else {
                    E6.j(i10, false);
                }
                recyclerView.f8064q0.f18530f = true;
            }
        }
        C1300p0 c1300p0 = recyclerView.f8047f;
        c1300p0.getClass();
        if (i2 < i7) {
            i12 = i2;
            i11 = i7;
            i13 = -1;
        } else {
            i11 = i2;
            i12 = i7;
            i13 = 1;
        }
        ArrayList arrayList = c1300p0.f18457c;
        int size = arrayList.size();
        int i17 = 0;
        while (i17 < size) {
            B0 b02 = (B0) arrayList.get(i17);
            if (b02 != null && (i14 = b02.f18219c) >= i12 && i14 <= i11) {
                if (i14 == i2) {
                    b02.j(i7 - i2, z6);
                } else {
                    b02.j(i13, z6);
                }
                if (RecyclerView.f7999K0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove cached child " + i17 + " holder " + b02);
                }
            }
            i17++;
            z6 = false;
        }
        recyclerView.requestLayout();
        recyclerView.f8070t0 = true;
    }

    public void offsetPositionsForRemovingInvisible(int i2, int i7) {
        RecyclerView recyclerView = this.f18338a;
        recyclerView.K(i2, i7, true);
        recyclerView.f8070t0 = true;
        recyclerView.f8064q0.f18527c += i7;
    }

    public void offsetPositionsForRemovingLaidOutOrNewView(int i2, int i7) {
        RecyclerView recyclerView = this.f18338a;
        recyclerView.K(i2, i7, false);
        recyclerView.f8070t0 = true;
    }

    public void onDispatchFirstPass(C1269a c1269a) {
        a(c1269a);
    }

    public void onDispatchSecondPass(C1269a c1269a) {
        a(c1269a);
    }
}
