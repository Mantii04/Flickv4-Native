package com.bumptech.glide.load.engine;

import C2.g;
import G2.i;
import n2.C1381C;
import n2.C1382D;

/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final g f9283b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f9284e;

    public d(e eVar, g gVar) {
        this.f9284e = eVar;
        this.f9283b = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (((com.bumptech.glide.request.a) this.f9283b).getLock()) {
            synchronized (this.f9284e) {
                try {
                    C1382D c1382d = this.f9284e.f9294b;
                    g gVar = this.f9283b;
                    c1382d.getClass();
                    if (c1382d.f18881b.contains(new C1381C(gVar, i.directExecutor()))) {
                        this.f9284e.f9290E.a();
                        e eVar = this.f9284e;
                        g gVar2 = this.f9283b;
                        eVar.getClass();
                        try {
                            ((com.bumptech.glide.request.a) gVar2).onResourceReady(eVar.f9290E, eVar.f9286A, eVar.f9293H);
                            this.f9284e.h(this.f9283b);
                        } catch (Throwable th) {
                            throw new CallbackException(th);
                        }
                    }
                    this.f9284e.b();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
