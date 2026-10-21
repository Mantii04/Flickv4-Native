package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzjz implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bundle f11916b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11917e;

    public zzjz(zziy zziyVar, Bundle bundle) {
        this.f11916b = bundle;
        this.f11917e = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zziy zziyVar = this.f11917e;
        zziyVar.zzt();
        zziyVar.zzu();
        Bundle bundle = this.f11916b;
        Preconditions.checkNotNull(bundle);
        String checkNotEmpty = Preconditions.checkNotEmpty(bundle.getString("name"));
        if (!zziyVar.f11804a.zzac()) {
            zziyVar.zzj().zzp().zza("Conditional property not cleared since app measurement is disabled");
            return;
        }
        zzno zznoVar = new zzno(0L, null, checkNotEmpty, "");
        try {
            zznt zzq = zziyVar.zzq();
            bundle.getString("app_id");
            zziyVar.zzo().zza(new zzac(bundle.getString("app_id"), "", zznoVar, bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), zzq.g(bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), "", bundle.getLong("creation_timestamp"), true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
