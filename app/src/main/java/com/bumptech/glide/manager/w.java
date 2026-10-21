package com.bumptech.glide.manager;

/* loaded from: classes.dex */
public final class w implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f9378b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ x f9379e;

    public w(x xVar, boolean z6) {
        this.f9379e = xVar;
        this.f9378b = z6;
    }

    @Override // java.lang.Runnable
    public void run() {
        x xVar = this.f9379e;
        xVar.getClass();
        G2.t.assertMainThread();
        y yVar = xVar.f9380a;
        boolean z6 = yVar.f9381a;
        boolean z7 = this.f9378b;
        yVar.f9381a = z7;
        if (z6 != z7) {
            yVar.f9382b.onConnectivityChanged(z7);
        }
    }
}
