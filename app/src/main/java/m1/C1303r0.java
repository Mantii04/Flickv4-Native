package m1;

import M.AbstractC0181p0;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: m1.r0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1303r0 extends X {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f18465a;

    public C1303r0(RecyclerView recyclerView) {
        this.f18465a = recyclerView;
    }

    public final void a() {
        boolean z6 = RecyclerView.f8003O0;
        RecyclerView recyclerView = this.f18465a;
        if (z6 && recyclerView.f8014D && recyclerView.f8012C) {
            AbstractC0181p0.postOnAnimation(recyclerView, recyclerView.f8065r);
        } else {
            recyclerView.f8027K = true;
            recyclerView.requestLayout();
        }
    }

    @Override // m1.X
    public void onChanged() {
        RecyclerView recyclerView = this.f18465a;
        recyclerView.h(null);
        recyclerView.f8064q0.f18530f = true;
        recyclerView.Q(true);
        if (recyclerView.f8056m.g()) {
            return;
        }
        recyclerView.requestLayout();
    }

    @Override // m1.X
    public void onItemRangeChanged(int i2, int i7, Object obj) {
        RecyclerView recyclerView = this.f18465a;
        recyclerView.h(null);
        C1271b c1271b = recyclerView.f8056m;
        if (i7 < 1) {
            c1271b.getClass();
            return;
        }
        ArrayList arrayList = c1271b.f18349b;
        arrayList.add(c1271b.obtainUpdateOp(4, i2, i7, obj));
        c1271b.f18353f |= 4;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // m1.X
    public void onItemRangeInserted(int i2, int i7) {
        RecyclerView recyclerView = this.f18465a;
        recyclerView.h(null);
        C1271b c1271b = recyclerView.f8056m;
        if (i7 < 1) {
            c1271b.getClass();
            return;
        }
        ArrayList arrayList = c1271b.f18349b;
        arrayList.add(c1271b.obtainUpdateOp(1, i2, i7, null));
        c1271b.f18353f |= 1;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // m1.X
    public void onItemRangeRemoved(int i2, int i7) {
        RecyclerView recyclerView = this.f18465a;
        recyclerView.h(null);
        C1271b c1271b = recyclerView.f8056m;
        if (i7 < 1) {
            c1271b.getClass();
            return;
        }
        ArrayList arrayList = c1271b.f18349b;
        arrayList.add(c1271b.obtainUpdateOp(2, i2, i7, null));
        c1271b.f18353f |= 2;
        if (arrayList.size() == 1) {
            a();
        }
    }
}
