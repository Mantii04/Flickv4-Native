package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;

/* renamed from: com.bumptech.glide.manager.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0743e {
    public InterfaceC0741c build(Context context, InterfaceC0740b interfaceC0740b) {
        boolean z6 = A.h.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z6 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        return z6 ? new C0742d(context, interfaceC0740b) : new n();
    }
}
