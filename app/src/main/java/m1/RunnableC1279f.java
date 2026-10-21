package m1;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: m1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1279f implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f18371b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1297o f18372e;

    public RunnableC1279f(C1297o c1297o, ArrayList arrayList) {
        this.f18372e = c1297o;
        this.f18371b = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f18371b;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            C1297o c1297o = this.f18372e;
            if (!hasNext) {
                arrayList.clear();
                c1297o.f18443n.remove(arrayList);
                return;
            }
            C1293m c1293m = (C1293m) it.next();
            B0 b02 = c1293m.f18421a;
            View view = b02 == null ? null : b02.f18217a;
            B0 b03 = c1293m.f18422b;
            View view2 = b03 != null ? b03.f18217a : null;
            ArrayList arrayList2 = c1297o.f18447r;
            if (view != null) {
                ViewPropertyAnimator duration = view.animate().setDuration(c1297o.getChangeDuration());
                arrayList2.add(c1293m.f18421a);
                duration.translationX(c1293m.f18425e - c1293m.f18423c);
                duration.translationY(c1293m.f18426f - c1293m.f18424d);
                duration.alpha(0.0f).setListener(new C1289k(c1297o, c1293m, duration, view)).start();
            }
            if (view2 != null) {
                ViewPropertyAnimator animate = view2.animate();
                arrayList2.add(c1293m.f18422b);
                animate.translationX(0.0f).translationY(0.0f).setDuration(c1297o.getChangeDuration()).alpha(1.0f).setListener(new C1291l(c1297o, c1293m, animate, view2)).start();
            }
        }
    }
}
