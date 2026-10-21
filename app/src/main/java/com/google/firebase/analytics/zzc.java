package com.google.firebase.analytics;

import com.google.android.gms.internal.measurement.zzds;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzc implements Callable<String> {
    private final /* synthetic */ FirebaseAnalytics zza;

    public zzc(FirebaseAnalytics firebaseAnalytics) {
        this.zza = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        zzds zzdsVar;
        zzdsVar = this.zza.zzb;
        return zzdsVar.zze();
    }
}
