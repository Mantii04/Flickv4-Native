package com.bumptech.glide.load.engine;

import C2.g;
import G2.i;
import n2.C1381C;
import n2.C1382D;

/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final g f9281b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f9282e;

    public c(e eVar, g gVar) {
        this.f9282e = eVar;
        this.f9281b = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (((com.bumptech.glide.request.a) this.f9281b).getLock()) {
            synchronized (this.f9282e) {
                try {
                    C1382D c1382d = this.f9282e.f9294b;
                    g gVar = this.f9281b;
                    c1382d.getClass();
                    if (c1382d.f18881b.contains(new C1381C(gVar, i.directExecutor()))) {
                        e eVar = this.f9282e;
                        g gVar2 = this.f9281b;
                        eVar.getClass();
                        try {
                            ((com.bumptech.glide.request.a) gVar2).onLoadFailed(eVar.f9288C);
                        } catch (Throwable th) {
                            throw new CallbackException(th);
                        }
                    }
                    this.f9282e.b();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
