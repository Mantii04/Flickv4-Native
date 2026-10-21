package com.bumptech.glide.manager;

import android.content.IntentFilter;
import android.util.Log;

/* loaded from: classes.dex */
public final class A implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ E f9339b;

    public A(E e3) {
        this.f9339b = e3;
    }

    @Override // java.lang.Runnable
    public void run() {
        E e3 = this.f9339b;
        e3.f9348d = e3.a();
        try {
            E e7 = this.f9339b;
            e7.f9345a.registerReceiver(e7.f9350f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f9339b.f9349e = true;
        } catch (SecurityException e8) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register", e8);
            }
            this.f9339b.f9349e = false;
        }
    }
}
