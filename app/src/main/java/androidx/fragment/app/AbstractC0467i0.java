package androidx.fragment.app;

import M.InterfaceC0195x;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.fragment.R;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$State;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import d.C0773d;
import d.C0775f;
import g0.C0940c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import z.C1974u;

/* renamed from: androidx.fragment.app.i0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0467i0 {

    /* renamed from: A, reason: collision with root package name */
    public androidx.activity.result.d f6209A;

    /* renamed from: B, reason: collision with root package name */
    public androidx.activity.result.d f6210B;

    /* renamed from: C, reason: collision with root package name */
    public ArrayDeque f6211C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f6212D;

    /* renamed from: E, reason: collision with root package name */
    public boolean f6213E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f6214F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f6215G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f6216H;

    /* renamed from: I, reason: collision with root package name */
    public ArrayList f6217I;

    /* renamed from: J, reason: collision with root package name */
    public ArrayList f6218J;

    /* renamed from: K, reason: collision with root package name */
    public ArrayList f6219K;

    /* renamed from: L, reason: collision with root package name */
    public n0 f6220L;

    /* renamed from: M, reason: collision with root package name */
    public final Z f6221M;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6223b;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f6225d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f6226e;

    /* renamed from: g, reason: collision with root package name */
    public OnBackPressedDispatcher f6228g;

    /* renamed from: l, reason: collision with root package name */
    public final C.k f6233l;

    /* renamed from: m, reason: collision with root package name */
    public final CopyOnWriteArrayList f6234m;

    /* renamed from: n, reason: collision with root package name */
    public final T f6235n;

    /* renamed from: o, reason: collision with root package name */
    public final T f6236o;

    /* renamed from: p, reason: collision with root package name */
    public final T f6237p;

    /* renamed from: q, reason: collision with root package name */
    public final T f6238q;

    /* renamed from: r, reason: collision with root package name */
    public final W f6239r;

    /* renamed from: s, reason: collision with root package name */
    public int f6240s;

    /* renamed from: t, reason: collision with root package name */
    public P f6241t;

    /* renamed from: u, reason: collision with root package name */
    public L f6242u;

    /* renamed from: v, reason: collision with root package name */
    public C f6243v;

    /* renamed from: w, reason: collision with root package name */
    public C f6244w;

    /* renamed from: x, reason: collision with root package name */
    public final X f6245x;

    /* renamed from: y, reason: collision with root package name */
    public final Y f6246y;

    /* renamed from: z, reason: collision with root package name */
    public androidx.activity.result.d f6247z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f6222a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final t0 f6224c = new t0(0);

    /* renamed from: f, reason: collision with root package name */
    public final S f6227f = new S(this);

    /* renamed from: h, reason: collision with root package name */
    public final V f6229h = new V(this);

    /* renamed from: i, reason: collision with root package name */
    public final AtomicInteger f6230i = new AtomicInteger();

    /* renamed from: j, reason: collision with root package name */
    public final Map f6231j = Collections.synchronizedMap(new HashMap());

    /* renamed from: k, reason: collision with root package name */
    public final Map f6232k = Collections.synchronizedMap(new HashMap());

    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.fragment.app.T] */
    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.fragment.app.T] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.fragment.app.T] */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.fragment.app.T] */
    public AbstractC0467i0() {
        Collections.synchronizedMap(new HashMap());
        C.k kVar = new C.k();
        kVar.f325a = new CopyOnWriteArrayList();
        kVar.f326b = this;
        this.f6233l = kVar;
        this.f6234m = new CopyOnWriteArrayList();
        final int i2 = 0;
        this.f6235n = new L.a(this) { // from class: androidx.fragment.app.T

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ AbstractC0467i0 f6166b;

            {
                this.f6166b = this;
            }

            @Override // L.a
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        AbstractC0467i0 abstractC0467i0 = this.f6166b;
                        if (abstractC0467i0.C()) {
                            abstractC0467i0.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        AbstractC0467i0 abstractC0467i02 = this.f6166b;
                        if (abstractC0467i02.C() && num.intValue() == 80) {
                            abstractC0467i02.l(false);
                            break;
                        }
                        break;
                    case 2:
                        C1974u c1974u = (C1974u) obj;
                        AbstractC0467i0 abstractC0467i03 = this.f6166b;
                        if (abstractC0467i03.C()) {
                            abstractC0467i03.m(c1974u.isInMultiWindowMode(), false);
                            break;
                        }
                        break;
                    default:
                        z.S s6 = (z.S) obj;
                        AbstractC0467i0 abstractC0467i04 = this.f6166b;
                        if (abstractC0467i04.C()) {
                            abstractC0467i04.r(s6.isInPictureInPictureMode(), false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i7 = 1;
        this.f6236o = new L.a(this) { // from class: androidx.fragment.app.T

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ AbstractC0467i0 f6166b;

            {
                this.f6166b = this;
            }

            @Override // L.a
            public final void accept(Object obj) {
                switch (i7) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        AbstractC0467i0 abstractC0467i0 = this.f6166b;
                        if (abstractC0467i0.C()) {
                            abstractC0467i0.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        AbstractC0467i0 abstractC0467i02 = this.f6166b;
                        if (abstractC0467i02.C() && num.intValue() == 80) {
                            abstractC0467i02.l(false);
                            break;
                        }
                        break;
                    case 2:
                        C1974u c1974u = (C1974u) obj;
                        AbstractC0467i0 abstractC0467i03 = this.f6166b;
                        if (abstractC0467i03.C()) {
                            abstractC0467i03.m(c1974u.isInMultiWindowMode(), false);
                            break;
                        }
                        break;
                    default:
                        z.S s6 = (z.S) obj;
                        AbstractC0467i0 abstractC0467i04 = this.f6166b;
                        if (abstractC0467i04.C()) {
                            abstractC0467i04.r(s6.isInPictureInPictureMode(), false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i8 = 2;
        this.f6237p = new L.a(this) { // from class: androidx.fragment.app.T

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ AbstractC0467i0 f6166b;

            {
                this.f6166b = this;
            }

            @Override // L.a
            public final void accept(Object obj) {
                switch (i8) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        AbstractC0467i0 abstractC0467i0 = this.f6166b;
                        if (abstractC0467i0.C()) {
                            abstractC0467i0.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        AbstractC0467i0 abstractC0467i02 = this.f6166b;
                        if (abstractC0467i02.C() && num.intValue() == 80) {
                            abstractC0467i02.l(false);
                            break;
                        }
                        break;
                    case 2:
                        C1974u c1974u = (C1974u) obj;
                        AbstractC0467i0 abstractC0467i03 = this.f6166b;
                        if (abstractC0467i03.C()) {
                            abstractC0467i03.m(c1974u.isInMultiWindowMode(), false);
                            break;
                        }
                        break;
                    default:
                        z.S s6 = (z.S) obj;
                        AbstractC0467i0 abstractC0467i04 = this.f6166b;
                        if (abstractC0467i04.C()) {
                            abstractC0467i04.r(s6.isInPictureInPictureMode(), false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i9 = 3;
        this.f6238q = new L.a(this) { // from class: androidx.fragment.app.T

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ AbstractC0467i0 f6166b;

            {
                this.f6166b = this;
            }

            @Override // L.a
            public final void accept(Object obj) {
                switch (i9) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        AbstractC0467i0 abstractC0467i0 = this.f6166b;
                        if (abstractC0467i0.C()) {
                            abstractC0467i0.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        AbstractC0467i0 abstractC0467i02 = this.f6166b;
                        if (abstractC0467i02.C() && num.intValue() == 80) {
                            abstractC0467i02.l(false);
                            break;
                        }
                        break;
                    case 2:
                        C1974u c1974u = (C1974u) obj;
                        AbstractC0467i0 abstractC0467i03 = this.f6166b;
                        if (abstractC0467i03.C()) {
                            abstractC0467i03.m(c1974u.isInMultiWindowMode(), false);
                            break;
                        }
                        break;
                    default:
                        z.S s6 = (z.S) obj;
                        AbstractC0467i0 abstractC0467i04 = this.f6166b;
                        if (abstractC0467i04.C()) {
                            abstractC0467i04.r(s6.isInPictureInPictureMode(), false);
                            break;
                        }
                        break;
                }
            }
        };
        this.f6239r = new W(this);
        this.f6240s = -1;
        this.f6245x = new X(this);
        this.f6246y = new Y();
        this.f6211C = new ArrayDeque();
        this.f6221M = new Z(this);
    }

    public static boolean B(C c7) {
        if (c7.f6064M && c7.f6065N) {
            return true;
        }
        Iterator it = c7.f6055D.f6224c.e().iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            C c8 = (C) it.next();
            if (c8 != null) {
                z6 = B(c8);
            }
            if (z6) {
                return true;
            }
        }
        return false;
    }

    public static boolean D(C c7) {
        if (c7 == null) {
            return true;
        }
        AbstractC0467i0 abstractC0467i0 = c7.f6053B;
        return c7.equals(abstractC0467i0.getPrimaryNavigationFragment()) && D(abstractC0467i0.f6243v);
    }

    public static void Q(C c7) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "show: " + c7);
        }
        if (c7.f6060I) {
            c7.f6060I = false;
            c7.f6072U = !c7.f6072U;
        }
    }

    public static boolean isLoggingEnabled(int i2) {
        return Log.isLoggable("FragmentManager", i2);
    }

    public final void A(C c7) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "hide: " + c7);
        }
        if (c7.f6060I) {
            return;
        }
        c7.f6060I = true;
        c7.f6072U = true ^ c7.f6072U;
        P(c7);
    }

    public final boolean C() {
        C c7 = this.f6243v;
        if (c7 == null) {
            return true;
        }
        return c7.isAdded() && this.f6243v.getParentFragmentManager().C();
    }

    public final void E(int i2, boolean z6) {
        HashMap hashMap;
        P p6;
        if (this.f6241t == null && i2 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z6 || i2 != this.f6240s) {
            this.f6240s = i2;
            t0 t0Var = this.f6224c;
            Iterator it = ((ArrayList) t0Var.f6318a).iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                hashMap = (HashMap) t0Var.f6319b;
                if (!hasNext) {
                    break;
                }
                s0 s0Var = (s0) hashMap.get(((C) it.next()).f6087n);
                if (s0Var != null) {
                    s0Var.k();
                }
            }
            for (s0 s0Var2 : hashMap.values()) {
                if (s0Var2 != null) {
                    s0Var2.k();
                    C c7 = s0Var2.f6304c;
                    if (c7.f6094v && !c7.f()) {
                        t0Var.h(s0Var2);
                    }
                }
            }
            Iterator it2 = t0Var.d().iterator();
            while (it2.hasNext()) {
                s0 s0Var3 = (s0) it2.next();
                C c8 = s0Var3.f6304c;
                if (c8.f6069R) {
                    if (this.f6223b) {
                        this.f6216H = true;
                    } else {
                        c8.f6069R = false;
                        s0Var3.k();
                    }
                }
            }
            if (this.f6212D && (p6 = this.f6241t) != null && this.f6240s == 7) {
                p6.onSupportInvalidateOptionsMenu();
                this.f6212D = false;
            }
        }
    }

    public final void F() {
        if (this.f6241t == null) {
            return;
        }
        this.f6213E = false;
        this.f6214F = false;
        this.f6220L.f6277i = false;
        for (C c7 : this.f6224c.f()) {
            if (c7 != null) {
                c7.f6055D.F();
            }
        }
    }

    public final boolean G(ArrayList arrayList, ArrayList arrayList2, int i2, int i7) {
        boolean z6 = (i7 & 1) != 0;
        ArrayList arrayList3 = this.f6225d;
        int i8 = -1;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            if (i2 < 0) {
                i8 = z6 ? 0 : this.f6225d.size() - 1;
            } else {
                int size = this.f6225d.size() - 1;
                while (size >= 0) {
                    C0450a c0450a = (C0450a) this.f6225d.get(size);
                    if (i2 >= 0 && i2 == c0450a.f6174r) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    i8 = size;
                } else if (z6) {
                    i8 = size;
                    while (i8 > 0) {
                        C0450a c0450a2 = (C0450a) this.f6225d.get(i8 - 1);
                        if (i2 < 0 || i2 != c0450a2.f6174r) {
                            break;
                        }
                        i8--;
                    }
                } else if (size != this.f6225d.size() - 1) {
                    i8 = size + 1;
                }
            }
        }
        if (i8 < 0) {
            return false;
        }
        for (int size2 = this.f6225d.size() - 1; size2 >= i8; size2--) {
            arrayList.add((C0450a) this.f6225d.remove(size2));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void H(C c7) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "remove: " + c7 + " nesting=" + c7.f6052A);
        }
        boolean f3 = c7.f();
        if (c7.f6061J && f3) {
            return;
        }
        t0 t0Var = this.f6224c;
        synchronized (((ArrayList) t0Var.f6318a)) {
            ((ArrayList) t0Var.f6318a).remove(c7);
        }
        c7.f6093u = false;
        if (B(c7)) {
            this.f6212D = true;
        }
        c7.f6094v = true;
        P(c7);
    }

    public final void I(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i2 = 0;
        int i7 = 0;
        while (i2 < size) {
            if (!((C0450a) arrayList.get(i2)).f6347o) {
                if (i7 != i2) {
                    x(arrayList, arrayList2, i7, i2);
                }
                i7 = i2 + 1;
                if (((Boolean) arrayList2.get(i2)).booleanValue()) {
                    while (i7 < size && ((Boolean) arrayList2.get(i7)).booleanValue() && !((C0450a) arrayList.get(i7)).f6347o) {
                        i7++;
                    }
                }
                x(arrayList, arrayList2, i2, i7);
                i2 = i7 - 1;
            }
            i2++;
        }
        if (i7 != size) {
            x(arrayList, arrayList2, i7, size);
        }
    }

    public final void J(Parcelable parcelable) {
        C.k kVar;
        s0 s0Var;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.f6241t.f6150e.getClassLoader());
                this.f6232k.put(str.substring(7), bundle2);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.f6241t.f6150e.getClassLoader());
                arrayList.add((q0) bundle.getParcelable(RemoteConfigConstants.ResponseFieldKey.STATE));
            }
        }
        t0 t0Var = this.f6224c;
        HashMap hashMap = (HashMap) t0Var.f6320c;
        hashMap.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            q0 q0Var = (q0) it.next();
            hashMap.put(q0Var.f6286e, q0Var);
        }
        C0473l0 c0473l0 = (C0473l0) bundle3.getParcelable(RemoteConfigConstants.ResponseFieldKey.STATE);
        if (c0473l0 == null) {
            return;
        }
        HashMap hashMap2 = (HashMap) t0Var.f6319b;
        hashMap2.clear();
        Iterator it2 = c0473l0.f6259b.iterator();
        while (true) {
            boolean hasNext = it2.hasNext();
            kVar = this.f6233l;
            if (!hasNext) {
                break;
            }
            q0 q0Var2 = (q0) ((HashMap) t0Var.f6320c).remove((String) it2.next());
            if (q0Var2 != null) {
                C c7 = (C) this.f6220L.f6272d.get(q0Var2.f6286e);
                if (c7 != null) {
                    if (isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + c7);
                    }
                    s0Var = new s0(kVar, t0Var, c7, q0Var2);
                } else {
                    s0Var = new s0(this.f6233l, this.f6224c, this.f6241t.f6150e.getClassLoader(), getFragmentFactory(), q0Var2);
                }
                C c8 = s0Var.f6304c;
                c8.f6053B = this;
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + c8.f6087n + "): " + c8);
                }
                s0Var.m(this.f6241t.f6150e.getClassLoader());
                t0Var.g(s0Var);
                s0Var.f6306e = this.f6240s;
            }
        }
        n0 n0Var = this.f6220L;
        n0Var.getClass();
        Iterator it3 = new ArrayList(n0Var.f6272d.values()).iterator();
        while (it3.hasNext()) {
            C c9 = (C) it3.next();
            if (hashMap2.get(c9.f6087n) == null) {
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + c9 + " that was not found in the set of active Fragments " + c0473l0.f6259b);
                }
                this.f6220L.e(c9);
                c9.f6053B = this;
                s0 s0Var2 = new s0(kVar, t0Var, c9);
                s0Var2.f6306e = 1;
                s0Var2.k();
                c9.f6094v = true;
                s0Var2.k();
            }
        }
        ArrayList<String> arrayList2 = c0473l0.f6260e;
        ((ArrayList) t0Var.f6318a).clear();
        if (arrayList2 != null) {
            for (String str3 : arrayList2) {
                C b7 = t0Var.b(str3);
                if (b7 == null) {
                    throw new IllegalStateException(A.i.l("No instantiated fragment for (", str3, ")"));
                }
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + b7);
                }
                t0Var.a(b7);
            }
        }
        if (c0473l0.f6261f != null) {
            this.f6225d = new ArrayList(c0473l0.f6261f.length);
            int i2 = 0;
            while (true) {
                C0454c[] c0454cArr = c0473l0.f6261f;
                if (i2 >= c0454cArr.length) {
                    break;
                }
                C0450a instantiate = c0454cArr[i2].instantiate(this);
                if (isLoggingEnabled(2)) {
                    StringBuilder q6 = A.i.q(i2, "restoreAllState: back stack #", " (index ");
                    q6.append(instantiate.f6174r);
                    q6.append("): ");
                    q6.append(instantiate);
                    Log.v("FragmentManager", q6.toString());
                    PrintWriter printWriter = new PrintWriter(new G0());
                    instantiate.dump("  ", printWriter, false);
                    printWriter.close();
                }
                this.f6225d.add(instantiate);
                i2++;
            }
        } else {
            this.f6225d = null;
        }
        this.f6230i.set(c0473l0.f6262j);
        String str4 = c0473l0.f6263m;
        if (str4 != null) {
            C b8 = t0Var.b(str4);
            this.f6244w = b8;
            q(b8);
        }
        ArrayList arrayList3 = c0473l0.f6264n;
        if (arrayList3 != null) {
            for (int i7 = 0; i7 < arrayList3.size(); i7++) {
                this.f6231j.put((String) arrayList3.get(i7), (C0458e) c0473l0.f6265p.get(i7));
            }
        }
        this.f6211C = new ArrayDeque(c0473l0.f6266q);
    }

    public final Bundle K() {
        int i2;
        C0454c[] c0454cArr;
        ArrayList arrayList;
        int size;
        Bundle bundle = new Bundle();
        Iterator it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            M0 m02 = (M0) it.next();
            if (m02.f6146e) {
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                m02.f6146e = false;
                m02.c();
            }
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            ((M0) it2.next()).e();
        }
        w(true);
        this.f6213E = true;
        this.f6220L.f6277i = true;
        t0 t0Var = this.f6224c;
        t0Var.getClass();
        HashMap hashMap = (HashMap) t0Var.f6319b;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        Iterator it3 = hashMap.values().iterator();
        while (true) {
            c0454cArr = null;
            c0454cArr = null;
            if (!it3.hasNext()) {
                break;
            }
            s0 s0Var = (s0) it3.next();
            if (s0Var != null) {
                C c7 = s0Var.f6304c;
                q0 q0Var = new q0(c7);
                if (c7.f6079b <= -1 || q0Var.f6297v != null) {
                    q0Var.f6297v = c7.f6083e;
                } else {
                    Bundle bundle2 = new Bundle();
                    c7.onSaveInstanceState(bundle2);
                    c7.f6080b0.performSave(bundle2);
                    bundle2.putParcelable("android:support:fragments", c7.f6055D.K());
                    s0Var.f6302a.k(false);
                    Bundle bundle3 = bundle2.isEmpty() ? null : bundle2;
                    if (c7.f6068Q != null) {
                        s0Var.o();
                    }
                    if (c7.f6084f != null) {
                        if (bundle3 == null) {
                            bundle3 = new Bundle();
                        }
                        bundle3.putSparseParcelableArray("android:view_state", c7.f6084f);
                    }
                    if (c7.f6085j != null) {
                        if (bundle3 == null) {
                            bundle3 = new Bundle();
                        }
                        bundle3.putBundle("android:view_registry_state", c7.f6085j);
                    }
                    if (!c7.f6070S) {
                        if (bundle3 == null) {
                            bundle3 = new Bundle();
                        }
                        bundle3.putBoolean("android:user_visible_hint", c7.f6070S);
                    }
                    q0Var.f6297v = bundle3;
                    if (c7.f6090r != null) {
                        if (bundle3 == null) {
                            q0Var.f6297v = new Bundle();
                        }
                        q0Var.f6297v.putString("android:target_state", c7.f6090r);
                        int i7 = c7.f6091s;
                        if (i7 != 0) {
                            q0Var.f6297v.putInt("android:target_req_state", i7);
                        }
                    }
                }
                C c8 = s0Var.f6304c;
                arrayList2.add(c8.f6087n);
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Saved state of " + c8 + ": " + c8.f6083e);
                }
            }
        }
        t0 t0Var2 = this.f6224c;
        t0Var2.getClass();
        ArrayList arrayList3 = new ArrayList(((HashMap) t0Var2.f6320c).values());
        if (!arrayList3.isEmpty()) {
            t0 t0Var3 = this.f6224c;
            synchronized (((ArrayList) t0Var3.f6318a)) {
                try {
                    if (((ArrayList) t0Var3.f6318a).isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(((ArrayList) t0Var3.f6318a).size());
                        Iterator it4 = ((ArrayList) t0Var3.f6318a).iterator();
                        while (it4.hasNext()) {
                            C c9 = (C) it4.next();
                            arrayList.add(c9.f6087n);
                            if (isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "saveAllState: adding fragment (" + c9.f6087n + "): " + c9);
                            }
                        }
                    }
                } finally {
                }
            }
            ArrayList arrayList4 = this.f6225d;
            if (arrayList4 != null && (size = arrayList4.size()) > 0) {
                c0454cArr = new C0454c[size];
                for (i2 = 0; i2 < size; i2++) {
                    c0454cArr[i2] = new C0454c((C0450a) this.f6225d.get(i2));
                    if (isLoggingEnabled(2)) {
                        StringBuilder q6 = A.i.q(i2, "saveAllState: adding back stack #", ": ");
                        q6.append(this.f6225d.get(i2));
                        Log.v("FragmentManager", q6.toString());
                    }
                }
            }
            C0473l0 c0473l0 = new C0473l0();
            c0473l0.f6259b = arrayList2;
            c0473l0.f6260e = arrayList;
            c0473l0.f6261f = c0454cArr;
            c0473l0.f6262j = this.f6230i.get();
            C c10 = this.f6244w;
            if (c10 != null) {
                c0473l0.f6263m = c10.f6087n;
            }
            c0473l0.f6264n.addAll(this.f6231j.keySet());
            c0473l0.f6265p.addAll(this.f6231j.values());
            c0473l0.f6266q = new ArrayList(this.f6211C);
            bundle.putParcelable(RemoteConfigConstants.ResponseFieldKey.STATE, c0473l0);
            for (String str : this.f6232k.keySet()) {
                bundle.putBundle(A.i.k("result_", str), (Bundle) this.f6232k.get(str));
            }
            Iterator it5 = arrayList3.iterator();
            while (it5.hasNext()) {
                q0 q0Var2 = (q0) it5.next();
                Bundle bundle4 = new Bundle();
                bundle4.putParcelable(RemoteConfigConstants.ResponseFieldKey.STATE, q0Var2);
                bundle.putBundle("fragment_" + q0Var2.f6286e, bundle4);
            }
        } else if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return bundle;
        }
        return bundle;
    }

    public final void L() {
        synchronized (this.f6222a) {
            try {
                if (this.f6222a.size() == 1) {
                    this.f6241t.getHandler().removeCallbacks(this.f6221M);
                    this.f6241t.getHandler().post(this.f6221M);
                    S();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void M(C c7, boolean z6) {
        ViewGroup y6 = y(c7);
        if (y6 == null || !(y6 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) y6).setDrawDisappearingViewsLast(!z6);
    }

    public final void N(C c7, Lifecycle$State lifecycle$State) {
        if (c7.equals(this.f6224c.b(c7.f6087n)) && (c7.f6054C == null || c7.f6053B == this)) {
            c7.f6075X = lifecycle$State;
            return;
        }
        throw new IllegalArgumentException("Fragment " + c7 + " is not an active fragment of FragmentManager " + this);
    }

    public final void O(C c7) {
        if (c7 != null) {
            if (!c7.equals(this.f6224c.b(c7.f6087n)) || (c7.f6054C != null && c7.f6053B != this)) {
                throw new IllegalArgumentException("Fragment " + c7 + " is not an active fragment of FragmentManager " + this);
            }
        }
        C c8 = this.f6244w;
        this.f6244w = c7;
        q(c8);
        q(this.f6244w);
    }

    public final void P(C c7) {
        ViewGroup y6 = y(c7);
        if (y6 != null) {
            B b7 = c7.f6071T;
            if ((b7 == null ? 0 : b7.f6041e) + (b7 == null ? 0 : b7.f6040d) + (b7 == null ? 0 : b7.f6039c) + (b7 == null ? 0 : b7.f6038b) > 0) {
                if (y6.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    y6.setTag(R.id.visible_removing_fragment_view_tag, c7);
                }
                C c8 = (C) y6.getTag(R.id.visible_removing_fragment_view_tag);
                B b8 = c7.f6071T;
                boolean z6 = b8 != null ? b8.f6037a : false;
                if (c8.f6071T == null) {
                    return;
                }
                c8.b().f6037a = z6;
            }
        }
    }

    public final void R(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new G0());
        P p6 = this.f6241t;
        if (p6 != null) {
            try {
                p6.onDump("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e3) {
                Log.e("FragmentManager", "Failed dumping state", e3);
                throw illegalStateException;
            }
        }
        try {
            dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e7) {
            Log.e("FragmentManager", "Failed dumping state", e7);
            throw illegalStateException;
        }
    }

    public final void S() {
        synchronized (this.f6222a) {
            try {
                if (this.f6222a.isEmpty()) {
                    this.f6229h.setEnabled(getBackStackEntryCount() > 0 && D(this.f6243v));
                } else {
                    this.f6229h.setEnabled(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final s0 a(C c7) {
        String str = c7.f6074W;
        if (str != null) {
            g0.d.onFragmentReuse(c7, str);
        }
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "add: " + c7);
        }
        s0 f3 = f(c7);
        c7.f6053B = this;
        t0 t0Var = this.f6224c;
        t0Var.g(f3);
        if (!c7.f6061J) {
            t0Var.a(c7);
            c7.f6094v = false;
            if (c7.f6068Q == null) {
                c7.f6072U = false;
            }
            if (B(c7)) {
                this.f6212D = true;
            }
        }
        return f3;
    }

    public void addFragmentOnAttachListener(o0 o0Var) {
        this.f6234m.add(o0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(P p6, L l7, C c7) {
        if (this.f6241t != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f6241t = p6;
        this.f6242u = l7;
        this.f6243v = c7;
        if (c7 != null) {
            addFragmentOnAttachListener(new C0451a0(c7));
        } else if (p6 instanceof o0) {
            addFragmentOnAttachListener((o0) p6);
        }
        if (this.f6243v != null) {
            S();
        }
        if (p6 instanceof androidx.activity.y) {
            androidx.activity.y yVar = (androidx.activity.y) p6;
            OnBackPressedDispatcher onBackPressedDispatcher = yVar.getOnBackPressedDispatcher();
            this.f6228g = onBackPressedDispatcher;
            InterfaceC0561t interfaceC0561t = yVar;
            if (c7 != null) {
                interfaceC0561t = c7;
            }
            onBackPressedDispatcher.addCallback(interfaceC0561t, this.f6229h);
        }
        if (c7 != null) {
            n0 n0Var = c7.f6053B.f6220L;
            HashMap hashMap = n0Var.f6273e;
            n0 n0Var2 = (n0) hashMap.get(c7.f6087n);
            if (n0Var2 == null) {
                n0Var2 = new n0(n0Var.f6275g);
                hashMap.put(c7.f6087n, n0Var2);
            }
            this.f6220L = n0Var2;
        } else if (p6 instanceof androidx.lifecycle.j0) {
            this.f6220L = (n0) new androidx.lifecycle.g0(((androidx.lifecycle.j0) p6).getViewModelStore(), n0.f6271j).get(n0.class);
        } else {
            this.f6220L = new n0(false);
        }
        this.f6220L.f6277i = isStateSaved();
        this.f6224c.f6321d = this.f6220L;
        Object obj = this.f6241t;
        if ((obj instanceof q1.j) && c7 == null) {
            q1.g savedStateRegistry = ((q1.j) obj).getSavedStateRegistry();
            savedStateRegistry.registerSavedStateProvider("android:support:fragments", new D((C0469j0) this, 1));
            Bundle consumeRestoredStateForKey = savedStateRegistry.consumeRestoredStateForKey("android:support:fragments");
            if (consumeRestoredStateForKey != null) {
                J(consumeRestoredStateForKey);
            }
        }
        Object obj2 = this.f6241t;
        if (obj2 instanceof androidx.activity.result.i) {
            ActivityResultRegistry activityResultRegistry = ((androidx.activity.result.i) obj2).getActivityResultRegistry();
            String k7 = A.i.k("FragmentManager:", c7 != null ? A.i.o(new StringBuilder(), c7.f6087n, ":") : "");
            C0469j0 c0469j0 = (C0469j0) this;
            this.f6247z = activityResultRegistry.register(A.i.B(k7, "StartActivityForResult"), new C0775f(), new C0453b0(c0469j0));
            this.f6209A = activityResultRegistry.register(A.i.B(k7, "StartIntentSenderForResult"), new C0457d0(), new C0455c0(c0469j0));
            this.f6210B = activityResultRegistry.register(A.i.B(k7, "RequestPermissions"), new C0773d(), new U(c0469j0));
        }
        Object obj3 = this.f6241t;
        if (obj3 instanceof A.l) {
            ((A.l) obj3).addOnConfigurationChangedListener(this.f6235n);
        }
        Object obj4 = this.f6241t;
        if (obj4 instanceof A.m) {
            ((A.m) obj4).addOnTrimMemoryListener(this.f6236o);
        }
        Object obj5 = this.f6241t;
        if (obj5 instanceof z.P) {
            ((z.P) obj5).addOnMultiWindowModeChangedListener(this.f6237p);
        }
        Object obj6 = this.f6241t;
        if (obj6 instanceof z.Q) {
            ((z.Q) obj6).addOnPictureInPictureModeChangedListener(this.f6238q);
        }
        Object obj7 = this.f6241t;
        if ((obj7 instanceof InterfaceC0195x) && c7 == null) {
            ((InterfaceC0195x) obj7).addMenuProvider(this.f6239r);
        }
    }

    public v0 beginTransaction() {
        return new C0450a(this);
    }

    public final void c(C c7) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "attach: " + c7);
        }
        if (c7.f6061J) {
            c7.f6061J = false;
            if (c7.f6093u) {
                return;
            }
            this.f6224c.a(c7);
            if (isLoggingEnabled(2)) {
                Log.v("FragmentManager", "add from attach: " + c7);
            }
            if (B(c7)) {
                this.f6212D = true;
            }
        }
    }

    public final void d() {
        this.f6223b = false;
        this.f6218J.clear();
        this.f6217I.clear();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String B6 = A.i.B(str, "    ");
        t0 t0Var = this.f6224c;
        t0Var.getClass();
        String str2 = str + "    ";
        HashMap hashMap = (HashMap) t0Var.f6319b;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (s0 s0Var : hashMap.values()) {
                printWriter.print(str);
                if (s0Var != null) {
                    C c7 = s0Var.f6304c;
                    printWriter.println(c7);
                    c7.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = (ArrayList) t0Var.f6318a;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size3; i2++) {
                C c8 = (C) arrayList.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(c8.toString());
            }
        }
        ArrayList arrayList2 = this.f6226e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i7 = 0; i7 < size2; i7++) {
                C c9 = (C) this.f6226e.get(i7);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i7);
                printWriter.print(": ");
                printWriter.println(c9.toString());
            }
        }
        ArrayList arrayList3 = this.f6225d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i8 = 0; i8 < size; i8++) {
                C0450a c0450a = (C0450a) this.f6225d.get(i8);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i8);
                printWriter.print(": ");
                printWriter.println(c0450a.toString());
                c0450a.dump(B6, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f6230i.get());
        synchronized (this.f6222a) {
            try {
                int size4 = this.f6222a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i9 = 0; i9 < size4; i9++) {
                        Object obj = (InterfaceC0463g0) this.f6222a.get(i9);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i9);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f6241t);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f6242u);
        if (this.f6243v != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f6243v);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f6240s);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f6213E);
        printWriter.print(" mStopped=");
        printWriter.print(this.f6214F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f6215G);
        if (this.f6212D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f6212D);
        }
    }

    public final HashSet e() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f6224c.d().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((s0) it.next()).f6304c.f6067P;
            if (viewGroup != null) {
                hashSet.add(M0.f(viewGroup, z()));
            }
        }
        return hashSet;
    }

    public final s0 f(C c7) {
        String str = c7.f6087n;
        t0 t0Var = this.f6224c;
        s0 s0Var = (s0) ((HashMap) t0Var.f6319b).get(str);
        if (s0Var != null) {
            return s0Var;
        }
        s0 s0Var2 = new s0(this.f6233l, t0Var, c7);
        s0Var2.m(this.f6241t.f6150e.getClassLoader());
        s0Var2.f6306e = this.f6240s;
        return s0Var2;
    }

    public C findFragmentById(int i2) {
        t0 t0Var = this.f6224c;
        ArrayList arrayList = (ArrayList) t0Var.f6318a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C c7 = (C) arrayList.get(size);
            if (c7 != null && c7.f6057F == i2) {
                return c7;
            }
        }
        for (s0 s0Var : ((HashMap) t0Var.f6319b).values()) {
            if (s0Var != null) {
                C c8 = s0Var.f6304c;
                if (c8.f6057F == i2) {
                    return c8;
                }
            }
        }
        return null;
    }

    public C findFragmentByTag(String str) {
        t0 t0Var = this.f6224c;
        if (str != null) {
            ArrayList arrayList = (ArrayList) t0Var.f6318a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                C c7 = (C) arrayList.get(size);
                if (c7 != null && str.equals(c7.f6059H)) {
                    return c7;
                }
            }
        }
        if (str == null) {
            t0Var.getClass();
            return null;
        }
        for (s0 s0Var : ((HashMap) t0Var.f6319b).values()) {
            if (s0Var != null) {
                C c8 = s0Var.f6304c;
                if (str.equals(c8.f6059H)) {
                    return c8;
                }
            }
        }
        return null;
    }

    public final void g(C c7) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "detach: " + c7);
        }
        if (c7.f6061J) {
            return;
        }
        c7.f6061J = true;
        if (c7.f6093u) {
            if (isLoggingEnabled(2)) {
                Log.v("FragmentManager", "remove from detach: " + c7);
            }
            t0 t0Var = this.f6224c;
            synchronized (((ArrayList) t0Var.f6318a)) {
                ((ArrayList) t0Var.f6318a).remove(c7);
            }
            c7.f6093u = false;
            if (B(c7)) {
                this.f6212D = true;
            }
            P(c7);
        }
    }

    public int getBackStackEntryCount() {
        ArrayList arrayList = this.f6225d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public O getFragmentFactory() {
        C c7 = this.f6243v;
        return c7 != null ? c7.f6053B.getFragmentFactory() : this.f6245x;
    }

    public List<C> getFragments() {
        return this.f6224c.f();
    }

    public P getHost() {
        return this.f6241t;
    }

    public C getPrimaryNavigationFragment() {
        return this.f6244w;
    }

    public C0940c getStrictModePolicy() {
        return null;
    }

    public final void h(boolean z6, Configuration configuration) {
        if (z6 && (this.f6241t instanceof A.l)) {
            R(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (C c7 : this.f6224c.f()) {
            if (c7 != null) {
                c7.onConfigurationChanged(configuration);
                if (z6) {
                    c7.f6055D.h(true, configuration);
                }
            }
        }
    }

    public final boolean i(MenuItem menuItem) {
        if (this.f6240s < 1) {
            return false;
        }
        for (C c7 : this.f6224c.f()) {
            if (c7 != null) {
                if (!c7.f6060I ? c7.onContextItemSelected(menuItem) ? true : c7.f6055D.i(menuItem) : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isDestroyed() {
        return this.f6215G;
    }

    public boolean isStateSaved() {
        return this.f6213E || this.f6214F;
    }

    public final boolean j(Menu menu, MenuInflater menuInflater) {
        if (this.f6240s < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z6 = false;
        for (C c7 : this.f6224c.f()) {
            if (c7 != null && c7.isMenuVisible()) {
                boolean z7 = false;
                if (!c7.f6060I) {
                    if (c7.f6064M && c7.f6065N) {
                        c7.onCreateOptionsMenu(menu, menuInflater);
                        z7 = true;
                    }
                    z7 |= c7.f6055D.j(menu, menuInflater);
                }
                if (z7) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(c7);
                    z6 = true;
                }
            }
        }
        if (this.f6226e != null) {
            for (int i2 = 0; i2 < this.f6226e.size(); i2++) {
                C c8 = (C) this.f6226e.get(i2);
                if (arrayList == null || !arrayList.contains(c8)) {
                    c8.onDestroyOptionsMenu();
                }
            }
        }
        this.f6226e = arrayList;
        return z6;
    }

    public final void k() {
        boolean z6 = true;
        this.f6215G = true;
        w(true);
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((M0) it.next()).e();
        }
        P p6 = this.f6241t;
        boolean z7 = p6 instanceof androidx.lifecycle.j0;
        t0 t0Var = this.f6224c;
        if (z7) {
            z6 = ((n0) t0Var.f6321d).f6276h;
        } else {
            Context context = p6.f6150e;
            if (context instanceof Activity) {
                z6 = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z6) {
            Iterator it2 = this.f6231j.values().iterator();
            while (it2.hasNext()) {
                for (String str : ((C0458e) it2.next()).f6192b) {
                    n0 n0Var = (n0) t0Var.f6321d;
                    n0Var.getClass();
                    if (isLoggingEnabled(3)) {
                        Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
                    }
                    n0Var.d(str);
                }
            }
        }
        t(-1);
        Object obj = this.f6241t;
        if (obj instanceof A.m) {
            ((A.m) obj).removeOnTrimMemoryListener(this.f6236o);
        }
        Object obj2 = this.f6241t;
        if (obj2 instanceof A.l) {
            ((A.l) obj2).removeOnConfigurationChangedListener(this.f6235n);
        }
        Object obj3 = this.f6241t;
        if (obj3 instanceof z.P) {
            ((z.P) obj3).removeOnMultiWindowModeChangedListener(this.f6237p);
        }
        Object obj4 = this.f6241t;
        if (obj4 instanceof z.Q) {
            ((z.Q) obj4).removeOnPictureInPictureModeChangedListener(this.f6238q);
        }
        Object obj5 = this.f6241t;
        if (obj5 instanceof InterfaceC0195x) {
            ((InterfaceC0195x) obj5).removeMenuProvider(this.f6239r);
        }
        this.f6241t = null;
        this.f6242u = null;
        this.f6243v = null;
        if (this.f6228g != null) {
            this.f6229h.remove();
            this.f6228g = null;
        }
        androidx.activity.result.d dVar = this.f6247z;
        if (dVar != null) {
            dVar.unregister();
            this.f6209A.unregister();
            this.f6210B.unregister();
        }
    }

    public final void l(boolean z6) {
        if (z6 && (this.f6241t instanceof A.m)) {
            R(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (C c7 : this.f6224c.f()) {
            if (c7 != null) {
                c7.onLowMemory();
                if (z6) {
                    c7.f6055D.l(true);
                }
            }
        }
    }

    public final void m(boolean z6, boolean z7) {
        if (z7 && (this.f6241t instanceof z.P)) {
            R(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (C c7 : this.f6224c.f()) {
            if (c7 != null) {
                c7.onMultiWindowModeChanged(z6);
                if (z7) {
                    c7.f6055D.m(z6, true);
                }
            }
        }
    }

    public final void n() {
        Iterator it = this.f6224c.e().iterator();
        while (it.hasNext()) {
            C c7 = (C) it.next();
            if (c7 != null) {
                c7.onHiddenChanged(c7.isHidden());
                c7.f6055D.n();
            }
        }
    }

    public final boolean o(MenuItem menuItem) {
        if (this.f6240s < 1) {
            return false;
        }
        for (C c7 : this.f6224c.f()) {
            if (c7 != null) {
                if (!c7.f6060I ? (c7.f6064M && c7.f6065N && c7.onOptionsItemSelected(menuItem)) ? true : c7.f6055D.o(menuItem) : false) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void p(Menu menu) {
        if (this.f6240s < 1) {
            return;
        }
        for (C c7 : this.f6224c.f()) {
            if (c7 != null && !c7.f6060I) {
                if (c7.f6064M && c7.f6065N) {
                    c7.onOptionsMenuClosed(menu);
                }
                c7.f6055D.p(menu);
            }
        }
    }

    public boolean popBackStackImmediate() {
        w(false);
        v(true);
        C c7 = this.f6244w;
        if (c7 != null && c7.getChildFragmentManager().popBackStackImmediate()) {
            return true;
        }
        boolean G6 = G(this.f6217I, this.f6218J, -1, 0);
        if (G6) {
            this.f6223b = true;
            try {
                I(this.f6217I, this.f6218J);
            } finally {
                d();
            }
        }
        S();
        boolean z6 = this.f6216H;
        t0 t0Var = this.f6224c;
        if (z6) {
            this.f6216H = false;
            Iterator it = t0Var.d().iterator();
            while (it.hasNext()) {
                s0 s0Var = (s0) it.next();
                C c8 = s0Var.f6304c;
                if (c8.f6069R) {
                    if (this.f6223b) {
                        this.f6216H = true;
                    } else {
                        c8.f6069R = false;
                        s0Var.k();
                    }
                }
            }
        }
        ((HashMap) t0Var.f6319b).values().removeAll(Collections.singleton(null));
        return G6;
    }

    public final void q(C c7) {
        if (c7 != null) {
            if (c7.equals(this.f6224c.b(c7.f6087n))) {
                c7.f6053B.getClass();
                boolean D6 = D(c7);
                Boolean bool = c7.f6092t;
                if (bool == null || bool.booleanValue() != D6) {
                    c7.f6092t = Boolean.valueOf(D6);
                    c7.onPrimaryNavigationFragmentChanged(D6);
                    C0469j0 c0469j0 = c7.f6055D;
                    c0469j0.S();
                    c0469j0.q(c0469j0.f6244w);
                }
            }
        }
    }

    public final void r(boolean z6, boolean z7) {
        if (z7 && (this.f6241t instanceof z.Q)) {
            R(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (C c7 : this.f6224c.f()) {
            if (c7 != null) {
                c7.onPictureInPictureModeChanged(z6);
                if (z7) {
                    c7.f6055D.r(z6, true);
                }
            }
        }
    }

    public final boolean s(Menu menu) {
        boolean z6 = false;
        if (this.f6240s < 1) {
            return false;
        }
        for (C c7 : this.f6224c.f()) {
            if (c7 != null && c7.isMenuVisible()) {
                boolean z7 = false;
                if (!c7.f6060I) {
                    if (c7.f6064M && c7.f6065N) {
                        c7.onPrepareOptionsMenu(menu);
                        z7 = true;
                    }
                    z7 |= c7.f6055D.s(menu);
                }
                if (z7) {
                    z6 = true;
                }
            }
        }
        return z6;
    }

    public final void t(int i2) {
        try {
            this.f6223b = true;
            for (s0 s0Var : ((HashMap) this.f6224c.f6319b).values()) {
                if (s0Var != null) {
                    s0Var.f6306e = i2;
                }
            }
            E(i2, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((M0) it.next()).e();
            }
            this.f6223b = false;
            w(true);
        } catch (Throwable th) {
            this.f6223b = false;
            throw th;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C c7 = this.f6243v;
        if (c7 != null) {
            sb.append(c7.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f6243v)));
            sb.append("}");
        } else {
            P p6 = this.f6241t;
            if (p6 != null) {
                sb.append(p6.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f6241t)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(InterfaceC0463g0 interfaceC0463g0, boolean z6) {
        if (!z6) {
            if (this.f6241t == null) {
                if (!this.f6215G) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (isStateSaved()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f6222a) {
            try {
                if (this.f6241t == null) {
                    if (!z6) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f6222a.add(interfaceC0463g0);
                    L();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void v(boolean z6) {
        if (this.f6223b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f6241t == null) {
            if (!this.f6215G) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f6241t.getHandler().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z6 && isStateSaved()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f6217I == null) {
            this.f6217I = new ArrayList();
            this.f6218J = new ArrayList();
        }
    }

    public final boolean w(boolean z6) {
        boolean z7;
        v(z6);
        boolean z8 = false;
        while (true) {
            ArrayList<C0450a> arrayList = this.f6217I;
            ArrayList<Boolean> arrayList2 = this.f6218J;
            synchronized (this.f6222a) {
                if (this.f6222a.isEmpty()) {
                    z7 = false;
                } else {
                    try {
                        int size = this.f6222a.size();
                        z7 = false;
                        for (int i2 = 0; i2 < size; i2++) {
                            z7 |= ((InterfaceC0463g0) this.f6222a.get(i2)).generateOps(arrayList, arrayList2);
                        }
                    } finally {
                    }
                }
            }
            if (!z7) {
                break;
            }
            z8 = true;
            this.f6223b = true;
            try {
                I(this.f6217I, this.f6218J);
            } finally {
                d();
            }
        }
        S();
        if (this.f6216H) {
            this.f6216H = false;
            Iterator it = this.f6224c.d().iterator();
            while (it.hasNext()) {
                s0 s0Var = (s0) it.next();
                C c7 = s0Var.f6304c;
                if (c7.f6069R) {
                    if (this.f6223b) {
                        this.f6216H = true;
                    } else {
                        c7.f6069R = false;
                        s0Var.k();
                    }
                }
            }
        }
        ((HashMap) this.f6224c.f6319b).values().removeAll(Collections.singleton(null));
        return z8;
    }

    public final void x(ArrayList arrayList, ArrayList arrayList2, int i2, int i7) {
        ViewGroup viewGroup;
        boolean z6;
        int i8;
        boolean z7;
        boolean z8;
        int i9;
        int i10;
        boolean z9;
        boolean z10;
        int i11;
        boolean z11 = ((C0450a) arrayList.get(i2)).f6347o;
        ArrayList arrayList3 = this.f6219K;
        if (arrayList3 == null) {
            this.f6219K = new ArrayList();
        } else {
            arrayList3.clear();
        }
        ArrayList arrayList4 = this.f6219K;
        t0 t0Var = this.f6224c;
        arrayList4.addAll(t0Var.f());
        C primaryNavigationFragment = getPrimaryNavigationFragment();
        int i12 = i2;
        boolean z12 = false;
        while (true) {
            int i13 = 1;
            if (i12 >= i7) {
                boolean z13 = z11;
                this.f6219K.clear();
                if (!z13 && this.f6240s >= 1) {
                    for (int i14 = i2; i14 < i7; i14++) {
                        Iterator it = ((C0450a) arrayList.get(i14)).f6333a.iterator();
                        while (it.hasNext()) {
                            C c7 = ((u0) it.next()).f6324b;
                            if (c7 != null && c7.f6053B != null) {
                                t0Var.g(f(c7));
                            }
                        }
                    }
                }
                for (int i15 = i2; i15 < i7; i15++) {
                    C0450a c0450a = (C0450a) arrayList.get(i15);
                    if (((Boolean) arrayList2.get(i15)).booleanValue()) {
                        c0450a.c(-1);
                        ArrayList arrayList5 = c0450a.f6333a;
                        boolean z14 = true;
                        for (int size = arrayList5.size() - 1; size >= 0; size--) {
                            u0 u0Var = (u0) arrayList5.get(size);
                            C c8 = u0Var.f6324b;
                            if (c8 != null) {
                                if (c8.f6071T != null) {
                                    c8.b().f6037a = z14;
                                }
                                int i16 = c0450a.f6338f;
                                int i17 = 8194;
                                int i18 = 4097;
                                if (i16 != 4097) {
                                    if (i16 != 8194) {
                                        i17 = 4100;
                                        i18 = 8197;
                                        if (i16 != 8197) {
                                            if (i16 == 4099) {
                                                i17 = 4099;
                                            } else if (i16 != 4100) {
                                                i17 = 0;
                                            }
                                        }
                                    }
                                    i17 = i18;
                                }
                                if (c8.f6071T != null || i17 != 0) {
                                    c8.b();
                                    c8.f6071T.f6042f = i17;
                                }
                                ArrayList arrayList6 = c0450a.f6346n;
                                ArrayList arrayList7 = c0450a.f6345m;
                                c8.b();
                                B b7 = c8.f6071T;
                                b7.f6043g = arrayList6;
                                b7.f6044h = arrayList7;
                            }
                            int i19 = u0Var.f6323a;
                            AbstractC0467i0 abstractC0467i0 = c0450a.f6172p;
                            switch (i19) {
                                case 1:
                                    c8.h(u0Var.f6326d, u0Var.f6327e, u0Var.f6328f, u0Var.f6329g);
                                    z14 = true;
                                    abstractC0467i0.M(c8, true);
                                    abstractC0467i0.H(c8);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + u0Var.f6323a);
                                case 3:
                                    c8.h(u0Var.f6326d, u0Var.f6327e, u0Var.f6328f, u0Var.f6329g);
                                    abstractC0467i0.a(c8);
                                    z14 = true;
                                case 4:
                                    c8.h(u0Var.f6326d, u0Var.f6327e, u0Var.f6328f, u0Var.f6329g);
                                    abstractC0467i0.getClass();
                                    Q(c8);
                                    z14 = true;
                                case 5:
                                    c8.h(u0Var.f6326d, u0Var.f6327e, u0Var.f6328f, u0Var.f6329g);
                                    abstractC0467i0.M(c8, true);
                                    abstractC0467i0.A(c8);
                                    z14 = true;
                                case 6:
                                    c8.h(u0Var.f6326d, u0Var.f6327e, u0Var.f6328f, u0Var.f6329g);
                                    abstractC0467i0.c(c8);
                                    z14 = true;
                                case 7:
                                    c8.h(u0Var.f6326d, u0Var.f6327e, u0Var.f6328f, u0Var.f6329g);
                                    abstractC0467i0.M(c8, true);
                                    abstractC0467i0.g(c8);
                                    z14 = true;
                                case 8:
                                    abstractC0467i0.O(null);
                                    z14 = true;
                                case 9:
                                    abstractC0467i0.O(c8);
                                    z14 = true;
                                case 10:
                                    abstractC0467i0.N(c8, u0Var.f6330h);
                                    z14 = true;
                            }
                        }
                    } else {
                        c0450a.c(1);
                        ArrayList arrayList8 = c0450a.f6333a;
                        int size2 = arrayList8.size();
                        for (int i20 = 0; i20 < size2; i20++) {
                            u0 u0Var2 = (u0) arrayList8.get(i20);
                            C c9 = u0Var2.f6324b;
                            if (c9 != null) {
                                if (c9.f6071T != null) {
                                    c9.b().f6037a = false;
                                }
                                int i21 = c0450a.f6338f;
                                if (c9.f6071T != null || i21 != 0) {
                                    c9.b();
                                    c9.f6071T.f6042f = i21;
                                }
                                ArrayList arrayList9 = c0450a.f6345m;
                                ArrayList arrayList10 = c0450a.f6346n;
                                c9.b();
                                B b8 = c9.f6071T;
                                b8.f6043g = arrayList9;
                                b8.f6044h = arrayList10;
                            }
                            int i22 = u0Var2.f6323a;
                            AbstractC0467i0 abstractC0467i02 = c0450a.f6172p;
                            switch (i22) {
                                case 1:
                                    c9.h(u0Var2.f6326d, u0Var2.f6327e, u0Var2.f6328f, u0Var2.f6329g);
                                    abstractC0467i02.M(c9, false);
                                    abstractC0467i02.a(c9);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + u0Var2.f6323a);
                                case 3:
                                    c9.h(u0Var2.f6326d, u0Var2.f6327e, u0Var2.f6328f, u0Var2.f6329g);
                                    abstractC0467i02.H(c9);
                                case 4:
                                    c9.h(u0Var2.f6326d, u0Var2.f6327e, u0Var2.f6328f, u0Var2.f6329g);
                                    abstractC0467i02.A(c9);
                                case 5:
                                    c9.h(u0Var2.f6326d, u0Var2.f6327e, u0Var2.f6328f, u0Var2.f6329g);
                                    abstractC0467i02.M(c9, false);
                                    Q(c9);
                                case 6:
                                    c9.h(u0Var2.f6326d, u0Var2.f6327e, u0Var2.f6328f, u0Var2.f6329g);
                                    abstractC0467i02.g(c9);
                                case 7:
                                    c9.h(u0Var2.f6326d, u0Var2.f6327e, u0Var2.f6328f, u0Var2.f6329g);
                                    abstractC0467i02.M(c9, false);
                                    abstractC0467i02.c(c9);
                                case 8:
                                    abstractC0467i02.O(c9);
                                case 9:
                                    abstractC0467i02.O(null);
                                case 10:
                                    abstractC0467i02.N(c9, u0Var2.f6331i);
                            }
                        }
                    }
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i7 - 1)).booleanValue();
                for (int i23 = i2; i23 < i7; i23++) {
                    C0450a c0450a2 = (C0450a) arrayList.get(i23);
                    if (booleanValue) {
                        for (int size3 = c0450a2.f6333a.size() - 1; size3 >= 0; size3--) {
                            C c10 = ((u0) c0450a2.f6333a.get(size3)).f6324b;
                            if (c10 != null) {
                                f(c10).k();
                            }
                        }
                    } else {
                        Iterator it2 = c0450a2.f6333a.iterator();
                        while (it2.hasNext()) {
                            C c11 = ((u0) it2.next()).f6324b;
                            if (c11 != null) {
                                f(c11).k();
                            }
                        }
                    }
                }
                E(this.f6240s, true);
                HashSet hashSet = new HashSet();
                for (int i24 = i2; i24 < i7; i24++) {
                    Iterator it3 = ((C0450a) arrayList.get(i24)).f6333a.iterator();
                    while (it3.hasNext()) {
                        C c12 = ((u0) it3.next()).f6324b;
                        if (c12 != null && (viewGroup = c12.f6067P) != null) {
                            hashSet.add(M0.f(viewGroup, z()));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    M0 m02 = (M0) it4.next();
                    m02.f6145d = booleanValue;
                    synchronized (m02.f6143b) {
                        try {
                            m02.h();
                            m02.f6146e = false;
                            int size4 = m02.f6143b.size() - 1;
                            while (true) {
                                if (size4 >= 0) {
                                    L0 l02 = (L0) m02.f6143b.get(size4);
                                    SpecialEffectsController$Operation$State e3 = SpecialEffectsController$Operation$State.e(l02.getFragment().f6068Q);
                                    SpecialEffectsController$Operation$State finalState = l02.getFinalState();
                                    SpecialEffectsController$Operation$State specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.f6161e;
                                    if (finalState != specialEffectsController$Operation$State || e3 == specialEffectsController$Operation$State) {
                                        size4--;
                                    } else {
                                        B b9 = l02.getFragment().f6071T;
                                        m02.f6146e = false;
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    m02.c();
                }
                for (int i25 = i2; i25 < i7; i25++) {
                    C0450a c0450a3 = (C0450a) arrayList.get(i25);
                    if (((Boolean) arrayList2.get(i25)).booleanValue() && c0450a3.f6174r >= 0) {
                        c0450a3.f6174r = -1;
                    }
                    c0450a3.runOnCommitRunnables();
                }
                return;
            }
            C0450a c0450a4 = (C0450a) arrayList.get(i12);
            if (((Boolean) arrayList2.get(i12)).booleanValue()) {
                z6 = z11;
                i8 = i12;
                z7 = z12;
                int i26 = 1;
                ArrayList arrayList11 = this.f6219K;
                ArrayList arrayList12 = c0450a4.f6333a;
                int size5 = arrayList12.size() - 1;
                while (size5 >= 0) {
                    u0 u0Var3 = (u0) arrayList12.get(size5);
                    int i27 = u0Var3.f6323a;
                    if (i27 != i26) {
                        if (i27 != 3) {
                            switch (i27) {
                                case 8:
                                    primaryNavigationFragment = null;
                                    break;
                                case 9:
                                    primaryNavigationFragment = u0Var3.f6324b;
                                    break;
                                case 10:
                                    u0Var3.f6331i = u0Var3.f6330h;
                                    break;
                            }
                            size5--;
                            i26 = 1;
                        }
                        arrayList11.add(u0Var3.f6324b);
                        size5--;
                        i26 = 1;
                    }
                    arrayList11.remove(u0Var3.f6324b);
                    size5--;
                    i26 = 1;
                }
            } else {
                ArrayList arrayList13 = this.f6219K;
                int i28 = 0;
                while (true) {
                    ArrayList arrayList14 = c0450a4.f6333a;
                    if (i28 < arrayList14.size()) {
                        u0 u0Var4 = (u0) arrayList14.get(i28);
                        int i29 = u0Var4.f6323a;
                        if (i29 != i13) {
                            z8 = z11;
                            if (i29 != 2) {
                                if (i29 == 3 || i29 == 6) {
                                    arrayList13.remove(u0Var4.f6324b);
                                    C c13 = u0Var4.f6324b;
                                    if (c13 == primaryNavigationFragment) {
                                        arrayList14.add(i28, new u0(9, c13));
                                        i28++;
                                        i10 = i12;
                                        z9 = z12;
                                        i9 = 1;
                                        primaryNavigationFragment = null;
                                    }
                                } else if (i29 == 7) {
                                    i9 = 1;
                                } else if (i29 == 8) {
                                    arrayList14.add(i28, new u0(9, primaryNavigationFragment, 0));
                                    u0Var4.f6325c = true;
                                    i28++;
                                    primaryNavigationFragment = u0Var4.f6324b;
                                }
                                i10 = i12;
                                z9 = z12;
                                i9 = 1;
                            } else {
                                C c14 = u0Var4.f6324b;
                                int i30 = c14.f6058G;
                                int size6 = arrayList13.size() - 1;
                                boolean z15 = false;
                                while (size6 >= 0) {
                                    int i31 = size6;
                                    C c15 = (C) arrayList13.get(size6);
                                    int i32 = i12;
                                    if (c15.f6058G != i30) {
                                        z10 = z12;
                                    } else if (c15 == c14) {
                                        z10 = z12;
                                        z15 = true;
                                    } else {
                                        if (c15 == primaryNavigationFragment) {
                                            z10 = z12;
                                            i11 = 0;
                                            arrayList14.add(i28, new u0(9, c15, 0));
                                            i28++;
                                            primaryNavigationFragment = null;
                                        } else {
                                            z10 = z12;
                                            i11 = 0;
                                        }
                                        u0 u0Var5 = new u0(3, c15, i11);
                                        u0Var5.f6326d = u0Var4.f6326d;
                                        u0Var5.f6328f = u0Var4.f6328f;
                                        u0Var5.f6327e = u0Var4.f6327e;
                                        u0Var5.f6329g = u0Var4.f6329g;
                                        arrayList14.add(i28, u0Var5);
                                        arrayList13.remove(c15);
                                        i28++;
                                        primaryNavigationFragment = primaryNavigationFragment;
                                    }
                                    size6 = i31 - 1;
                                    z12 = z10;
                                    i12 = i32;
                                }
                                i10 = i12;
                                z9 = z12;
                                i9 = 1;
                                if (z15) {
                                    arrayList14.remove(i28);
                                    i28--;
                                } else {
                                    u0Var4.f6323a = 1;
                                    u0Var4.f6325c = true;
                                    arrayList13.add(c14);
                                }
                            }
                            i28 += i9;
                            i13 = i9;
                            z11 = z8;
                            z12 = z9;
                            i12 = i10;
                        } else {
                            z8 = z11;
                            i9 = i13;
                        }
                        i10 = i12;
                        z9 = z12;
                        arrayList13.add(u0Var4.f6324b);
                        i28 += i9;
                        i13 = i9;
                        z11 = z8;
                        z12 = z9;
                        i12 = i10;
                    } else {
                        z6 = z11;
                        i8 = i12;
                        z7 = z12;
                    }
                }
            }
            z12 = z7 || c0450a4.f6339g;
            i12 = i8 + 1;
            z11 = z6;
        }
    }

    public final ViewGroup y(C c7) {
        ViewGroup viewGroup = c7.f6067P;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (c7.f6058G <= 0 || !this.f6242u.onHasView()) {
            return null;
        }
        View onFindViewById = this.f6242u.onFindViewById(c7.f6058G);
        if (onFindViewById instanceof ViewGroup) {
            return (ViewGroup) onFindViewById;
        }
        return null;
    }

    public final Y z() {
        C c7 = this.f6243v;
        return c7 != null ? c7.f6053B.z() : this.f6246y;
    }
}
