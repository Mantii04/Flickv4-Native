package com.bumptech.glide;

/* loaded from: classes.dex */
public final class n implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f9386b;

    public n(q qVar) {
        this.f9386b = qVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        q qVar = this.f9386b;
        qVar.f9393f.addListener(qVar);
    }
}
