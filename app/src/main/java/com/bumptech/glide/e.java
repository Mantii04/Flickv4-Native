package com.bumptech.glide;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import m1.AbstractC1286i0;
import m1.L;
import m1.x0;

/* loaded from: classes.dex */
public abstract class e implements S.r {
    public static void d(String str, long j7) {
        if (j7 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " (" + j7 + ") must be >= 0");
    }

    public static void e(boolean z6) {
        if (!z6) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    public static int f(x0 x0Var, L l7, View view, View view2, AbstractC1286i0 abstractC1286i0, boolean z6) {
        if (abstractC1286i0.getChildCount() == 0 || x0Var.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z6) {
            return Math.abs(abstractC1286i0.getPosition(view) - abstractC1286i0.getPosition(view2)) + 1;
        }
        return Math.min(l7.getTotalSpace(), l7.getDecoratedEnd(view2) - l7.getDecoratedStart(view));
    }

    public static int g(x0 x0Var, L l7, View view, View view2, AbstractC1286i0 abstractC1286i0, boolean z6, boolean z7) {
        if (abstractC1286i0.getChildCount() == 0 || x0Var.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z7 ? Math.max(0, (x0Var.getItemCount() - Math.max(abstractC1286i0.getPosition(view), abstractC1286i0.getPosition(view2))) - 1) : Math.max(0, Math.min(abstractC1286i0.getPosition(view), abstractC1286i0.getPosition(view2)));
        if (z6) {
            return Math.round((max * (Math.abs(l7.getDecoratedEnd(view2) - l7.getDecoratedStart(view)) / (Math.abs(abstractC1286i0.getPosition(view) - abstractC1286i0.getPosition(view2)) + 1))) + (l7.getStartAfterPadding() - l7.getDecoratedStart(view)));
        }
        return max;
    }

    public static int h(x0 x0Var, L l7, View view, View view2, AbstractC1286i0 abstractC1286i0, boolean z6) {
        if (abstractC1286i0.getChildCount() == 0 || x0Var.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z6) {
            return x0Var.getItemCount();
        }
        return (int) (((l7.getDecoratedEnd(view2) - l7.getDecoratedStart(view)) / (Math.abs(abstractC1286i0.getPosition(view) - abstractC1286i0.getPosition(view2)) + 1)) * x0Var.getItemCount());
    }

    public abstract boolean a(androidx.work.impl.utils.futures.b bVar, M1.b bVar2, M1.b bVar3);

    public abstract boolean b(androidx.work.impl.utils.futures.b bVar, Object obj, Object obj2);

    public abstract boolean c(androidx.work.impl.utils.futures.b bVar, M1.f fVar, M1.f fVar2);

    public abstract void i(NestedScrollView nestedScrollView, int i2, int i7, int i8, int i9);

    public abstract void j(M1.f fVar, M1.f fVar2);

    public abstract void k(M1.f fVar, Thread thread);
}
