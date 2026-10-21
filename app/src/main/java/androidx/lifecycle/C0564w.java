package androidx.lifecycle;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import m.C1256a;
import n.C1346a;
import n.C1349d;

/* renamed from: androidx.lifecycle.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0564w extends AbstractC0557o {

    /* renamed from: i, reason: collision with root package name */
    public static final C0562u f7045i = new C0562u(null);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7046a;

    /* renamed from: b, reason: collision with root package name */
    public C1346a f7047b;

    /* renamed from: c, reason: collision with root package name */
    public Lifecycle$State f7048c;

    /* renamed from: d, reason: collision with root package name */
    public final WeakReference f7049d;

    /* renamed from: e, reason: collision with root package name */
    public int f7050e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f7051f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7052g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f7053h;

    public C0564w(InterfaceC0561t provider) {
        kotlin.jvm.internal.j.checkNotNullParameter(provider, "provider");
        this.f7046a = true;
        this.f7047b = new C1346a();
        this.f7048c = Lifecycle$State.f6968e;
        this.f7053h = new ArrayList();
        this.f7049d = new WeakReference(provider);
    }

    public final Lifecycle$State a(InterfaceC0560s interfaceC0560s) {
        C0563v c0563v;
        Map.Entry<Object, Object> ceil = this.f7047b.ceil(interfaceC0560s);
        Lifecycle$State state = (ceil == null || (c0563v = (C0563v) ceil.getValue()) == null) ? null : c0563v.getState();
        ArrayList arrayList = this.f7053h;
        Lifecycle$State lifecycle$State = arrayList.isEmpty() ? null : (Lifecycle$State) b.c.h(1, arrayList);
        Lifecycle$State lifecycle$State2 = this.f7048c;
        C0562u c0562u = f7045i;
        return c0562u.min$lifecycle_runtime_release(c0562u.min$lifecycle_runtime_release(lifecycle$State2, state), lifecycle$State);
    }

    @Override // androidx.lifecycle.AbstractC0557o
    public void addObserver(InterfaceC0560s observer) {
        InterfaceC0561t interfaceC0561t;
        kotlin.jvm.internal.j.checkNotNullParameter(observer, "observer");
        b("addObserver");
        Lifecycle$State lifecycle$State = this.f7048c;
        Lifecycle$State lifecycle$State2 = Lifecycle$State.f6967b;
        if (lifecycle$State != lifecycle$State2) {
            lifecycle$State2 = Lifecycle$State.f6968e;
        }
        C0563v c0563v = new C0563v(observer, lifecycle$State2);
        if (((C0563v) this.f7047b.putIfAbsent(observer, c0563v)) == null && (interfaceC0561t = (InterfaceC0561t) this.f7049d.get()) != null) {
            boolean z6 = this.f7050e != 0 || this.f7051f;
            Lifecycle$State a7 = a(observer);
            this.f7050e++;
            while (c0563v.getState().compareTo(a7) < 0 && this.f7047b.contains(observer)) {
                this.f7053h.add(c0563v.getState());
                Lifecycle$Event upFrom = Lifecycle$Event.Companion.upFrom(c0563v.getState());
                if (upFrom == null) {
                    throw new IllegalStateException("no event up from " + c0563v.getState());
                }
                c0563v.dispatchEvent(interfaceC0561t, upFrom);
                ArrayList arrayList = this.f7053h;
                arrayList.remove(arrayList.size() - 1);
                a7 = a(observer);
            }
            if (!z6) {
                d();
            }
            this.f7050e--;
        }
    }

    public final void b(String str) {
        if (this.f7046a && !C1256a.getInstance().isMainThread()) {
            throw new IllegalStateException(A.i.l("Method ", str, " must be called on the main thread").toString());
        }
    }

    public final void c(Lifecycle$State lifecycle$State) {
        Lifecycle$State lifecycle$State2 = this.f7048c;
        if (lifecycle$State2 == lifecycle$State) {
            return;
        }
        Lifecycle$State lifecycle$State3 = Lifecycle$State.f6968e;
        Lifecycle$State lifecycle$State4 = Lifecycle$State.f6967b;
        if (lifecycle$State2 == lifecycle$State3 && lifecycle$State == lifecycle$State4) {
            throw new IllegalStateException(("no event down from " + this.f7048c + " in component " + this.f7049d.get()).toString());
        }
        this.f7048c = lifecycle$State;
        if (this.f7051f || this.f7050e != 0) {
            this.f7052g = true;
            return;
        }
        this.f7051f = true;
        d();
        this.f7051f = false;
        if (this.f7048c == lifecycle$State4) {
            this.f7047b = new C1346a();
        }
    }

    public final void d() {
        InterfaceC0561t interfaceC0561t = (InterfaceC0561t) this.f7049d.get();
        if (interfaceC0561t == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (this.f7047b.size() != 0) {
            Map.Entry<Object, Object> eldest = this.f7047b.eldest();
            kotlin.jvm.internal.j.checkNotNull(eldest);
            Lifecycle$State state = ((C0563v) eldest.getValue()).getState();
            Map.Entry<Object, Object> newest = this.f7047b.newest();
            kotlin.jvm.internal.j.checkNotNull(newest);
            Lifecycle$State state2 = ((C0563v) newest.getValue()).getState();
            if (state == state2 && this.f7048c == state2) {
                break;
            }
            this.f7052g = false;
            Lifecycle$State lifecycle$State = this.f7048c;
            Map.Entry<Object, Object> eldest2 = this.f7047b.eldest();
            kotlin.jvm.internal.j.checkNotNull(eldest2);
            if (lifecycle$State.compareTo(((C0563v) eldest2.getValue()).getState()) < 0) {
                Iterator<Map.Entry<Object, Object>> descendingIterator = this.f7047b.descendingIterator();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(descendingIterator, "observerMap.descendingIterator()");
                while (descendingIterator.hasNext() && !this.f7052g) {
                    Map.Entry<Object, Object> next = descendingIterator.next();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(next, "next()");
                    InterfaceC0560s interfaceC0560s = (InterfaceC0560s) next.getKey();
                    C0563v c0563v = (C0563v) next.getValue();
                    while (c0563v.getState().compareTo(this.f7048c) > 0 && !this.f7052g && this.f7047b.contains(interfaceC0560s)) {
                        Lifecycle$Event downFrom = Lifecycle$Event.Companion.downFrom(c0563v.getState());
                        if (downFrom == null) {
                            throw new IllegalStateException("no event down from " + c0563v.getState());
                        }
                        this.f7053h.add(downFrom.getTargetState());
                        c0563v.dispatchEvent(interfaceC0561t, downFrom);
                        this.f7053h.remove(r4.size() - 1);
                    }
                }
            }
            Map.Entry<Object, Object> newest2 = this.f7047b.newest();
            if (!this.f7052g && newest2 != null && this.f7048c.compareTo(((C0563v) newest2.getValue()).getState()) > 0) {
                C1349d iteratorWithAdditions = this.f7047b.iteratorWithAdditions();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(iteratorWithAdditions, "observerMap.iteratorWithAdditions()");
                while (iteratorWithAdditions.hasNext() && !this.f7052g) {
                    Map.Entry entry = (Map.Entry) iteratorWithAdditions.next();
                    InterfaceC0560s interfaceC0560s2 = (InterfaceC0560s) entry.getKey();
                    C0563v c0563v2 = (C0563v) entry.getValue();
                    while (c0563v2.getState().compareTo(this.f7048c) < 0 && !this.f7052g && this.f7047b.contains(interfaceC0560s2)) {
                        this.f7053h.add(c0563v2.getState());
                        Lifecycle$Event upFrom = Lifecycle$Event.Companion.upFrom(c0563v2.getState());
                        if (upFrom == null) {
                            throw new IllegalStateException("no event up from " + c0563v2.getState());
                        }
                        c0563v2.dispatchEvent(interfaceC0561t, upFrom);
                        this.f7053h.remove(r4.size() - 1);
                    }
                }
            }
        }
        this.f7052g = false;
    }

    @Override // androidx.lifecycle.AbstractC0557o
    public Lifecycle$State getCurrentState() {
        return this.f7048c;
    }

    public void handleLifecycleEvent(Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        b("handleLifecycleEvent");
        c(event.getTargetState());
    }

    @Override // androidx.lifecycle.AbstractC0557o
    public void removeObserver(InterfaceC0560s observer) {
        kotlin.jvm.internal.j.checkNotNullParameter(observer, "observer");
        b("removeObserver");
        this.f7047b.remove(observer);
    }

    public void setCurrentState(Lifecycle$State state) {
        kotlin.jvm.internal.j.checkNotNullParameter(state, "state");
        b("setCurrentState");
        c(state);
    }
}
