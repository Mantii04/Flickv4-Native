package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
class zzgl extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final zznd f11594a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11595b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11596c;

    public zzgl(zznd zzndVar) {
        Preconditions.checkNotNull(zzndVar);
        this.f11594a = zzndVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        zznd zzndVar = this.f11594a;
        zzndVar.M();
        String action = intent.getAction();
        zzndVar.zzj().zzp().zza("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            zzndVar.zzj().zzu().zza("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zzu = zzndVar.zzh().zzu();
        if (this.f11596c != zzu) {
            this.f11596c = zzu;
            zzndVar.zzl().zzb(new zzgk(this, zzu));
        }
    }

    public final void zza() {
        zznd zzndVar = this.f11594a;
        zzndVar.M();
        zzndVar.zzl().zzt();
        if (this.f11595b) {
            return;
        }
        zzndVar.zza().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f11596c = zzndVar.zzh().zzu();
        zzndVar.zzj().zzp().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f11596c));
        this.f11595b = true;
    }

    public final void zzb() {
        zznd zzndVar = this.f11594a;
        zzndVar.M();
        zzndVar.zzl().zzt();
        zzndVar.zzl().zzt();
        if (this.f11595b) {
            zzndVar.zzj().zzp().zza("Unregistering connectivity change receiver");
            this.f11595b = false;
            this.f11596c = false;
            try {
                zzndVar.zza().unregisterReceiver(this);
            } catch (IllegalArgumentException e3) {
                zzndVar.zzj().zzg().zza("Failed to unregister the network broadcast receiver", e3);
            }
        }
    }
}
