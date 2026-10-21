package com.bumptech.glide.manager;

import android.util.Log;

/* loaded from: classes.dex */
public final class C implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ E f9341b;

    public C(E e3) {
        this.f9341b = e3;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z6 = this.f9341b.f9348d;
        E e3 = this.f9341b;
        e3.f9348d = e3.a();
        if (z6 != this.f9341b.f9348d) {
            if (Log.isLoggable("ConnectivityMonitor", 3)) {
                Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + this.f9341b.f9348d);
            }
            E e7 = this.f9341b;
            G2.t.postOnUiThread(new D(e7, e7.f9348d));
        }
    }
}
