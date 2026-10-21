package m1;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: m1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1277e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f18368b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1297o f18369e;

    public RunnableC1277e(C1297o c1297o, ArrayList arrayList) {
        this.f18369e = c1297o;
        this.f18368b = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f18368b;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            C1297o c1297o = this.f18369e;
            if (!hasNext) {
                arrayList.clear();
                c1297o.f18442m.remove(arrayList);
                return;
            }
            C1295n c1295n = (C1295n) it.next();
            B0 b02 = c1295n.f18427a;
            View view = b02.f18217a;
            int i2 = c1295n.f18430d - c1295n.f18428b;
            int i7 = c1295n.f18431e - c1295n.f18429c;
            if (i2 != 0) {
                view.animate().translationX(0.0f);
            }
            if (i7 != 0) {
                view.animate().translationY(0.0f);
            }
            ViewPropertyAnimator animate = view.animate();
            c1297o.f18445p.add(b02);
            animate.setDuration(c1297o.getMoveDuration()).setListener(new C1287j(c1297o, b02, i2, view, i7, animate)).start();
        }
    }
}
