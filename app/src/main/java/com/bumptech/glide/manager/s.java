package com.bumptech.glide.manager;

import android.util.Log;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public final Set f9373a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f9374b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public boolean f9375c;

    public boolean clearAndRemove(C2.c cVar) {
        boolean z6 = true;
        if (cVar == null) {
            return true;
        }
        boolean remove = this.f9373a.remove(cVar);
        if (!this.f9374b.remove(cVar) && !remove) {
            z6 = false;
        }
        if (z6) {
            cVar.clear();
        }
        return z6;
    }

    public void clearRequests() {
        Iterator it = G2.t.getSnapshot(this.f9373a).iterator();
        while (it.hasNext()) {
            clearAndRemove((C2.c) it.next());
        }
        this.f9374b.clear();
    }

    public void pauseRequests() {
        this.f9375c = true;
        for (C2.c cVar : G2.t.getSnapshot(this.f9373a)) {
            if (cVar.isRunning()) {
                cVar.pause();
                this.f9374b.add(cVar);
            }
        }
    }

    public void restartRequests() {
        for (C2.c cVar : G2.t.getSnapshot(this.f9373a)) {
            if (!cVar.isComplete() && !cVar.isCleared()) {
                cVar.clear();
                if (this.f9375c) {
                    this.f9374b.add(cVar);
                } else {
                    cVar.begin();
                }
            }
        }
    }

    public void resumeRequests() {
        this.f9375c = false;
        for (C2.c cVar : G2.t.getSnapshot(this.f9373a)) {
            if (!cVar.isComplete() && !cVar.isRunning()) {
                cVar.begin();
            }
        }
        this.f9374b.clear();
    }

    public void runRequest(C2.c cVar) {
        this.f9373a.add(cVar);
        if (!this.f9375c) {
            cVar.begin();
            return;
        }
        cVar.clear();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        this.f9374b.add(cVar);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f9373a.size() + ", isPaused=" + this.f9375c + "}";
    }
}
