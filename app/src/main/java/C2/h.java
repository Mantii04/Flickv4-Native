package C2;

import com.bumptech.glide.request.RequestCoordinator$RequestState;

/* loaded from: classes.dex */
public final class h implements d, c {

    /* renamed from: a, reason: collision with root package name */
    public final d f498a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f499b;

    /* renamed from: c, reason: collision with root package name */
    public volatile c f500c;

    /* renamed from: d, reason: collision with root package name */
    public volatile c f501d;

    /* renamed from: e, reason: collision with root package name */
    public RequestCoordinator$RequestState f502e;

    /* renamed from: f, reason: collision with root package name */
    public RequestCoordinator$RequestState f503f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f504g;

    public h(Object obj, d dVar) {
        RequestCoordinator$RequestState requestCoordinator$RequestState = RequestCoordinator$RequestState.CLEARED;
        this.f502e = requestCoordinator$RequestState;
        this.f503f = requestCoordinator$RequestState;
        this.f499b = obj;
        this.f498a = dVar;
    }

    @Override // C2.c
    public void begin() {
        synchronized (this.f499b) {
            try {
                this.f504g = true;
                try {
                    if (this.f502e != RequestCoordinator$RequestState.SUCCESS) {
                        RequestCoordinator$RequestState requestCoordinator$RequestState = this.f503f;
                        RequestCoordinator$RequestState requestCoordinator$RequestState2 = RequestCoordinator$RequestState.RUNNING;
                        if (requestCoordinator$RequestState != requestCoordinator$RequestState2) {
                            this.f503f = requestCoordinator$RequestState2;
                            this.f501d.begin();
                        }
                    }
                    if (this.f504g) {
                        RequestCoordinator$RequestState requestCoordinator$RequestState3 = this.f502e;
                        RequestCoordinator$RequestState requestCoordinator$RequestState4 = RequestCoordinator$RequestState.RUNNING;
                        if (requestCoordinator$RequestState3 != requestCoordinator$RequestState4) {
                            this.f502e = requestCoordinator$RequestState4;
                            this.f500c.begin();
                        }
                    }
                    this.f504g = false;
                } catch (Throwable th) {
                    this.f504g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // C2.d
    public boolean canNotifyCleared(c cVar) {
        boolean z6;
        boolean z7;
        synchronized (this.f499b) {
            try {
                d dVar = this.f498a;
                z6 = true;
                if (dVar != null && !dVar.canNotifyCleared(this)) {
                    z7 = false;
                    if (z7 || !cVar.equals(this.f500c) || this.f502e == RequestCoordinator$RequestState.PAUSED) {
                        z6 = false;
                    }
                }
                z7 = true;
                if (z7) {
                }
                z6 = false;
            } finally {
            }
        }
        return z6;
    }

    @Override // C2.d
    public boolean canNotifyStatusChanged(c cVar) {
        boolean z6;
        boolean z7;
        synchronized (this.f499b) {
            try {
                d dVar = this.f498a;
                z6 = true;
                if (dVar != null && !dVar.canNotifyStatusChanged(this)) {
                    z7 = false;
                    if (z7 || !cVar.equals(this.f500c) || isAnyResourceSet()) {
                        z6 = false;
                    }
                }
                z7 = true;
                if (z7) {
                }
                z6 = false;
            } finally {
            }
        }
        return z6;
    }

    @Override // C2.d
    public boolean canSetImage(c cVar) {
        boolean z6;
        boolean z7;
        synchronized (this.f499b) {
            try {
                d dVar = this.f498a;
                z6 = true;
                if (dVar != null && !dVar.canSetImage(this)) {
                    z7 = false;
                    if (z7 || (!cVar.equals(this.f500c) && this.f502e == RequestCoordinator$RequestState.SUCCESS)) {
                        z6 = false;
                    }
                }
                z7 = true;
                if (z7) {
                }
                z6 = false;
            } finally {
            }
        }
        return z6;
    }

    @Override // C2.c
    public void clear() {
        synchronized (this.f499b) {
            this.f504g = false;
            RequestCoordinator$RequestState requestCoordinator$RequestState = RequestCoordinator$RequestState.CLEARED;
            this.f502e = requestCoordinator$RequestState;
            this.f503f = requestCoordinator$RequestState;
            this.f501d.clear();
            this.f500c.clear();
        }
    }

    @Override // C2.d
    public d getRoot() {
        d root;
        synchronized (this.f499b) {
            try {
                d dVar = this.f498a;
                root = dVar != null ? dVar.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // C2.d, C2.c
    public boolean isAnyResourceSet() {
        boolean z6;
        synchronized (this.f499b) {
            try {
                z6 = this.f501d.isAnyResourceSet() || this.f500c.isAnyResourceSet();
            } finally {
            }
        }
        return z6;
    }

    @Override // C2.c
    public boolean isCleared() {
        boolean z6;
        synchronized (this.f499b) {
            z6 = this.f502e == RequestCoordinator$RequestState.CLEARED;
        }
        return z6;
    }

    @Override // C2.c
    public boolean isComplete() {
        boolean z6;
        synchronized (this.f499b) {
            z6 = this.f502e == RequestCoordinator$RequestState.SUCCESS;
        }
        return z6;
    }

    @Override // C2.c
    public boolean isEquivalentTo(c cVar) {
        if (cVar instanceof h) {
            h hVar = (h) cVar;
            if (this.f500c != null ? this.f500c.isEquivalentTo(hVar.f500c) : hVar.f500c == null) {
                if (this.f501d == null) {
                    if (hVar.f501d == null) {
                        return true;
                    }
                } else if (this.f501d.isEquivalentTo(hVar.f501d)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // C2.c
    public boolean isRunning() {
        boolean z6;
        synchronized (this.f499b) {
            z6 = this.f502e == RequestCoordinator$RequestState.RUNNING;
        }
        return z6;
    }

    @Override // C2.d
    public void onRequestFailed(c cVar) {
        synchronized (this.f499b) {
            try {
                if (!cVar.equals(this.f500c)) {
                    this.f503f = RequestCoordinator$RequestState.FAILED;
                    return;
                }
                this.f502e = RequestCoordinator$RequestState.FAILED;
                d dVar = this.f498a;
                if (dVar != null) {
                    dVar.onRequestFailed(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // C2.d
    public void onRequestSuccess(c cVar) {
        synchronized (this.f499b) {
            try {
                if (cVar.equals(this.f501d)) {
                    this.f503f = RequestCoordinator$RequestState.SUCCESS;
                    return;
                }
                this.f502e = RequestCoordinator$RequestState.SUCCESS;
                d dVar = this.f498a;
                if (dVar != null) {
                    dVar.onRequestSuccess(this);
                }
                if (!this.f503f.f9408b) {
                    this.f501d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // C2.c
    public void pause() {
        synchronized (this.f499b) {
            try {
                if (!this.f503f.f9408b) {
                    this.f503f = RequestCoordinator$RequestState.PAUSED;
                    this.f501d.pause();
                }
                if (!this.f502e.f9408b) {
                    this.f502e = RequestCoordinator$RequestState.PAUSED;
                    this.f500c.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setRequests(c cVar, c cVar2) {
        this.f500c = cVar;
        this.f501d = cVar2;
    }
}
