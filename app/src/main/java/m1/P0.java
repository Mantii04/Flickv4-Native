package m1;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class P0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f18319a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public int f18320b = Integer.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public int f18321c = Integer.MIN_VALUE;

    /* renamed from: d, reason: collision with root package name */
    public int f18322d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final int f18323e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f18324f;

    public P0(StaggeredGridLayoutManager staggeredGridLayoutManager, int i2) {
        this.f18324f = staggeredGridLayoutManager;
        this.f18323e = i2;
    }

    public final void a() {
        View view = (View) b.c.h(1, this.f18319a);
        J0 j02 = (J0) view.getLayoutParams();
        this.f18321c = this.f18324f.f8098r.getDecoratedEnd(view);
        j02.getClass();
    }

    public final void b() {
        this.f18319a.clear();
        this.f18320b = Integer.MIN_VALUE;
        this.f18321c = Integer.MIN_VALUE;
        this.f18322d = 0;
    }

    public final int c(int i2, int i7, boolean z6, boolean z7) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f18324f;
        int startAfterPadding = staggeredGridLayoutManager.f8098r.getStartAfterPadding();
        int endAfterPadding = staggeredGridLayoutManager.f8098r.getEndAfterPadding();
        int i8 = i7 > i2 ? 1 : -1;
        while (i2 != i7) {
            View view = (View) this.f18319a.get(i2);
            int decoratedStart = staggeredGridLayoutManager.f8098r.getDecoratedStart(view);
            int decoratedEnd = staggeredGridLayoutManager.f8098r.getDecoratedEnd(view);
            boolean z8 = false;
            boolean z9 = !z7 ? decoratedStart >= endAfterPadding : decoratedStart > endAfterPadding;
            if (!z7 ? decoratedEnd > startAfterPadding : decoratedEnd >= startAfterPadding) {
                z8 = true;
            }
            if (z9 && z8) {
                if (z6) {
                    return staggeredGridLayoutManager.getPosition(view);
                }
                if (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding) {
                    return staggeredGridLayoutManager.getPosition(view);
                }
            }
            i2 += i8;
        }
        return -1;
    }

    public final int d(int i2) {
        int i7 = this.f18321c;
        if (i7 != Integer.MIN_VALUE) {
            return i7;
        }
        if (this.f18319a.size() == 0) {
            return i2;
        }
        a();
        return this.f18321c;
    }

    public final int e(int i2) {
        int i7 = this.f18320b;
        if (i7 != Integer.MIN_VALUE) {
            return i7;
        }
        if (this.f18319a.size() == 0) {
            return i2;
        }
        View view = (View) this.f18319a.get(0);
        J0 j02 = (J0) view.getLayoutParams();
        this.f18320b = this.f18324f.f8098r.getDecoratedStart(view);
        j02.getClass();
        return this.f18320b;
    }

    public int findFirstPartiallyVisibleItemPosition() {
        boolean z6 = this.f18324f.f8103w;
        ArrayList arrayList = this.f18319a;
        return z6 ? c(arrayList.size() - 1, -1, false, true) : c(0, arrayList.size(), false, true);
    }

    public int findLastPartiallyVisibleItemPosition() {
        boolean z6 = this.f18324f.f8103w;
        ArrayList arrayList = this.f18319a;
        return z6 ? c(0, arrayList.size(), false, true) : c(arrayList.size() - 1, -1, false, true);
    }

    public int findLastVisibleItemPosition() {
        boolean z6 = this.f18324f.f8103w;
        ArrayList arrayList = this.f18319a;
        return z6 ? c(0, arrayList.size(), true, false) : c(arrayList.size() - 1, -1, true, false);
    }

    public int getDeletedSize() {
        return this.f18322d;
    }

    public View getFocusableViewAfter(int i2, int i7) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f18324f;
        ArrayList arrayList = this.f18319a;
        View view = null;
        if (i7 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f8103w && staggeredGridLayoutManager.getPosition(view2) >= i2) || ((!staggeredGridLayoutManager.f8103w && staggeredGridLayoutManager.getPosition(view2) <= i2) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
            return view;
        }
        int size2 = arrayList.size();
        int i8 = 0;
        while (i8 < size2) {
            View view3 = (View) arrayList.get(i8);
            if ((staggeredGridLayoutManager.f8103w && staggeredGridLayoutManager.getPosition(view3) <= i2) || ((!staggeredGridLayoutManager.f8103w && staggeredGridLayoutManager.getPosition(view3) >= i2) || !view3.hasFocusable())) {
                break;
            }
            i8++;
            view = view3;
        }
        return view;
    }
}
