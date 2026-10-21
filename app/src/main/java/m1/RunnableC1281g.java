package m1;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: m1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1281g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f18374b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1297o f18375e;

    public RunnableC1281g(C1297o c1297o, ArrayList arrayList) {
        this.f18375e = c1297o;
        this.f18374b = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f18374b;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            C1297o c1297o = this.f18375e;
            if (!hasNext) {
                arrayList.clear();
                c1297o.f18441l.remove(arrayList);
                return;
            } else {
                B0 b02 = (B0) it.next();
                View view = b02.f18217a;
                ViewPropertyAnimator animate = view.animate();
                c1297o.f18444o.add(b02);
                animate.alpha(1.0f).setDuration(c1297o.getAddDuration()).setListener(new C1285i(view, animate, c1297o, b02)).start();
            }
        }
    }
}
