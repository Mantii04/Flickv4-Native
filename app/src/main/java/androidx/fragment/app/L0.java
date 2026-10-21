package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class L0 {

    /* renamed from: a, reason: collision with root package name */
    public SpecialEffectsController$Operation$State f6134a;

    /* renamed from: b, reason: collision with root package name */
    public SpecialEffectsController$Operation$LifecycleImpact f6135b;

    /* renamed from: c, reason: collision with root package name */
    public final C f6136c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f6137d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f6138e = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    public boolean f6139f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6140g = false;

    public L0(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact, C c7, I.f fVar) {
        this.f6134a = specialEffectsController$Operation$State;
        this.f6135b = specialEffectsController$Operation$LifecycleImpact;
        this.f6136c = c7;
        fVar.setOnCancelListener(new K0(this));
    }

    public final void a() {
        if (this.f6139f) {
            return;
        }
        this.f6139f = true;
        HashSet hashSet = this.f6138e;
        if (hashSet.isEmpty()) {
            complete();
            return;
        }
        Iterator it = new ArrayList(hashSet).iterator();
        while (it.hasNext()) {
            ((I.f) it.next()).cancel();
        }
    }

    public final void b(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact) {
        int ordinal = specialEffectsController$Operation$LifecycleImpact.ordinal();
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = SpecialEffectsController$Operation$State.f6160b;
        C c7 = this.f6136c;
        if (ordinal == 0) {
            if (this.f6134a != specialEffectsController$Operation$State2) {
                if (AbstractC0467i0.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + c7 + " mFinalState = " + this.f6134a + " -> " + specialEffectsController$Operation$State + ". ");
                }
                this.f6134a = specialEffectsController$Operation$State;
                return;
            }
            return;
        }
        if (ordinal == 1) {
            if (this.f6134a == specialEffectsController$Operation$State2) {
                if (AbstractC0467i0.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + c7 + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f6135b + " to ADDING.");
                }
                this.f6134a = SpecialEffectsController$Operation$State.f6161e;
                this.f6135b = SpecialEffectsController$Operation$LifecycleImpact.f6157e;
                return;
            }
            return;
        }
        if (ordinal != 2) {
            return;
        }
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + c7 + " mFinalState = " + this.f6134a + " -> REMOVED. mLifecycleImpact  = " + this.f6135b + " to REMOVING.");
        }
        this.f6134a = specialEffectsController$Operation$State2;
        this.f6135b = SpecialEffectsController$Operation$LifecycleImpact.f6158f;
    }

    public abstract void c();

    public void complete() {
        if (this.f6140g) {
            return;
        }
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
        }
        this.f6140g = true;
        Iterator it = this.f6137d.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public final void completeSpecialEffect(I.f fVar) {
        HashSet hashSet = this.f6138e;
        if (hashSet.remove(fVar) && hashSet.isEmpty()) {
            complete();
        }
    }

    public SpecialEffectsController$Operation$State getFinalState() {
        return this.f6134a;
    }

    public final C getFragment() {
        return this.f6136c;
    }

    public final void markStartedSpecialEffect(I.f fVar) {
        c();
        this.f6138e.add(fVar);
    }

    public String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f6134a + "} {mLifecycleImpact = " + this.f6135b + "} {mFragment = " + this.f6136c + "}";
    }
}
