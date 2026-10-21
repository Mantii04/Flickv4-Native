package com.bumptech.glide.manager;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class G implements l {

    /* renamed from: b, reason: collision with root package name */
    public final Set f9355b = Collections.newSetFromMap(new WeakHashMap());

    public void clear() {
        this.f9355b.clear();
    }

    public List<D2.k> getAll() {
        return G2.t.getSnapshot(this.f9355b);
    }

    @Override // com.bumptech.glide.manager.l
    public void onDestroy() {
        Iterator it = G2.t.getSnapshot(this.f9355b).iterator();
        while (it.hasNext()) {
            ((D2.k) it.next()).onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.l
    public void onStart() {
        Iterator it = G2.t.getSnapshot(this.f9355b).iterator();
        while (it.hasNext()) {
            ((D2.k) it.next()).onStart();
        }
    }

    @Override // com.bumptech.glide.manager.l
    public void onStop() {
        Iterator it = G2.t.getSnapshot(this.f9355b).iterator();
        while (it.hasNext()) {
            ((D2.k) it.next()).onStop();
        }
    }

    public void track(D2.k kVar) {
        this.f9355b.add(kVar);
    }

    public void untrack(D2.k kVar) {
        this.f9355b.remove(kVar);
    }
}
