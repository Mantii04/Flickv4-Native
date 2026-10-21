package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class zaal implements BaseGmsClient.ConnectionProgressReportCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f10683a;

    /* renamed from: b, reason: collision with root package name */
    public final Api f10684b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10685c;

    public zaal(zaaw zaawVar, Api<?> api, boolean z6) {
        this.f10683a = new WeakReference(zaawVar);
        this.f10684b = api;
        this.f10685c = z6;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        if (((zaaw) this.f10683a.get()) == null) {
            return;
        }
        Looper.myLooper();
        throw null;
    }
}
