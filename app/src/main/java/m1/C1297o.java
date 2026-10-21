package m1;

import M.AbstractC0181p0;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: m1.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1297o extends E0 {

    /* renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f18436s;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f18437h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f18438i = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f18439j = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f18440k = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f18441l = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f18442m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f18443n = new ArrayList();

    /* renamed from: o, reason: collision with root package name */
    public final ArrayList f18444o = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f18445p = new ArrayList();

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f18446q = new ArrayList();

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f18447r = new ArrayList();

    public static void b(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((B0) arrayList.get(size)).f18217a.animate().cancel();
        }
    }

    @Override // m1.E0
    @SuppressLint({"UnknownNullness"})
    public boolean animateAdd(B0 b02) {
        f(b02);
        b02.f18217a.setAlpha(0.0f);
        this.f18438i.add(b02);
        return true;
    }

    @Override // m1.E0
    @SuppressLint({"UnknownNullness"})
    public boolean animateChange(B0 b02, B0 b03, int i2, int i7, int i8, int i9) {
        if (b02 == b03) {
            return animateMove(b02, i2, i7, i8, i9);
        }
        float translationX = b02.f18217a.getTranslationX();
        View view = b02.f18217a;
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        f(b02);
        int i10 = (int) ((i8 - i2) - translationX);
        int i11 = (int) ((i9 - i7) - translationY);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        if (b03 != null) {
            f(b03);
            View view2 = b03.f18217a;
            view2.setTranslationX(-i10);
            view2.setTranslationY(-i11);
            view2.setAlpha(0.0f);
        }
        ArrayList arrayList = this.f18440k;
        C1293m c1293m = new C1293m();
        c1293m.f18421a = b02;
        c1293m.f18422b = b03;
        c1293m.f18423c = i2;
        c1293m.f18424d = i7;
        c1293m.f18425e = i8;
        c1293m.f18426f = i9;
        arrayList.add(c1293m);
        return true;
    }

    @Override // m1.E0
    @SuppressLint({"UnknownNullness"})
    public boolean animateMove(B0 b02, int i2, int i7, int i8, int i9) {
        View view = b02.f18217a;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i7 + ((int) b02.f18217a.getTranslationY());
        f(b02);
        int i10 = i8 - translationX;
        int i11 = i9 - translationY;
        if (i10 == 0 && i11 == 0) {
            dispatchMoveFinished(b02);
            return false;
        }
        if (i10 != 0) {
            view.setTranslationX(-i10);
        }
        if (i11 != 0) {
            view.setTranslationY(-i11);
        }
        ArrayList arrayList = this.f18439j;
        C1295n c1295n = new C1295n();
        c1295n.f18427a = b02;
        c1295n.f18428b = translationX;
        c1295n.f18429c = translationY;
        c1295n.f18430d = i8;
        c1295n.f18431e = i9;
        arrayList.add(c1295n);
        return true;
    }

    @Override // m1.E0
    @SuppressLint({"UnknownNullness"})
    public boolean animateRemove(B0 b02) {
        f(b02);
        this.f18437h.add(b02);
        return true;
    }

    public final void c() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    @Override // m1.AbstractC1272b0
    public boolean canReuseUpdatedViewHolder(B0 b02, List<Object> list) {
        return !list.isEmpty() || super.canReuseUpdatedViewHolder(b02, list);
    }

    public final void d(ArrayList arrayList, B0 b02) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C1293m c1293m = (C1293m) arrayList.get(size);
            if (e(c1293m, b02) && c1293m.f18421a == null && c1293m.f18422b == null) {
                arrayList.remove(c1293m);
            }
        }
    }

    public final boolean e(C1293m c1293m, B0 b02) {
        boolean z6 = false;
        if (c1293m.f18422b == b02) {
            c1293m.f18422b = null;
        } else {
            if (c1293m.f18421a != b02) {
                return false;
            }
            c1293m.f18421a = null;
            z6 = true;
        }
        b02.f18217a.setAlpha(1.0f);
        View view = b02.f18217a;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        dispatchChangeFinished(b02, z6);
        return true;
    }

    @Override // m1.AbstractC1272b0
    @SuppressLint({"UnknownNullness"})
    public void endAnimation(B0 b02) {
        View view = b02.f18217a;
        view.animate().cancel();
        ArrayList arrayList = this.f18439j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((C1295n) arrayList.get(size)).f18427a == b02) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchMoveFinished(b02);
                arrayList.remove(size);
            }
        }
        d(this.f18440k, b02);
        if (this.f18437h.remove(b02)) {
            view.setAlpha(1.0f);
            dispatchRemoveFinished(b02);
        }
        if (this.f18438i.remove(b02)) {
            view.setAlpha(1.0f);
            dispatchAddFinished(b02);
        }
        ArrayList arrayList2 = this.f18443n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            d(arrayList3, b02);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.f18442m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            int size4 = arrayList5.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((C1295n) arrayList5.get(size4)).f18427a == b02) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(b02);
                    arrayList5.remove(size4);
                    if (arrayList5.isEmpty()) {
                        arrayList4.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        ArrayList arrayList6 = this.f18441l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(b02)) {
                view.setAlpha(1.0f);
                dispatchAddFinished(b02);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.f18446q.remove(b02);
        this.f18444o.remove(b02);
        this.f18447r.remove(b02);
        this.f18445p.remove(b02);
        c();
    }

    @Override // m1.AbstractC1272b0
    public void endAnimations() {
        ArrayList arrayList = this.f18439j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C1295n c1295n = (C1295n) arrayList.get(size);
            View view = c1295n.f18427a.f18217a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(c1295n.f18427a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.f18437h;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished((B0) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.f18438i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            B0 b02 = (B0) arrayList3.get(size3);
            b02.f18217a.setAlpha(1.0f);
            dispatchAddFinished(b02);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.f18440k;
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            C1293m c1293m = (C1293m) arrayList4.get(size4);
            B0 b03 = c1293m.f18421a;
            if (b03 != null) {
                e(c1293m, b03);
            }
            B0 b04 = c1293m.f18422b;
            if (b04 != null) {
                e(c1293m, b04);
            }
        }
        arrayList4.clear();
        if (isRunning()) {
            ArrayList arrayList5 = this.f18442m;
            for (int size5 = arrayList5.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                for (int size6 = arrayList6.size() - 1; size6 >= 0; size6--) {
                    C1295n c1295n2 = (C1295n) arrayList6.get(size6);
                    View view2 = c1295n2.f18427a.f18217a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    dispatchMoveFinished(c1295n2.f18427a);
                    arrayList6.remove(size6);
                    if (arrayList6.isEmpty()) {
                        arrayList5.remove(arrayList6);
                    }
                }
            }
            ArrayList arrayList7 = this.f18441l;
            for (int size7 = arrayList7.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                for (int size8 = arrayList8.size() - 1; size8 >= 0; size8--) {
                    B0 b05 = (B0) arrayList8.get(size8);
                    b05.f18217a.setAlpha(1.0f);
                    dispatchAddFinished(b05);
                    arrayList8.remove(size8);
                    if (arrayList8.isEmpty()) {
                        arrayList7.remove(arrayList8);
                    }
                }
            }
            ArrayList arrayList9 = this.f18443n;
            for (int size9 = arrayList9.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    C1293m c1293m2 = (C1293m) arrayList10.get(size10);
                    B0 b06 = c1293m2.f18421a;
                    if (b06 != null) {
                        e(c1293m2, b06);
                    }
                    B0 b07 = c1293m2.f18422b;
                    if (b07 != null) {
                        e(c1293m2, b07);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList9.remove(arrayList10);
                    }
                }
            }
            b(this.f18446q);
            b(this.f18445p);
            b(this.f18444o);
            b(this.f18447r);
            dispatchAnimationsFinished();
        }
    }

    public final void f(B0 b02) {
        if (f18436s == null) {
            f18436s = new ValueAnimator().getInterpolator();
        }
        b02.f18217a.animate().setInterpolator(f18436s);
        endAnimation(b02);
    }

    @Override // m1.AbstractC1272b0
    public boolean isRunning() {
        return (this.f18438i.isEmpty() && this.f18440k.isEmpty() && this.f18439j.isEmpty() && this.f18437h.isEmpty() && this.f18445p.isEmpty() && this.f18446q.isEmpty() && this.f18444o.isEmpty() && this.f18447r.isEmpty() && this.f18442m.isEmpty() && this.f18441l.isEmpty() && this.f18443n.isEmpty()) ? false : true;
    }

    @Override // m1.AbstractC1272b0
    public void runPendingAnimations() {
        ArrayList arrayList = this.f18437h;
        boolean isEmpty = arrayList.isEmpty();
        ArrayList arrayList2 = this.f18439j;
        boolean isEmpty2 = arrayList2.isEmpty();
        ArrayList arrayList3 = this.f18440k;
        boolean isEmpty3 = arrayList3.isEmpty();
        ArrayList arrayList4 = this.f18438i;
        boolean isEmpty4 = arrayList4.isEmpty();
        if (isEmpty && isEmpty2 && isEmpty4 && isEmpty3) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            B0 b02 = (B0) it.next();
            View view = b02.f18217a;
            ViewPropertyAnimator animate = view.animate();
            this.f18446q.add(b02);
            animate.setDuration(getRemoveDuration()).alpha(0.0f).setListener(new C1283h(view, animate, this, b02)).start();
        }
        arrayList.clear();
        if (!isEmpty2) {
            ArrayList arrayList5 = new ArrayList();
            arrayList5.addAll(arrayList2);
            this.f18442m.add(arrayList5);
            arrayList2.clear();
            RunnableC1277e runnableC1277e = new RunnableC1277e(this, arrayList5);
            if (isEmpty) {
                runnableC1277e.run();
            } else {
                AbstractC0181p0.postOnAnimationDelayed(((C1295n) arrayList5.get(0)).f18427a.f18217a, runnableC1277e, getRemoveDuration());
            }
        }
        if (!isEmpty3) {
            ArrayList arrayList6 = new ArrayList();
            arrayList6.addAll(arrayList3);
            this.f18443n.add(arrayList6);
            arrayList3.clear();
            RunnableC1279f runnableC1279f = new RunnableC1279f(this, arrayList6);
            if (isEmpty) {
                runnableC1279f.run();
            } else {
                AbstractC0181p0.postOnAnimationDelayed(((C1293m) arrayList6.get(0)).f18421a.f18217a, runnableC1279f, getRemoveDuration());
            }
        }
        if (isEmpty4) {
            return;
        }
        ArrayList arrayList7 = new ArrayList();
        arrayList7.addAll(arrayList4);
        this.f18441l.add(arrayList7);
        arrayList4.clear();
        RunnableC1281g runnableC1281g = new RunnableC1281g(this, arrayList7);
        if (isEmpty && isEmpty2 && isEmpty3) {
            runnableC1281g.run();
        } else {
            AbstractC0181p0.postOnAnimationDelayed(((B0) arrayList7.get(0)).f18217a, runnableC1281g, Math.max(!isEmpty2 ? getMoveDuration() : 0L, isEmpty3 ? 0L : getChangeDuration()) + (!isEmpty ? getRemoveDuration() : 0L));
        }
    }
}
