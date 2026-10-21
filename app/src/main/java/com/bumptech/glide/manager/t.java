package com.bumptech.glide.manager;

import android.content.Context;
import android.net.ConnectivityManager;

/* loaded from: classes.dex */
public final class t implements G2.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f9376a;

    public t(Context context) {
        this.f9376a = context;
    }

    @Override // G2.k
    public ConnectivityManager get() {
        return (ConnectivityManager) this.f9376a.getSystemService("connectivity");
    }
}
