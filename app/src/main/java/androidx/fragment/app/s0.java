package androidx.fragment.app;

import M.AbstractC0181p0;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.R;
import androidx.lifecycle.C0564w;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.SavedStateHandleSupport;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import n0.AbstractC1353a;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class s0 {

    /* renamed from: a, reason: collision with root package name */
    public final C.k f6302a;

    /* renamed from: b, reason: collision with root package name */
    public final t0 f6303b;

    /* renamed from: c, reason: collision with root package name */
    public final C f6304c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6305d = false;

    /* renamed from: e, reason: collision with root package name */
    public int f6306e = -1;

    public s0(C.k kVar, t0 t0Var, C c7) {
        this.f6302a = kVar;
        this.f6303b = t0Var;
        this.f6304c = c7;
    }

    public final void a() {
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + c7);
        }
        Bundle bundle = c7.f6083e;
        c7.f6055D.F();
        c7.f6079b = 3;
        c7.f6066O = false;
        c7.onActivityCreated(bundle);
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onActivityCreated()"));
        }
        if (AbstractC0467i0.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + c7);
        }
        View view = c7.f6068Q;
        if (view != null) {
            Bundle bundle2 = c7.f6083e;
            SparseArray<Parcelable> sparseArray = c7.f6084f;
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
                c7.f6084f = null;
            }
            if (c7.f6068Q != null) {
                c7.f6077Z.f6112j.performRestore(c7.f6085j);
                c7.f6085j = null;
            }
            c7.f6066O = false;
            c7.onViewStateRestored(bundle2);
            if (!c7.f6066O) {
                throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onViewStateRestored()"));
            }
            if (c7.f6068Q != null) {
                c7.f6077Z.a(Lifecycle$Event.ON_CREATE);
            }
        }
        c7.f6083e = null;
        C0469j0 c0469j0 = c7.f6055D;
        c0469j0.f6213E = false;
        c0469j0.f6214F = false;
        c0469j0.f6220L.f6277i = false;
        c0469j0.t(4);
        this.f6302a.b(false);
    }

    public final void b() {
        View view;
        View view2;
        t0 t0Var = this.f6303b;
        t0Var.getClass();
        C c7 = this.f6304c;
        ViewGroup viewGroup = c7.f6067P;
        int i2 = -1;
        if (viewGroup != null) {
            ArrayList arrayList = (ArrayList) t0Var.f6318a;
            int indexOf = arrayList.indexOf(c7);
            int i7 = indexOf - 1;
            while (true) {
                if (i7 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        C c8 = (C) arrayList.get(indexOf);
                        if (c8.f6067P == viewGroup && (view = c8.f6068Q) != null) {
                            i2 = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    C c9 = (C) arrayList.get(i7);
                    if (c9.f6067P == viewGroup && (view2 = c9.f6068Q) != null) {
                        i2 = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i7--;
                }
            }
        }
        c7.f6067P.addView(c7.f6068Q, i2);
    }

    public final void c() {
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto ATTACHED: " + c7);
        }
        C c8 = c7.f6089q;
        s0 s0Var = null;
        t0 t0Var = this.f6303b;
        if (c8 != null) {
            s0 s0Var2 = (s0) ((HashMap) t0Var.f6319b).get(c8.f6087n);
            if (s0Var2 == null) {
                throw new IllegalStateException("Fragment " + c7 + " declared target fragment " + c7.f6089q + " that does not belong to this FragmentManager!");
            }
            c7.f6090r = c7.f6089q.f6087n;
            c7.f6089q = null;
            s0Var = s0Var2;
        } else {
            String str = c7.f6090r;
            if (str != null && (s0Var = (s0) ((HashMap) t0Var.f6319b).get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(c7);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(A.i.o(sb, c7.f6090r, " that does not belong to this FragmentManager!"));
            }
        }
        if (s0Var != null) {
            s0Var.k();
        }
        c7.f6054C = c7.f6053B.getHost();
        c7.f6056E = c7.f6053B.f6243v;
        C.k kVar = this.f6302a;
        kVar.h(false);
        ArrayList arrayList = c7.f6081c0;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C c9 = ((C0487z) it.next()).f6372a;
            c9.f6080b0.performAttach();
            SavedStateHandleSupport.enableSavedStateHandles(c9);
        }
        arrayList.clear();
        c7.f6055D.b(c7.f6054C, c7.a(), c7);
        c7.f6079b = 0;
        c7.f6066O = false;
        c7.onAttach(c7.f6054C.f6150e);
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onAttach()"));
        }
        AbstractC0467i0 abstractC0467i0 = c7.f6053B;
        Iterator it2 = abstractC0467i0.f6234m.iterator();
        while (it2.hasNext()) {
            ((o0) it2.next()).onAttachFragment(abstractC0467i0, c7);
        }
        C0469j0 c0469j0 = c7.f6055D;
        c0469j0.f6213E = false;
        c0469j0.f6214F = false;
        c0469j0.f6220L.f6277i = false;
        c0469j0.t(0);
        kVar.c(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact] */
    /* JADX WARN: Type inference failed for: r2v19, types: [androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact] */
    public final int d() {
        C c7 = this.f6304c;
        if (c7.f6053B == null) {
            return c7.f6079b;
        }
        int i2 = this.f6306e;
        int ordinal = c7.f6075X.ordinal();
        if (ordinal == 1) {
            i2 = Math.min(i2, 0);
        } else if (ordinal == 2) {
            i2 = Math.min(i2, 1);
        } else if (ordinal == 3) {
            i2 = Math.min(i2, 5);
        } else if (ordinal != 4) {
            i2 = Math.min(i2, -1);
        }
        if (c7.f6095w) {
            if (c7.f6096x) {
                i2 = Math.max(this.f6306e, 2);
                View view = c7.f6068Q;
                if (view != null && view.getParent() == null) {
                    i2 = Math.min(i2, 2);
                }
            } else {
                i2 = this.f6306e < 4 ? Math.min(i2, c7.f6079b) : Math.min(i2, 1);
            }
        }
        if (!c7.f6093u) {
            i2 = Math.min(i2, 1);
        }
        ViewGroup viewGroup = c7.f6067P;
        L0 l02 = null;
        if (viewGroup != null) {
            M0 g7 = M0.g(viewGroup, c7.getParentFragmentManager());
            g7.getClass();
            L0 d7 = g7.d(c7);
            L0 l03 = d7 != null ? d7.f6135b : null;
            Iterator it = g7.f6144c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                L0 l04 = (L0) it.next();
                if (l04.getFragment().equals(c7) && !l04.f6139f) {
                    l02 = l04;
                    break;
                }
            }
            l02 = (l02 == null || !(l03 == null || l03 == SpecialEffectsController$Operation$LifecycleImpact.f6156b)) ? l03 : l02.f6135b;
        }
        if (l02 == SpecialEffectsController$Operation$LifecycleImpact.f6157e) {
            i2 = Math.min(i2, 6);
        } else if (l02 == SpecialEffectsController$Operation$LifecycleImpact.f6158f) {
            i2 = Math.max(i2, 3);
        } else if (c7.f6094v) {
            i2 = c7.f() ? Math.min(i2, 1) : Math.min(i2, -1);
        }
        if (c7.f6069R && c7.f6079b < 5) {
            i2 = Math.min(i2, 4);
        }
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i2 + " for " + c7);
        }
        return i2;
    }

    public final void e() {
        Parcelable parcelable;
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        final C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto CREATED: " + c7);
        }
        if (c7.f6073V) {
            Bundle bundle = c7.f6083e;
            if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
                c7.f6055D.J(parcelable);
                C0469j0 c0469j0 = c7.f6055D;
                c0469j0.f6213E = false;
                c0469j0.f6214F = false;
                c0469j0.f6220L.f6277i = false;
                c0469j0.t(1);
            }
            c7.f6079b = 1;
            return;
        }
        C.k kVar = this.f6302a;
        kVar.i(false);
        Bundle bundle2 = c7.f6083e;
        c7.f6055D.F();
        c7.f6079b = 1;
        c7.f6066O = false;
        c7.f6076Y.addObserver(new androidx.lifecycle.r() { // from class: androidx.fragment.app.Fragment$6
            @Override // androidx.lifecycle.r
            public void onStateChanged(InterfaceC0561t interfaceC0561t, Lifecycle$Event lifecycle$Event) {
                View view;
                if (lifecycle$Event != Lifecycle$Event.ON_STOP || (view = C.this.f6068Q) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        c7.f6080b0.performRestore(bundle2);
        c7.onCreate(bundle2);
        c7.f6073V = true;
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onCreate()"));
        }
        c7.f6076Y.handleLifecycleEvent(Lifecycle$Event.ON_CREATE);
        kVar.d(false);
    }

    public final void f() {
        String str;
        C c7 = this.f6304c;
        if (c7.f6095w) {
            return;
        }
        if (AbstractC0467i0.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + c7);
        }
        LayoutInflater onGetLayoutInflater = c7.onGetLayoutInflater(c7.f6083e);
        ViewGroup viewGroup = c7.f6067P;
        if (viewGroup == null) {
            int i2 = c7.f6058G;
            if (i2 == 0) {
                viewGroup = null;
            } else {
                if (i2 == -1) {
                    throw new IllegalArgumentException(A.i.j("Cannot create fragment ", c7, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) c7.f6053B.f6242u.onFindViewById(i2);
                if (viewGroup == null) {
                    if (!c7.f6097y) {
                        try {
                            str = c7.getResources().getResourceName(c7.f6058G);
                        } catch (Resources.NotFoundException unused) {
                            str = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(c7.f6058G) + " (" + str + ") for fragment " + c7);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    g0.d.onWrongFragmentContainer(c7, viewGroup);
                }
            }
        }
        c7.f6067P = viewGroup;
        c7.g(onGetLayoutInflater, viewGroup, c7.f6083e);
        View view = c7.f6068Q;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            c7.f6068Q.setTag(R.id.fragment_container_view_tag, c7);
            if (viewGroup != null) {
                b();
            }
            if (c7.f6060I) {
                c7.f6068Q.setVisibility(8);
            }
            if (AbstractC0181p0.isAttachedToWindow(c7.f6068Q)) {
                AbstractC0181p0.requestApplyInsets(c7.f6068Q);
            } else {
                View view2 = c7.f6068Q;
                view2.addOnAttachStateChangeListener(new r0(view2));
            }
            c7.onViewCreated(c7.f6068Q, c7.f6083e);
            c7.f6055D.t(2);
            this.f6302a.n(false);
            int visibility = c7.f6068Q.getVisibility();
            c7.b().f6048l = c7.f6068Q.getAlpha();
            if (c7.f6067P != null && visibility == 0) {
                View findFocus = c7.f6068Q.findFocus();
                if (findFocus != null) {
                    c7.b().f6049m = findFocus;
                    if (AbstractC0467i0.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + c7);
                    }
                }
                c7.f6068Q.setAlpha(0.0f);
            }
        }
        c7.f6079b = 2;
    }

    public final void g() {
        C b7;
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom CREATED: " + c7);
        }
        boolean z6 = true;
        boolean z7 = c7.f6094v && !c7.f();
        t0 t0Var = this.f6303b;
        if (z7) {
        }
        if (!z7) {
            n0 n0Var = (n0) t0Var.f6321d;
            if (!((n0Var.f6272d.containsKey(c7.f6087n) && n0Var.f6275g) ? n0Var.f6276h : true)) {
                String str = c7.f6090r;
                if (str != null && (b7 = t0Var.b(str)) != null && b7.f6062K) {
                    c7.f6089q = b7;
                }
                c7.f6079b = 0;
                return;
            }
        }
        P p6 = c7.f6054C;
        if (p6 instanceof androidx.lifecycle.j0) {
            z6 = ((n0) t0Var.f6321d).f6276h;
        } else {
            Context context = p6.f6150e;
            if (context instanceof Activity) {
                z6 = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z7 || z6) {
            ((n0) t0Var.f6321d).c(c7);
        }
        c7.f6055D.k();
        c7.f6076Y.handleLifecycleEvent(Lifecycle$Event.ON_DESTROY);
        c7.f6079b = 0;
        c7.f6066O = false;
        c7.f6073V = false;
        c7.onDestroy();
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onDestroy()"));
        }
        this.f6302a.e(false);
        Iterator it = t0Var.d().iterator();
        while (it.hasNext()) {
            s0 s0Var = (s0) it.next();
            if (s0Var != null) {
                String str2 = c7.f6087n;
                C c8 = s0Var.f6304c;
                if (str2.equals(c8.f6090r)) {
                    c8.f6089q = c7;
                    c8.f6090r = null;
                }
            }
        }
        String str3 = c7.f6090r;
        if (str3 != null) {
            c7.f6089q = t0Var.b(str3);
        }
        t0Var.h(this);
    }

    public final void h() {
        View view;
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + c7);
        }
        ViewGroup viewGroup = c7.f6067P;
        if (viewGroup != null && (view = c7.f6068Q) != null) {
            viewGroup.removeView(view);
        }
        c7.f6055D.t(1);
        if (c7.f6068Q != null && c7.f6077Z.getLifecycle().getCurrentState().isAtLeast(Lifecycle$State.f6969f)) {
            c7.f6077Z.a(Lifecycle$Event.ON_DESTROY);
        }
        c7.f6079b = 1;
        c7.f6066O = false;
        c7.onDestroyView();
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onDestroyView()"));
        }
        AbstractC1353a.getInstance(c7).markForRedelivery();
        c7.f6098z = false;
        this.f6302a.o(false);
        c7.f6067P = null;
        c7.f6068Q = null;
        c7.f6077Z = null;
        c7.f6078a0.setValue(null);
        c7.f6096x = false;
    }

    public final void i() {
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + c7);
        }
        c7.f6079b = -1;
        c7.f6066O = false;
        c7.onDetach();
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onDetach()"));
        }
        if (!c7.f6055D.isDestroyed()) {
            c7.f6055D.k();
            c7.f6055D = new C0469j0();
        }
        this.f6302a.f(false);
        c7.f6079b = -1;
        c7.f6054C = null;
        c7.f6056E = null;
        c7.f6053B = null;
        if (!c7.f6094v || c7.f()) {
            n0 n0Var = (n0) this.f6303b.f6321d;
            if (!((n0Var.f6272d.containsKey(c7.f6087n) && n0Var.f6275g) ? n0Var.f6276h : true)) {
                return;
            }
        }
        if (AbstractC0467i0.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + c7);
        }
        c7.e();
    }

    public final void j() {
        C c7 = this.f6304c;
        if (c7.f6095w && c7.f6096x && !c7.f6098z) {
            if (AbstractC0467i0.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + c7);
            }
            c7.g(c7.onGetLayoutInflater(c7.f6083e), null, c7.f6083e);
            View view = c7.f6068Q;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                c7.f6068Q.setTag(R.id.fragment_container_view_tag, c7);
                if (c7.f6060I) {
                    c7.f6068Q.setVisibility(8);
                }
                c7.onViewCreated(c7.f6068Q, c7.f6083e);
                c7.f6055D.t(2);
                this.f6302a.n(false);
                c7.f6079b = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        t0 t0Var = this.f6303b;
        boolean z6 = this.f6305d;
        C c7 = this.f6304c;
        if (z6) {
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + c7);
                return;
            }
            return;
        }
        try {
            this.f6305d = true;
            boolean z7 = false;
            while (true) {
                int d7 = d();
                int i2 = c7.f6079b;
                if (d7 == i2) {
                    if (!z7 && i2 == -1 && c7.f6094v && !c7.f()) {
                        if (AbstractC0467i0.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + c7);
                        }
                        ((n0) t0Var.f6321d).c(c7);
                        t0Var.h(this);
                        if (AbstractC0467i0.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + c7);
                        }
                        c7.e();
                    }
                    if (c7.f6072U) {
                        if (c7.f6068Q != null && (viewGroup = c7.f6067P) != null) {
                            M0 g7 = M0.g(viewGroup, c7.getParentFragmentManager());
                            boolean z8 = c7.f6060I;
                            SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact = SpecialEffectsController$Operation$LifecycleImpact.f6156b;
                            if (z8) {
                                g7.getClass();
                                if (AbstractC0467i0.isLoggingEnabled(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + c7);
                                }
                                g7.a(SpecialEffectsController$Operation$State.f6162f, specialEffectsController$Operation$LifecycleImpact, this);
                            } else {
                                g7.getClass();
                                if (AbstractC0467i0.isLoggingEnabled(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + c7);
                                }
                                g7.a(SpecialEffectsController$Operation$State.f6161e, specialEffectsController$Operation$LifecycleImpact, this);
                            }
                        }
                        AbstractC0467i0 abstractC0467i0 = c7.f6053B;
                        if (abstractC0467i0 != null && c7.f6093u && AbstractC0467i0.B(c7)) {
                            abstractC0467i0.f6212D = true;
                        }
                        c7.f6072U = false;
                        c7.onHiddenChanged(c7.f6060I);
                        c7.f6055D.n();
                    }
                    this.f6305d = false;
                    return;
                }
                if (d7 <= i2) {
                    switch (i2 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            c7.f6079b = 1;
                            break;
                        case 2:
                            c7.f6096x = false;
                            c7.f6079b = 2;
                            break;
                        case 3:
                            if (AbstractC0467i0.isLoggingEnabled(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + c7);
                            }
                            if (c7.f6068Q != null && c7.f6084f == null) {
                                o();
                            }
                            if (c7.f6068Q != null && (viewGroup2 = c7.f6067P) != null) {
                                M0 g8 = M0.g(viewGroup2, c7.getParentFragmentManager());
                                g8.getClass();
                                if (AbstractC0467i0.isLoggingEnabled(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + c7);
                                }
                                g8.a(SpecialEffectsController$Operation$State.f6160b, SpecialEffectsController$Operation$LifecycleImpact.f6158f, this);
                            }
                            c7.f6079b = 3;
                            break;
                        case 4:
                            q();
                            break;
                        case 5:
                            c7.f6079b = 5;
                            break;
                        case 6:
                            l();
                            break;
                    }
                } else {
                    switch (i2 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (c7.f6068Q != null && (viewGroup3 = c7.f6067P) != null) {
                                M0 g9 = M0.g(viewGroup3, c7.getParentFragmentManager());
                                SpecialEffectsController$Operation$State d8 = SpecialEffectsController$Operation$State.d(c7.f6068Q.getVisibility());
                                g9.getClass();
                                if (AbstractC0467i0.isLoggingEnabled(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + c7);
                                }
                                g9.a(d8, SpecialEffectsController$Operation$LifecycleImpact.f6157e, this);
                            }
                            c7.f6079b = 4;
                            break;
                        case 5:
                            p();
                            break;
                        case 6:
                            c7.f6079b = 6;
                            break;
                        case 7:
                            n();
                            break;
                    }
                }
                z7 = true;
            }
        } catch (Throwable th) {
            this.f6305d = false;
            throw th;
        }
    }

    public final void l() {
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom RESUMED: " + c7);
        }
        c7.f6055D.t(5);
        if (c7.f6068Q != null) {
            c7.f6077Z.a(Lifecycle$Event.ON_PAUSE);
        }
        c7.f6076Y.handleLifecycleEvent(Lifecycle$Event.ON_PAUSE);
        c7.f6079b = 6;
        c7.f6066O = false;
        c7.onPause();
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onPause()"));
        }
        this.f6302a.g(false);
    }

    public final void m(ClassLoader classLoader) {
        C c7 = this.f6304c;
        Bundle bundle = c7.f6083e;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        c7.f6084f = c7.f6083e.getSparseParcelableArray("android:view_state");
        c7.f6085j = c7.f6083e.getBundle("android:view_registry_state");
        c7.f6090r = c7.f6083e.getString("android:target_state");
        if (c7.f6090r != null) {
            c7.f6091s = c7.f6083e.getInt("android:target_req_state", 0);
        }
        Boolean bool = c7.f6086m;
        if (bool != null) {
            c7.f6070S = bool.booleanValue();
            c7.f6086m = null;
        } else {
            c7.f6070S = c7.f6083e.getBoolean("android:user_visible_hint", true);
        }
        if (c7.f6070S) {
            return;
        }
        c7.f6069R = true;
    }

    public final void n() {
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto RESUMED: " + c7);
        }
        B b7 = c7.f6071T;
        View view = b7 == null ? null : b7.f6049m;
        if (view != null) {
            if (view != c7.f6068Q) {
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent != c7.f6068Q) {
                    }
                }
            }
            boolean requestFocus = view.requestFocus();
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                sb.append(view);
                sb.append(StringUtils.SPACE);
                sb.append(requestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(c7);
                sb.append(" resulting in focused view ");
                sb.append(c7.f6068Q.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        c7.b().f6049m = null;
        c7.f6055D.F();
        c7.f6055D.w(true);
        c7.f6079b = 7;
        c7.f6066O = false;
        c7.onResume();
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onResume()"));
        }
        C0564w c0564w = c7.f6076Y;
        Lifecycle$Event lifecycle$Event = Lifecycle$Event.ON_RESUME;
        c0564w.handleLifecycleEvent(lifecycle$Event);
        if (c7.f6068Q != null) {
            c7.f6077Z.a(lifecycle$Event);
        }
        C0469j0 c0469j0 = c7.f6055D;
        c0469j0.f6213E = false;
        c0469j0.f6214F = false;
        c0469j0.f6220L.f6277i = false;
        c0469j0.t(7);
        this.f6302a.j(false);
        c7.f6083e = null;
        c7.f6084f = null;
        c7.f6085j = null;
    }

    public final void o() {
        C c7 = this.f6304c;
        if (c7.f6068Q == null) {
            return;
        }
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + c7 + " with view " + c7.f6068Q);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        c7.f6068Q.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            c7.f6084f = sparseArray;
        }
        Bundle bundle = new Bundle();
        c7.f6077Z.f6112j.performSave(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        c7.f6085j = bundle;
    }

    public final void p() {
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto STARTED: " + c7);
        }
        c7.f6055D.F();
        c7.f6055D.w(true);
        c7.f6079b = 5;
        c7.f6066O = false;
        c7.onStart();
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onStart()"));
        }
        C0564w c0564w = c7.f6076Y;
        Lifecycle$Event lifecycle$Event = Lifecycle$Event.ON_START;
        c0564w.handleLifecycleEvent(lifecycle$Event);
        if (c7.f6068Q != null) {
            c7.f6077Z.a(lifecycle$Event);
        }
        C0469j0 c0469j0 = c7.f6055D;
        c0469j0.f6213E = false;
        c0469j0.f6214F = false;
        c0469j0.f6220L.f6277i = false;
        c0469j0.t(5);
        this.f6302a.l(false);
    }

    public final void q() {
        boolean isLoggingEnabled = AbstractC0467i0.isLoggingEnabled(3);
        C c7 = this.f6304c;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom STARTED: " + c7);
        }
        C0469j0 c0469j0 = c7.f6055D;
        c0469j0.f6214F = true;
        c0469j0.f6220L.f6277i = true;
        c0469j0.t(4);
        if (c7.f6068Q != null) {
            c7.f6077Z.a(Lifecycle$Event.ON_STOP);
        }
        c7.f6076Y.handleLifecycleEvent(Lifecycle$Event.ON_STOP);
        c7.f6079b = 4;
        c7.f6066O = false;
        c7.onStop();
        if (!c7.f6066O) {
            throw new SuperNotCalledException(A.i.j("Fragment ", c7, " did not call through to super.onStop()"));
        }
        this.f6302a.m(false);
    }

    public s0(C.k kVar, t0 t0Var, ClassLoader classLoader, O o6, q0 q0Var) {
        this.f6302a = kVar;
        this.f6303b = t0Var;
        C instantiate = o6.instantiate(classLoader, q0Var.f6285b);
        Bundle bundle = q0Var.f6294s;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        instantiate.setArguments(bundle);
        instantiate.f6087n = q0Var.f6286e;
        instantiate.f6095w = q0Var.f6287f;
        instantiate.f6097y = true;
        instantiate.f6057F = q0Var.f6288j;
        instantiate.f6058G = q0Var.f6289m;
        instantiate.f6059H = q0Var.f6290n;
        instantiate.f6062K = q0Var.f6291p;
        instantiate.f6094v = q0Var.f6292q;
        instantiate.f6061J = q0Var.f6293r;
        instantiate.f6060I = q0Var.f6295t;
        instantiate.f6075X = Lifecycle$State.values()[q0Var.f6296u];
        Bundle bundle2 = q0Var.f6297v;
        if (bundle2 != null) {
            instantiate.f6083e = bundle2;
        } else {
            instantiate.f6083e = new Bundle();
        }
        this.f6304c = instantiate;
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + instantiate);
        }
    }

    public s0(C.k kVar, t0 t0Var, C c7, q0 q0Var) {
        this.f6302a = kVar;
        this.f6303b = t0Var;
        this.f6304c = c7;
        c7.f6084f = null;
        c7.f6085j = null;
        c7.f6052A = 0;
        c7.f6096x = false;
        c7.f6093u = false;
        C c8 = c7.f6089q;
        c7.f6090r = c8 != null ? c8.f6087n : null;
        c7.f6089q = null;
        Bundle bundle = q0Var.f6297v;
        if (bundle != null) {
            c7.f6083e = bundle;
        } else {
            c7.f6083e = new Bundle();
        }
    }
}
