package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Looper;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzs extends GmsClientSupervisor {

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f10972d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final Context f10973e;

    /* renamed from: f, reason: collision with root package name */
    public volatile com.google.android.gms.internal.common.zzi f10974f;

    /* renamed from: g, reason: collision with root package name */
    public final ConnectionTracker f10975g;

    /* renamed from: h, reason: collision with root package name */
    public final long f10976h;

    /* renamed from: i, reason: collision with root package name */
    public final long f10977i;

    public zzs(Context context, Looper looper) {
        zzr zzrVar = new zzr(this);
        this.f10973e = context.getApplicationContext();
        this.f10974f = new com.google.android.gms.internal.common.zzi(looper, zzrVar);
        this.f10975g = ConnectionTracker.getInstance();
        this.f10976h = 5000L;
        this.f10977i = 300000L;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final void zza(zzo zzoVar, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f10972d) {
            try {
                zzp zzpVar = (zzp) this.f10972d.get(zzoVar);
                if (zzpVar == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: " + zzoVar.toString());
                }
                if (!zzpVar.zzh(serviceConnection)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + zzoVar.toString());
                }
                zzpVar.zzf(serviceConnection, str);
                if (zzpVar.zzi()) {
                    this.f10974f.sendMessageDelayed(this.f10974f.obtainMessage(0, zzoVar), this.f10976h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final boolean zzc(zzo zzoVar, ServiceConnection serviceConnection, String str, Executor executor) {
        boolean zzj;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f10972d) {
            try {
                zzp zzpVar = (zzp) this.f10972d.get(zzoVar);
                if (executor == null) {
                    executor = null;
                }
                if (zzpVar == null) {
                    zzpVar = new zzp(this, zzoVar);
                    zzpVar.zzd(serviceConnection, serviceConnection, str);
                    zzpVar.zze(str, executor);
                    this.f10972d.put(zzoVar, zzpVar);
                } else {
                    this.f10974f.removeMessages(0, zzoVar);
                    if (zzpVar.zzh(serviceConnection)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + zzoVar.toString());
                    }
                    zzpVar.zzd(serviceConnection, serviceConnection, str);
                    int zza = zzpVar.zza();
                    if (zza == 1) {
                        serviceConnection.onServiceConnected(zzpVar.zzb(), zzpVar.zzc());
                    } else if (zza == 2) {
                        zzpVar.zze(str, executor);
                    }
                }
                zzj = zzpVar.zzj();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzj;
    }
}
