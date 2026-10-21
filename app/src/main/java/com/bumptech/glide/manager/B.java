package com.bumptech.glide.manager;

/* loaded from: classes.dex */
public final class B implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ E f9340b;

    public B(E e3) {
        this.f9340b = e3;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f9340b.f9349e) {
            this.f9340b.f9349e = false;
            E e3 = this.f9340b;
            e3.f9345a.unregisterReceiver(e3.f9350f);
        }
    }
}
