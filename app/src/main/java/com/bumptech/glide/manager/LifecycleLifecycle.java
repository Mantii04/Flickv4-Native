package com.bumptech.glide.manager;

import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.InterfaceC0560s;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class LifecycleLifecycle implements k, InterfaceC0560s {

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f9356b = new HashSet();

    /* renamed from: e, reason: collision with root package name */
    public final AbstractC0557o f9357e;

    public LifecycleLifecycle(AbstractC0557o abstractC0557o) {
        this.f9357e = abstractC0557o;
        abstractC0557o.addObserver(this);
    }

    @Override // com.bumptech.glide.manager.k
    public void addListener(l lVar) {
        this.f9356b.add(lVar);
        AbstractC0557o abstractC0557o = this.f9357e;
        if (abstractC0557o.getCurrentState() == Lifecycle$State.f6967b) {
            lVar.onDestroy();
        } else if (abstractC0557o.getCurrentState().isAtLeast(Lifecycle$State.f6970j)) {
            lVar.onStart();
        } else {
            lVar.onStop();
        }
    }

    @androidx.lifecycle.G(Lifecycle$Event.ON_DESTROY)
    public void onDestroy(InterfaceC0561t interfaceC0561t) {
        Iterator it = G2.t.getSnapshot(this.f9356b).iterator();
        while (it.hasNext()) {
            ((l) it.next()).onDestroy();
        }
        interfaceC0561t.getLifecycle().removeObserver(this);
    }

    @androidx.lifecycle.G(Lifecycle$Event.ON_START)
    public void onStart(InterfaceC0561t interfaceC0561t) {
        Iterator it = G2.t.getSnapshot(this.f9356b).iterator();
        while (it.hasNext()) {
            ((l) it.next()).onStart();
        }
    }

    @androidx.lifecycle.G(Lifecycle$Event.ON_STOP)
    public void onStop(InterfaceC0561t interfaceC0561t) {
        Iterator it = G2.t.getSnapshot(this.f9356b).iterator();
        while (it.hasNext()) {
            ((l) it.next()).onStop();
        }
    }

    @Override // com.bumptech.glide.manager.k
    public void removeListener(l lVar) {
        this.f9356b.remove(lVar);
    }
}
