package L0;

import G2.t;
import android.R;
import android.view.View;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Queue;
import p2.C1494e;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public final Object f1833a;

    public /* synthetic */ f(Object obj) {
        this.f1833a = obj;
    }

    public C1494e a() {
        C1494e c1494e;
        synchronized (((ArrayDeque) this.f1833a)) {
            c1494e = (C1494e) ((ArrayDeque) this.f1833a).poll();
        }
        return c1494e == null ? new C1494e() : c1494e;
    }

    public void b(C1494e c1494e) {
        synchronized (((ArrayDeque) this.f1833a)) {
            if (((ArrayDeque) this.f1833a).size() < 10) {
                ((ArrayDeque) this.f1833a).offer(c1494e);
            }
        }
    }

    public synchronized void c(k2.e eVar) {
        eVar.clear();
        ((Queue) this.f1833a).offer(eVar);
    }

    public void d() {
        View view;
        View view2 = (View) this.f1833a;
        if (view2 == null) {
            return;
        }
        if (view2.isInEditMode() || view2.onCheckIsTextEditor()) {
            view2.requestFocus();
            view = view2;
        } else {
            view = view2.getRootView().findFocus();
        }
        if (view == null) {
            view = view2.getRootView().findViewById(R.id.content);
        }
        if (view == null || !view.hasWindowFocus()) {
            return;
        }
        view.post(new A3.d(view, 11));
    }

    public f(int i2) {
        switch (i2) {
            case 4:
                this.f1833a = new ArrayDeque();
                break;
            case 5:
                this.f1833a = t.createQueue(0);
                break;
            default:
                this.f1833a = new HashMap();
                break;
        }
    }

    public f(ArrayList arrayList) {
        this.f1833a = Collections.unmodifiableList(arrayList);
    }
}
