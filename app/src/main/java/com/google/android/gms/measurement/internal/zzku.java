package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes2.dex */
final class zzku implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bundle f11972b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzks f11973e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzks f11974f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ long f11975j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zzkv f11976m;

    public zzku(zzkv zzkvVar, Bundle bundle, zzks zzksVar, zzks zzksVar2, long j7) {
        this.f11972b = bundle;
        this.f11973e = zzksVar;
        this.f11974f = zzksVar2;
        this.f11975j = j7;
        this.f11976m = zzkvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle = this.f11972b;
        if (bundle != null) {
            bundle.remove(FirebaseAnalytics.Param.SCREEN_NAME);
            bundle.remove(FirebaseAnalytics.Param.SCREEN_CLASS);
        }
        zzkv zzkvVar = this.f11976m;
        zzkvVar.c(this.f11973e, this.f11974f, this.f11975j, true, zzkvVar.zzq().f(FirebaseAnalytics.Event.SCREEN_VIEW, bundle, null, false));
    }
}
