package m1;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* renamed from: m1.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1312y implements Runnable {

    /* renamed from: m, reason: collision with root package name */
    public static final ThreadLocal f18541m = new ThreadLocal();

    /* renamed from: n, reason: collision with root package name */
    public static final C1309v f18542n = new C1309v();

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f18543b;

    /* renamed from: e, reason: collision with root package name */
    public long f18544e;

    /* renamed from: f, reason: collision with root package name */
    public long f18545f;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f18546j;

    public static B0 c(RecyclerView recyclerView, int i2, long j7) {
        int childCount = recyclerView.f8058n.f18363a.getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            B0 E6 = RecyclerView.E(recyclerView.f8058n.f18363a.getChildAt(i7));
            if (E6.f18219c == i2 && !E6.e()) {
                return null;
            }
        }
        C1300p0 c1300p0 = recyclerView.f8047f;
        try {
            recyclerView.L();
            B0 i8 = c1300p0.i(i2, j7);
            if (i8 != null) {
                if (!i8.d() || i8.e()) {
                    c1300p0.a(i8, false);
                } else {
                    c1300p0.recycleView(i8.f18217a);
                }
            }
            recyclerView.M(false);
            return i8;
        } catch (Throwable th) {
            recyclerView.M(false);
            throw th;
        }
    }

    public final void a(RecyclerView recyclerView, int i2, int i7) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.f7998J0 && !this.f18543b.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f18544e == 0) {
                this.f18544e = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        C1310w c1310w = recyclerView.f8062p0;
        c1310w.f18508a = i2;
        c1310w.f18509b = i7;
    }

    public void add(RecyclerView recyclerView) {
        boolean z6 = RecyclerView.f7998J0;
        ArrayList arrayList = this.f18543b;
        if (z6 && arrayList.contains(recyclerView)) {
            throw new IllegalStateException("RecyclerView already present in worker list!");
        }
        arrayList.add(recyclerView);
    }

    public final void b(long j7) {
        C1311x c1311x;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        C1311x c1311x2;
        ArrayList arrayList = this.f18543b;
        int size = arrayList.size();
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i7);
            if (recyclerView3.getWindowVisibility() == 0) {
                C1310w c1310w = recyclerView3.f8062p0;
                c1310w.a(recyclerView3, false);
                i2 += c1310w.f18511d;
            }
        }
        ArrayList arrayList2 = this.f18546j;
        arrayList2.ensureCapacity(i2);
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i9);
            if (recyclerView4.getWindowVisibility() == 0) {
                C1310w c1310w2 = recyclerView4.f8062p0;
                int abs = Math.abs(c1310w2.f18509b) + Math.abs(c1310w2.f18508a);
                for (int i10 = 0; i10 < c1310w2.f18511d * 2; i10 += 2) {
                    if (i8 >= arrayList2.size()) {
                        c1311x2 = new C1311x();
                        arrayList2.add(c1311x2);
                    } else {
                        c1311x2 = (C1311x) arrayList2.get(i8);
                    }
                    int[] iArr = c1310w2.f18510c;
                    int i11 = iArr[i10 + 1];
                    c1311x2.f18520a = i11 <= abs;
                    c1311x2.f18521b = abs;
                    c1311x2.f18522c = i11;
                    c1311x2.f18523d = recyclerView4;
                    c1311x2.f18524e = iArr[i10];
                    i8++;
                }
            }
        }
        Collections.sort(arrayList2, f18542n);
        for (int i12 = 0; i12 < arrayList2.size() && (recyclerView = (c1311x = (C1311x) arrayList2.get(i12)).f18523d) != null; i12++) {
            B0 c7 = c(recyclerView, c1311x.f18524e, c1311x.f18520a ? Long.MAX_VALUE : j7);
            if (c7 != null && c7.f18218b != null && c7.d() && !c7.e() && (recyclerView2 = (RecyclerView) c7.f18218b.get()) != null) {
                if (recyclerView2.f8029M && recyclerView2.f8058n.f18363a.getChildCount() != 0) {
                    AbstractC1272b0 abstractC1272b0 = recyclerView2.f8038V;
                    if (abstractC1272b0 != null) {
                        abstractC1272b0.endAnimations();
                    }
                    AbstractC1286i0 abstractC1286i0 = recyclerView2.f8075w;
                    C1300p0 c1300p0 = recyclerView2.f8047f;
                    if (abstractC1286i0 != null) {
                        abstractC1286i0.removeAndRecycleAllViews(c1300p0);
                        recyclerView2.f8075w.d(c1300p0);
                    }
                    c1300p0.clear();
                }
                C1310w c1310w3 = recyclerView2.f8062p0;
                c1310w3.a(recyclerView2, true);
                if (c1310w3.f18511d != 0) {
                    try {
                        I.s.beginSection("RV Nested Prefetch");
                        x0 x0Var = recyclerView2.f8064q0;
                        V v6 = recyclerView2.f8073v;
                        x0Var.f18528d = 1;
                        x0Var.f18529e = v6.getItemCount();
                        x0Var.f18531g = false;
                        x0Var.f18532h = false;
                        x0Var.f18533i = false;
                        for (int i13 = 0; i13 < c1310w3.f18511d * 2; i13 += 2) {
                            c(recyclerView2, c1310w3.f18510c[i13], j7);
                        }
                        c1311x.clear();
                    } finally {
                        I.s.endSection();
                    }
                }
            }
            c1311x.clear();
        }
    }

    public void remove(RecyclerView recyclerView) {
        boolean remove = this.f18543b.remove(recyclerView);
        if (RecyclerView.f7998J0 && !remove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            I.s.beginSection("RV Prefetch");
            ArrayList arrayList = this.f18543b;
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long j7 = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j7 = Math.max(recyclerView.getDrawingTime(), j7);
                    }
                }
                if (j7 != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(j7) + this.f18545f);
                }
            }
        } finally {
            this.f18544e = 0L;
            I.s.endSection();
        }
    }
}
