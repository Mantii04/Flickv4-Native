package com.bumptech.glide.manager;

/* loaded from: classes.dex */
public final class D implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f9342b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ E f9343e;

    public D(E e3, boolean z6) {
        this.f9343e = e3;
        this.f9342b = z6;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f9343e.f9346b.onConnectivityChanged(this.f9342b);
    }
}
