package androidx.fragment.app;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class n0 extends androidx.lifecycle.X {

    /* renamed from: j, reason: collision with root package name */
    public static final C0475m0 f6271j = new C0475m0();

    /* renamed from: g, reason: collision with root package name */
    public final boolean f6275g;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f6272d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f6273e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f6274f = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    public boolean f6276h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6277i = false;

    public n0(boolean z6) {
        this.f6275g = z6;
    }

    public final void b(C c7) {
        if (this.f6277i) {
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        HashMap hashMap = this.f6272d;
        if (hashMap.containsKey(c7.f6087n)) {
            return;
        }
        hashMap.put(c7.f6087n, c7);
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + c7);
        }
    }

    public final void c(C c7) {
        if (AbstractC0467i0.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + c7);
        }
        d(c7.f6087n);
    }

    public final void d(String str) {
        HashMap hashMap = this.f6273e;
        n0 n0Var = (n0) hashMap.get(str);
        if (n0Var != null) {
            n0Var.onCleared();
            hashMap.remove(str);
        }
        HashMap hashMap2 = this.f6274f;
        androidx.lifecycle.i0 i0Var = (androidx.lifecycle.i0) hashMap2.get(str);
        if (i0Var != null) {
            i0Var.clear();
            hashMap2.remove(str);
        }
    }

    public final void e(C c7) {
        if (this.f6277i) {
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f6272d.remove(c7.f6087n) == null || !AbstractC0467i0.isLoggingEnabled(2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + c7);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && n0.class == obj.getClass()) {
            n0 n0Var = (n0) obj;
            if (this.f6272d.equals(n0Var.f6272d) && this.f6273e.equals(n0Var.f6273e) && this.f6274f.equals(n0Var.f6274f)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f6274f.hashCode() + ((this.f6273e.hashCode() + (this.f6272d.hashCode() * 31)) * 31);
    }

    @Override // androidx.lifecycle.X
    public void onCleared() {
        if (AbstractC0467i0.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f6276h = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f6272d.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f6273e.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f6274f.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
