package androidx.fragment.app;

import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class t0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6318a;

    /* renamed from: b, reason: collision with root package name */
    public final Cloneable f6319b;

    /* renamed from: c, reason: collision with root package name */
    public final Cloneable f6320c;

    /* renamed from: d, reason: collision with root package name */
    public Object f6321d;

    public t0(int i2) {
        switch (i2) {
            case 1:
                this.f6318a = new p.g();
                this.f6319b = new SparseArray();
                this.f6320c = new p.n();
                this.f6321d = new p.g();
                break;
            default:
                this.f6318a = new ArrayList();
                this.f6319b = new HashMap();
                this.f6320c = new HashMap();
                break;
        }
    }

    public void a(C c7) {
        if (((ArrayList) this.f6318a).contains(c7)) {
            throw new IllegalStateException("Fragment already added: " + c7);
        }
        synchronized (((ArrayList) this.f6318a)) {
            ((ArrayList) this.f6318a).add(c7);
        }
        c7.f6093u = true;
    }

    public C b(String str) {
        s0 s0Var = (s0) ((HashMap) this.f6319b).get(str);
        if (s0Var != null) {
            return s0Var.f6304c;
        }
        return null;
    }

    public C c(String str) {
        for (s0 s0Var : ((HashMap) this.f6319b).values()) {
            if (s0Var != null) {
                C c7 = s0Var.f6304c;
                if (!str.equals(c7.f6087n)) {
                    c7 = c7.f6055D.f6224c.c(str);
                }
                if (c7 != null) {
                    return c7;
                }
            }
        }
        return null;
    }

    public ArrayList d() {
        ArrayList arrayList = new ArrayList();
        for (s0 s0Var : ((HashMap) this.f6319b).values()) {
            if (s0Var != null) {
                arrayList.add(s0Var);
            }
        }
        return arrayList;
    }

    public ArrayList e() {
        ArrayList arrayList = new ArrayList();
        for (s0 s0Var : ((HashMap) this.f6319b).values()) {
            if (s0Var != null) {
                arrayList.add(s0Var.f6304c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public List f() {
        ArrayList arrayList;
        if (((ArrayList) this.f6318a).isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (((ArrayList) this.f6318a)) {
            arrayList = new ArrayList((ArrayList) this.f6318a);
        }
        return arrayList;
    }

    public void g(s0 s0Var) {
        C c7 = s0Var.f6304c;
        String str = c7.f6087n;
        HashMap hashMap = (HashMap) this.f6319b;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(c7.f6087n, s0Var);
        if (c7.f6063L) {
            if (c7.f6062K) {
                ((n0) this.f6321d).b(c7);
            } else {
                ((n0) this.f6321d).e(c7);
            }
            c7.f6063L = false;
        }
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + c7);
        }
    }

    public void h(s0 s0Var) {
        C c7 = s0Var.f6304c;
        if (c7.f6062K) {
            ((n0) this.f6321d).e(c7);
        }
        if (((s0) ((HashMap) this.f6319b).put(c7.f6087n, null)) != null && AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + c7);
        }
    }
}
