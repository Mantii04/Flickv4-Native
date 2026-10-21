package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.util.Log;

/* loaded from: classes.dex */
public final class y implements v {

    /* renamed from: a, reason: collision with root package name */
    public boolean f9381a;

    /* renamed from: b, reason: collision with root package name */
    public final u f9382b;

    /* renamed from: c, reason: collision with root package name */
    public final G2.k f9383c;

    /* renamed from: d, reason: collision with root package name */
    public final x f9384d = new x(this);

    public y(G2.k kVar, u uVar) {
        this.f9383c = kVar;
        this.f9382b = uVar;
    }

    @Override // com.bumptech.glide.manager.v
    @SuppressLint({"MissingPermission"})
    public boolean register() {
        G2.k kVar = this.f9383c;
        this.f9381a = ((ConnectivityManager) kVar.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) kVar.get()).registerDefaultNetworkCallback(this.f9384d);
            return true;
        } catch (RuntimeException e3) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register callback", e3);
            }
            return false;
        }
    }

    @Override // com.bumptech.glide.manager.v
    public void unregister() {
        ((ConnectivityManager) this.f9383c.get()).unregisterNetworkCallback(this.f9384d);
    }
}
