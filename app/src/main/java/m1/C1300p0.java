package m1;

import M.AbstractC0181p0;
import M.C0152b;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.leanback.widget.C0513l;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* renamed from: m1.p0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1300p0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f18455a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f18456b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f18457c;

    /* renamed from: d, reason: collision with root package name */
    public final List f18458d;

    /* renamed from: e, reason: collision with root package name */
    public int f18459e;

    /* renamed from: f, reason: collision with root package name */
    public int f18460f;

    /* renamed from: g, reason: collision with root package name */
    public C1298o0 f18461g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f18462h;

    public C1300p0(RecyclerView recyclerView) {
        this.f18462h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f18455a = arrayList;
        this.f18456b = null;
        this.f18457c = new ArrayList();
        this.f18458d = Collections.unmodifiableList(arrayList);
        this.f18459e = 2;
        this.f18460f = 2;
    }

    public final void a(B0 b02, boolean z6) {
        RecyclerView.i(b02);
        RecyclerView recyclerView = this.f18462h;
        D0 d02 = recyclerView.f8078x0;
        if (d02 != null) {
            C0152b itemDelegate = d02.getItemDelegate();
            boolean z7 = itemDelegate instanceof C0;
            View view = b02.f18217a;
            AbstractC0181p0.setAccessibilityDelegate(view, z7 ? (C0152b) ((C0) itemDelegate).f18246e.remove(view) : null);
        }
        if (z6) {
            InterfaceC1302q0 interfaceC1302q0 = recyclerView.f8077x;
            if (interfaceC1302q0 != null) {
                ((C0513l) interfaceC1302q0).onViewRecycled(b02);
            }
            ArrayList arrayList = recyclerView.f8079y;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((C0513l) ((InterfaceC1302q0) arrayList.get(i2))).onViewRecycled(b02);
            }
            V v6 = recyclerView.f8073v;
            if (v6 != null) {
                v6.onViewRecycled(b02);
            }
            if (recyclerView.f8064q0 != null) {
                recyclerView.f8061p.d(b02);
            }
            if (RecyclerView.f7999K0) {
                Log.d("RecyclerView", "dispatchViewRecycled: " + b02);
            }
        }
        b02.f18235s = null;
        b02.f18234r = null;
        b().putRecycledView(b02);
    }

    public final C1298o0 b() {
        if (this.f18461g == null) {
            this.f18461g = new C1298o0();
            c();
        }
        return this.f18461g;
    }

    public final void c() {
        if (this.f18461g != null) {
            RecyclerView recyclerView = this.f18462h;
            if (recyclerView.f8073v == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            C1298o0 c1298o0 = this.f18461g;
            c1298o0.f18450c.add(recyclerView.f8073v);
        }
    }

    public void clear() {
        this.f18455a.clear();
        e();
    }

    public int convertPreLayoutPositionToPostLayout(int i2) {
        RecyclerView recyclerView = this.f18462h;
        if (i2 >= 0 && i2 < recyclerView.f8064q0.getItemCount()) {
            return !recyclerView.f8064q0.isPreLayout() ? i2 : recyclerView.f8056m.f(i2, 0);
        }
        StringBuilder q6 = A.i.q(i2, "invalid position ", ". State item count is ");
        q6.append(recyclerView.f8064q0.getItemCount());
        q6.append(recyclerView.w());
        throw new IndexOutOfBoundsException(q6.toString());
    }

    public final void d(V v6, boolean z6) {
        C1298o0 c1298o0 = this.f18461g;
        if (c1298o0 == null) {
            return;
        }
        Set set = c1298o0.f18450c;
        set.remove(v6);
        if (set.size() != 0 || z6) {
            return;
        }
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = c1298o0.f18448a;
            if (i2 >= sparseArray.size()) {
                return;
            }
            ArrayList arrayList = ((C1296n0) sparseArray.get(sparseArray.keyAt(i2))).f18432a;
            for (int i7 = 0; i7 < arrayList.size(); i7++) {
                U.a.callPoolingContainerOnRelease(((B0) arrayList.get(i7)).f18217a);
            }
            i2++;
        }
    }

    public final void e() {
        ArrayList arrayList = this.f18457c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            f(size);
        }
        arrayList.clear();
        if (RecyclerView.f8004P0) {
            C1310w c1310w = this.f18462h.f8062p0;
            int[] iArr = c1310w.f18510c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            c1310w.f18511d = 0;
        }
    }

    public final void f(int i2) {
        if (RecyclerView.f7999K0) {
            Log.d("RecyclerView", "Recycling cached view at index " + i2);
        }
        ArrayList arrayList = this.f18457c;
        B0 b02 = (B0) arrayList.get(i2);
        if (RecyclerView.f7999K0) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + b02);
        }
        a(b02, true);
        arrayList.remove(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00de, code lost:
    
        r5 = r5 - 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(m1.B0 r13) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m1.C1300p0.g(m1.B0):void");
    }

    public List<B0> getScrapList() {
        return this.f18458d;
    }

    public View getViewForPosition(int i2) {
        return i(i2, Long.MAX_VALUE).f18217a;
    }

    public final void h(View view) {
        AbstractC1272b0 abstractC1272b0;
        B0 E6 = RecyclerView.E(view);
        boolean z6 = (E6.f18226j & 12) != 0;
        RecyclerView recyclerView = this.f18462h;
        if (!z6 && E6.i() && (abstractC1272b0 = recyclerView.f8038V) != null && !abstractC1272b0.canReuseUpdatedViewHolder(E6, E6.b())) {
            if (this.f18456b == null) {
                this.f18456b = new ArrayList();
            }
            E6.f18230n = this;
            E6.f18231o = true;
            this.f18456b.add(E6);
            return;
        }
        if (E6.e() && !E6.f() && !recyclerView.f8073v.hasStableIds()) {
            throw new IllegalArgumentException(b.c.i(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        E6.f18230n = this;
        E6.f18231o = false;
        this.f18455a.add(E6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:167:0x0439, code lost:
    
        if (r10.e() == false) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0486, code lost:
    
        if ((r11 + r8) >= r31) goto L233;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final m1.B0 i(int r30, long r31) {
        /*
            Method dump skipped, instructions count: 1386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m1.C1300p0.i(int, long):m1.B0");
    }

    public final void j(B0 b02) {
        if (b02.f18231o) {
            this.f18456b.remove(b02);
        } else {
            this.f18455a.remove(b02);
        }
        b02.f18230n = null;
        b02.f18231o = false;
        b02.f18226j &= -33;
    }

    public final void k() {
        AbstractC1286i0 abstractC1286i0 = this.f18462h.f8075w;
        this.f18460f = this.f18459e + (abstractC1286i0 != null ? abstractC1286i0.f18397j : 0);
        ArrayList arrayList = this.f18457c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f18460f; size--) {
            f(size);
        }
    }

    public void recycleView(View view) {
        B0 E6 = RecyclerView.E(view);
        boolean h7 = E6.h();
        RecyclerView recyclerView = this.f18462h;
        if (h7) {
            recyclerView.removeDetachedView(view, false);
        }
        if (E6.g()) {
            E6.f18230n.j(E6);
        } else if (E6.m()) {
            E6.f18226j &= -33;
        }
        g(E6);
        if (recyclerView.f8038V == null || E6.isRecyclable()) {
            return;
        }
        recyclerView.f8038V.endAnimation(E6);
    }

    public void setViewCacheSize(int i2) {
        this.f18459e = i2;
        k();
    }
}
