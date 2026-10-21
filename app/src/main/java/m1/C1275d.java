package m1;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* renamed from: m1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1275d {

    /* renamed from: a, reason: collision with root package name */
    public final T f18363a;

    /* renamed from: e, reason: collision with root package name */
    public View f18367e;

    /* renamed from: d, reason: collision with root package name */
    public int f18366d = 0;

    /* renamed from: b, reason: collision with root package name */
    public final C1273c f18364b = new C1273c();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f18365c = new ArrayList();

    public C1275d(T t6) {
        this.f18363a = t6;
    }

    public final void a(View view, boolean z6, int i2) {
        T t6 = this.f18363a;
        int childCount = i2 < 0 ? t6.getChildCount() : e(i2);
        this.f18364b.e(childCount, z6);
        if (z6) {
            this.f18365c.add(view);
            t6.onEnteredHiddenState(view);
        }
        t6.addView(view, childCount);
    }

    public final void b(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z6) {
        T t6 = this.f18363a;
        int childCount = i2 < 0 ? t6.getChildCount() : e(i2);
        this.f18364b.e(childCount, z6);
        if (z6) {
            this.f18365c.add(view);
            t6.onEnteredHiddenState(view);
        }
        t6.attachViewToParent(view, childCount, layoutParams);
    }

    public final View c(int i2) {
        return this.f18363a.getChildAt(e(i2));
    }

    public final int d() {
        return this.f18363a.getChildCount() - this.f18365c.size();
    }

    public final int e(int i2) {
        if (i2 < 0) {
            return -1;
        }
        int childCount = this.f18363a.getChildCount();
        int i7 = i2;
        while (i7 < childCount) {
            C1273c c1273c = this.f18364b;
            int b7 = i2 - (i7 - c1273c.b(i7));
            if (b7 == 0) {
                while (c1273c.d(i7)) {
                    i7++;
                }
                return i7;
            }
            i7 += b7;
        }
        return -1;
    }

    public final int f(View view) {
        int indexOfChild = this.f18363a.indexOfChild(view);
        if (indexOfChild != -1) {
            C1273c c1273c = this.f18364b;
            if (!c1273c.d(indexOfChild)) {
                return indexOfChild - c1273c.b(indexOfChild);
            }
        }
        return -1;
    }

    public final void g(View view) {
        if (this.f18365c.remove(view)) {
            this.f18363a.onLeftHiddenState(view);
        }
    }

    public String toString() {
        return this.f18364b.toString() + ", hidden list:" + this.f18365c.size();
    }
}
