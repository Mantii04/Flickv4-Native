package x1;

import android.view.ViewGroup;
import androidx.transition.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: x1.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1798B {

    /* renamed from: a, reason: collision with root package name */
    public static final C1799a f20772a = new C1799a();

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f20773b = new ThreadLocal();

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f20774c = new ArrayList();

    public static p.g a() {
        p.g gVar;
        ThreadLocal threadLocal = f20773b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (gVar = (p.g) weakReference.get()) != null) {
            return gVar;
        }
        p.g gVar2 = new p.g();
        threadLocal.set(new WeakReference(gVar2));
        return gVar2;
    }

    public static void beginDelayedTransition(ViewGroup viewGroup, androidx.transition.e eVar) {
        ArrayList arrayList = f20774c;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        arrayList.add(viewGroup);
        if (eVar == null) {
            eVar = f20772a;
        }
        androidx.transition.e mo63clone = eVar.mo63clone();
        ArrayList arrayList2 = (ArrayList) a().get(viewGroup);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((androidx.transition.e) it.next()).pause(viewGroup);
            }
        }
        if (mo63clone != null) {
            mo63clone.d(viewGroup, true);
        }
        androidx.transition.d.getCurrentScene(viewGroup);
        viewGroup.setTag(R.id.transition_current_scene, null);
        if (mo63clone != null) {
            ViewTreeObserverOnPreDrawListenerC1797A viewTreeObserverOnPreDrawListenerC1797A = new ViewTreeObserverOnPreDrawListenerC1797A();
            viewTreeObserverOnPreDrawListenerC1797A.f20770b = mo63clone;
            viewTreeObserverOnPreDrawListenerC1797A.f20771e = viewGroup;
            viewGroup.addOnAttachStateChangeListener(viewTreeObserverOnPreDrawListenerC1797A);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC1797A);
        }
    }
}
