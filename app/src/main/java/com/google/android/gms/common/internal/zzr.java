package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* loaded from: classes.dex */
final class zzr implements Handler.Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzs f10971b;

    public /* synthetic */ zzr(zzs zzsVar) {
        this.f10971b = zzsVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            synchronized (this.f10971b.f10972d) {
                try {
                    zzo zzoVar = (zzo) message.obj;
                    zzp zzpVar = (zzp) this.f10971b.f10972d.get(zzoVar);
                    if (zzpVar != null && zzpVar.zzi()) {
                        if (zzpVar.zzj()) {
                            zzpVar.zzg("GmsClientSupervisor");
                        }
                        this.f10971b.f10972d.remove(zzoVar);
                    }
                } finally {
                }
            }
            return true;
        }
        if (i2 != 1) {
            return false;
        }
        synchronized (this.f10971b.f10972d) {
            try {
                zzo zzoVar2 = (zzo) message.obj;
                zzp zzpVar2 = (zzp) this.f10971b.f10972d.get(zzoVar2);
                if (zzpVar2 != null && zzpVar2.zza() == 3) {
                    Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback ".concat(String.valueOf(zzoVar2)), new Exception());
                    ComponentName zzb = zzpVar2.zzb();
                    if (zzb == null) {
                        zzb = zzoVar2.zza();
                    }
                    if (zzb == null) {
                        String zzc = zzoVar2.zzc();
                        Preconditions.checkNotNull(zzc);
                        zzb = new ComponentName(zzc, "unknown");
                    }
                    zzpVar2.onServiceDisconnected(zzb);
                }
            } finally {
            }
        }
        return true;
    }
}
