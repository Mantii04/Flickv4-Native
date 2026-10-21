package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzgw {

    /* renamed from: a, reason: collision with root package name */
    public final zza f11649a;

    public interface zza {
        void doStartService(Context context, Intent intent);
    }

    public zzgw(zza zzaVar) {
        Preconditions.checkNotNull(zzaVar);
        this.f11649a = zzaVar;
    }

    public final void zza(Context context, Intent intent) {
        zzgb zzj = zzho.zza(context, null, null).zzj();
        if (intent == null) {
            zzj.zzu().zza("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        zzj.zzp().zza("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                zzj.zzu().zza("Install Referrer Broadcasts are deprecated");
            }
        } else {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzj.zzp().zza("Starting wakeful intent.");
            this.f11649a.doStartService(context, className);
        }
    }
}
