package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes2.dex */
public final class zzgu implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final String f11646a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzgv f11647b;

    public zzgu(zzgv zzgvVar, String str) {
        this.f11647b = zzgvVar;
        this.f11646a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzho zzhoVar = this.f11647b.f11648a;
        if (iBinder == null) {
            zzhoVar.zzj().zzu().zza("Install Referrer connection returned with null binder");
            return;
        }
        try {
            com.google.android.gms.internal.measurement.zzby zza = com.google.android.gms.internal.measurement.zzcb.zza(iBinder);
            if (zza == null) {
                zzhoVar.zzj().zzu().zza("Install Referrer Service implementation was not found");
            } else {
                zzhoVar.zzj().zzp().zza("Install Referrer Service connected");
                zzhoVar.zzl().zzb(new zzgx(this, zza, this));
            }
        } catch (RuntimeException e3) {
            zzhoVar.zzj().zzu().zza("Exception occurred while calling Install Referrer API", e3);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f11647b.f11648a.zzj().zzp().zza("Install Referrer Service disconnected");
    }
}
