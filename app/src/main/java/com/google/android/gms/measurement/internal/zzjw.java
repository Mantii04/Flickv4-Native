package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes2.dex */
final class zzjw implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bundle f11908b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11909e;

    public zzjw(zziy zziyVar, Bundle bundle) {
        this.f11908b = bundle;
        this.f11909e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zziy zziyVar = this.f11909e;
        zziyVar.zzt();
        zziyVar.zzu();
        Bundle bundle = this.f11908b;
        Preconditions.checkNotNull(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString(FirebaseAnalytics.Param.ORIGIN);
        Preconditions.checkNotEmpty(string);
        Preconditions.checkNotEmpty(string2);
        Preconditions.checkNotNull(bundle.get(FirebaseAnalytics.Param.VALUE));
        if (!zziyVar.f11804a.zzac()) {
            zziyVar.zzj().zzp().zza("Conditional property not set since app measurement is disabled");
            return;
        }
        zzno zznoVar = new zzno(bundle.getLong("triggered_timestamp"), bundle.get(FirebaseAnalytics.Param.VALUE), string, string2);
        try {
            zznt zzq = zziyVar.zzq();
            bundle.getString("app_id");
            zzbf g7 = zzq.g(bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true);
            zznt zzq2 = zziyVar.zzq();
            bundle.getString("app_id");
            zzbf g8 = zzq2.g(bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true);
            zznt zzq3 = zziyVar.zzq();
            bundle.getString("app_id");
            zziyVar.zzo().zza(new zzac(bundle.getString("app_id"), string2, zznoVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), g8, bundle.getLong("trigger_timeout"), g7, bundle.getLong("time_to_live"), zzq3.g(bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
