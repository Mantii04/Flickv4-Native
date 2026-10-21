package com.bumptech.glide.manager;

import android.net.ConnectivityManager;
import android.net.Network;

/* loaded from: classes.dex */
public final class x extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f9380a;

    public x(y yVar) {
        this.f9380a = yVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        G2.t.postOnUiThread(new w(this, true));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        G2.t.postOnUiThread(new w(this, false));
    }
}
