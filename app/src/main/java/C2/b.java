package C2;

import com.bumptech.glide.request.RequestCoordinator$RequestState;

/* loaded from: classes.dex */
public final class b implements d, c {

    /* renamed from: a, reason: collision with root package name */
    public final Object f492a;

    /* renamed from: b, reason: collision with root package name */
    public final d f493b;

    /* renamed from: c, reason: collision with root package name */
    public volatile c f494c;

    /* renamed from: d, reason: collision with root package name */
    public volatile c f495d;

    /* renamed from: e, reason: collision with root package name */
    public RequestCoordinator$RequestState f496e;

    /* renamed from: f, reason: collision with root package name */
    public RequestCoordinator$RequestState f497f;

    public b(Object obj, d dVar) {
        RequestCoordinator$RequestState requestCoordinator$RequestState = RequestCoordinator$RequestState.CLEARED;
        this.f496e = requestCoordinator$RequestState;
        this.f497f = requestCoordinator$RequestState;
        this.f492a = obj;
        this.f493b = dVar;
    }

    @Override // C2.c
    public void begin() {
        synchronized (this.f492a) {
            try {
                RequestCoordinator$RequestState requestCoordinator$RequestState = this.f496e;
                RequestCoordinator$RequestState requestCoordinator$RequestState2 = RequestCoordinator$RequestState.RUNNING;
                if (requestCoordinator$RequestState != requestCoordinator$RequestState2) {
                    this.f496e = requestCoordinator$RequestState2;
                    this.f494c.begin();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // C2.d
    public boolean canNotifyCleared(c cVar) {
        boolean z6;
        boolean z7;
        synchronized (this.f492a) {
            try {
                d dVar = this.f493b;
                z6 = true;
                if (dVar != null && !dVar.canNotifyCleared(this)) {
                    z7 = false;
                    if (z7 || !cVar.equals(this.f494c)) {
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

    /* JADX WARN: Removed duplicated region for block: B:11:0x0015 A[Catch: all -> 0x003b, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:11:0x0015, B:13:0x001b, B:16:0x0039, B:20:0x0022, B:22:0x002a), top: B:3:0x0003 }] */
    @Override // C2.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean canNotifyStatusChanged(C2.c r6) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.f492a
            monitor-enter(r0)
            C2.d r1 = r5.f493b     // Catch: java.lang.Throwable -> L3b
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L12
            boolean r1 = r1.canNotifyStatusChanged(r5)     // Catch: java.lang.Throwable -> L3b
            if (r1 == 0) goto L10
            goto L12
        L10:
            r1 = r3
            goto L13
        L12:
            r1 = r2
        L13:
            if (r1 == 0) goto L38
            com.bumptech.glide.request.RequestCoordinator$RequestState r1 = r5.f496e     // Catch: java.lang.Throwable -> L3b
            com.bumptech.glide.request.RequestCoordinator$RequestState r4 = com.bumptech.glide.request.RequestCoordinator$RequestState.FAILED     // Catch: java.lang.Throwable -> L3b
            if (r1 == r4) goto L22
            C2.c r1 = r5.f494c     // Catch: java.lang.Throwable -> L3b
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> L3b
            goto L35
        L22:
            C2.c r1 = r5.f495d     // Catch: java.lang.Throwable -> L3b
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> L3b
            if (r6 == 0) goto L34
            com.bumptech.glide.request.RequestCoordinator$RequestState r6 = r5.f497f     // Catch: java.lang.Throwable -> L3b
            com.bumptech.glide.request.RequestCoordinator$RequestState r1 = com.bumptech.glide.request.RequestCoordinator$RequestState.SUCCESS     // Catch: java.lang.Throwable -> L3b
            if (r6 == r1) goto L32
            if (r6 != r4) goto L34
        L32:
            r6 = r2
            goto L35
        L34:
            r6 = r3
        L35:
            if (r6 == 0) goto L38
            goto L39
        L38:
            r2 = r3
        L39:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3b
            return r2
        L3b:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3b
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: C2.b.canNotifyStatusChanged(C2.c):boolean");
    }

    @Override // C2.d
    public boolean canSetImage(c cVar) {
        boolean z6;
        synchronized (this.f492a) {
            d dVar = this.f493b;
            z6 = dVar == null || dVar.canSetImage(this);
        }
        return z6;
    }

    @Override // C2.c
    public void clear() {
        synchronized (this.f492a) {
            try {
                RequestCoordinator$RequestState requestCoordinator$RequestState = RequestCoordinator$RequestState.CLEARED;
                this.f496e = requestCoordinator$RequestState;
                this.f494c.clear();
                if (this.f497f != requestCoordinator$RequestState) {
                    this.f497f = requestCoordinator$RequestState;
                    this.f495d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // C2.d
    public d getRoot() {
        d root;
        synchronized (this.f492a) {
            try {
                d dVar = this.f493b;
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
        synchronized (this.f492a) {
            try {
                z6 = this.f494c.isAnyResourceSet() || this.f495d.isAnyResourceSet();
            } finally {
            }
        }
        return z6;
    }

    @Override // C2.c
    public boolean isCleared() {
        boolean z6;
        synchronized (this.f492a) {
            try {
                RequestCoordinator$RequestState requestCoordinator$RequestState = this.f496e;
                RequestCoordinator$RequestState requestCoordinator$RequestState2 = RequestCoordinator$RequestState.CLEARED;
                z6 = requestCoordinator$RequestState == requestCoordinator$RequestState2 && this.f497f == requestCoordinator$RequestState2;
            } finally {
            }
        }
        return z6;
    }

    @Override // C2.c
    public boolean isComplete() {
        boolean z6;
        synchronized (this.f492a) {
            try {
                RequestCoordinator$RequestState requestCoordinator$RequestState = this.f496e;
                RequestCoordinator$RequestState requestCoordinator$RequestState2 = RequestCoordinator$RequestState.SUCCESS;
                z6 = requestCoordinator$RequestState == requestCoordinator$RequestState2 || this.f497f == requestCoordinator$RequestState2;
            } finally {
            }
        }
        return z6;
    }

    @Override // C2.c
    public boolean isEquivalentTo(c cVar) {
        if (cVar instanceof b) {
            b bVar = (b) cVar;
            if (this.f494c.isEquivalentTo(bVar.f494c) && this.f495d.isEquivalentTo(bVar.f495d)) {
                return true;
            }
        }
        return false;
    }

    @Override // C2.c
    public boolean isRunning() {
        boolean z6;
        synchronized (this.f492a) {
            try {
                RequestCoordinator$RequestState requestCoordinator$RequestState = this.f496e;
                RequestCoordinator$RequestState requestCoordinator$RequestState2 = RequestCoordinator$RequestState.RUNNING;
                z6 = requestCoordinator$RequestState == requestCoordinator$RequestState2 || this.f497f == requestCoordinator$RequestState2;
            } finally {
            }
        }
        return z6;
    }

    @Override // C2.d
    public void onRequestFailed(c cVar) {
        synchronized (this.f492a) {
            try {
                if (cVar.equals(this.f495d)) {
                    this.f497f = RequestCoordinator$RequestState.FAILED;
                    d dVar = this.f493b;
                    if (dVar != null) {
                        dVar.onRequestFailed(this);
                    }
                    return;
                }
                this.f496e = RequestCoordinator$RequestState.FAILED;
                RequestCoordinator$RequestState requestCoordinator$RequestState = this.f497f;
                RequestCoordinator$RequestState requestCoordinator$RequestState2 = RequestCoordinator$RequestState.RUNNING;
                if (requestCoordinator$RequestState != requestCoordinator$RequestState2) {
                    this.f497f = requestCoordinator$RequestState2;
                    this.f495d.begin();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // C2.d
    public void onRequestSuccess(c cVar) {
        synchronized (this.f492a) {
            try {
                if (cVar.equals(this.f494c)) {
                    this.f496e = RequestCoordinator$RequestState.SUCCESS;
                } else if (cVar.equals(this.f495d)) {
                    this.f497f = RequestCoordinator$RequestState.SUCCESS;
                }
                d dVar = this.f493b;
                if (dVar != null) {
                    dVar.onRequestSuccess(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // C2.c
    public void pause() {
        synchronized (this.f492a) {
            try {
                RequestCoordinator$RequestState requestCoordinator$RequestState = this.f496e;
                RequestCoordinator$RequestState requestCoordinator$RequestState2 = RequestCoordinator$RequestState.RUNNING;
                if (requestCoordinator$RequestState == requestCoordinator$RequestState2) {
                    this.f496e = RequestCoordinator$RequestState.PAUSED;
                    this.f494c.pause();
                }
                if (this.f497f == requestCoordinator$RequestState2) {
                    this.f497f = RequestCoordinator$RequestState.PAUSED;
                    this.f495d.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setRequests(c cVar, c cVar2) {
        this.f494c = cVar;
        this.f495d = cVar2;
    }
}
