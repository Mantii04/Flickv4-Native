package androidx.fragment.app;

import M.AbstractC0181p0;
import android.util.Log;
import android.view.ViewGroup;
import androidx.fragment.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class M0 {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f6142a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f6143b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f6144c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public boolean f6145d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6146e = false;

    public M0(ViewGroup viewGroup) {
        this.f6142a = viewGroup;
    }

    public static M0 f(ViewGroup viewGroup, Y y6) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof M0) {
            return (M0) tag;
        }
        M0 createController = y6.createController(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, createController);
        return createController;
    }

    public static M0 g(ViewGroup viewGroup, AbstractC0467i0 abstractC0467i0) {
        return f(viewGroup, abstractC0467i0.z());
    }

    public final void a(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact, s0 s0Var) {
        synchronized (this.f6143b) {
            try {
                I.f fVar = new I.f();
                L0 d7 = d(s0Var.f6304c);
                if (d7 != null) {
                    d7.b(specialEffectsController$Operation$State, specialEffectsController$Operation$LifecycleImpact);
                    return;
                }
                J0 j02 = new J0(specialEffectsController$Operation$State, specialEffectsController$Operation$LifecycleImpact, s0Var, fVar);
                this.f6143b.add(j02);
                j02.f6137d.add(new H0(this, j02));
                j02.f6137d.add(new I0(this, j02));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void b(ArrayList arrayList, boolean z6);

    public final void c() {
        if (this.f6146e) {
            return;
        }
        if (!AbstractC0181p0.isAttachedToWindow(this.f6142a)) {
            e();
            this.f6145d = false;
            return;
        }
        synchronized (this.f6143b) {
            try {
                if (!this.f6143b.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.f6144c);
                    this.f6144c.clear();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        L0 l02 = (L0) it.next();
                        if (AbstractC0467i0.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + l02);
                        }
                        l02.a();
                        if (!l02.f6140g) {
                            this.f6144c.add(l02);
                        }
                    }
                    h();
                    ArrayList arrayList2 = new ArrayList(this.f6143b);
                    this.f6143b.clear();
                    this.f6144c.addAll(arrayList2);
                    if (AbstractC0467i0.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((L0) it2.next()).c();
                    }
                    b(arrayList2, this.f6145d);
                    this.f6145d = false;
                    if (AbstractC0467i0.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final L0 d(C c7) {
        Iterator it = this.f6143b.iterator();
        while (it.hasNext()) {
            L0 l02 = (L0) it.next();
            if (l02.getFragment().equals(c7) && !l02.f6139f) {
                return l02;
            }
        }
        return null;
    }

    public final void e() {
        String str;
        String str2;
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean isAttachedToWindow = AbstractC0181p0.isAttachedToWindow(this.f6142a);
        synchronized (this.f6143b) {
            try {
                h();
                Iterator it = this.f6143b.iterator();
                while (it.hasNext()) {
                    ((L0) it.next()).c();
                }
                Iterator it2 = new ArrayList(this.f6144c).iterator();
                while (it2.hasNext()) {
                    L0 l02 = (L0) it2.next();
                    if (AbstractC0467i0.isLoggingEnabled(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        if (isAttachedToWindow) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.f6142a + " is not attached to window. ";
                        }
                        sb.append(str2);
                        sb.append("Cancelling running operation ");
                        sb.append(l02);
                        Log.v("FragmentManager", sb.toString());
                    }
                    l02.a();
                }
                Iterator it3 = new ArrayList(this.f6143b).iterator();
                while (it3.hasNext()) {
                    L0 l03 = (L0) it3.next();
                    if (AbstractC0467i0.isLoggingEnabled(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        if (isAttachedToWindow) {
                            str = "";
                        } else {
                            str = "Container " + this.f6142a + " is not attached to window. ";
                        }
                        sb2.append(str);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(l03);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    l03.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ViewGroup getContainer() {
        return this.f6142a;
    }

    public final void h() {
        Iterator it = this.f6143b.iterator();
        while (it.hasNext()) {
            L0 l02 = (L0) it.next();
            if (l02.f6135b == SpecialEffectsController$Operation$LifecycleImpact.f6157e) {
                l02.b(SpecialEffectsController$Operation$State.d(l02.getFragment().requireView().getVisibility()), SpecialEffectsController$Operation$LifecycleImpact.f6156b);
            }
        }
    }
}
