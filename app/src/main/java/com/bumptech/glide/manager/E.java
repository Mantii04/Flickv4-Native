package com.bumptech.glide.manager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.util.Log;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class E implements v {

    /* renamed from: g, reason: collision with root package name */
    public static final Executor f9344g = AsyncTask.SERIAL_EXECUTOR;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9345a;

    /* renamed from: b, reason: collision with root package name */
    public final u f9346b;

    /* renamed from: c, reason: collision with root package name */
    public final G2.k f9347c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f9348d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f9349e;

    /* renamed from: f, reason: collision with root package name */
    public final z f9350f = new z(this);

    public E(Context context, G2.k kVar, u uVar) {
        this.f9345a = context.getApplicationContext();
        this.f9347c = kVar;
        this.f9346b = uVar;
    }

    public final boolean a() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f9347c.get()).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e3) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e3);
            }
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.v
    public boolean register() {
        f9344g.execute(new A(this));
        return true;
    }

    @Override // com.bumptech.glide.manager.v
    public void unregister() {
        f9344g.execute(new B(this));
    }
}
