package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.measurement.zzpy;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class zzo extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final zzho f12246a;

    public zzo(zzho zzhoVar) {
        this.f12246a = zzhoVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        final zzho zzhoVar = this.f12246a;
        if (intent == null) {
            zzhoVar.zzj().zzu().zza("App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            zzhoVar.zzj().zzu().zza("App receiver called with null action");
            return;
        }
        if (!action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
            zzhoVar.zzj().zzu().zza("App receiver called with unknown action");
        } else if (zzpy.zza() && zzhoVar.zzf().zzf(null, zzbh.f11273F0)) {
            zzhoVar.zzj().zzp().zza("App receiver notified triggers are available");
            zzhoVar.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzq
                @Override // java.lang.Runnable
                public final void run() {
                    zzho zzhoVar2 = zzho.this;
                    zznt zzt = zzhoVar2.zzt();
                    zzt.zzt();
                    if (zzt.zzh() != 1) {
                        zzhoVar2.zzj().zzu().zza("registerTrigger called but app not eligible");
                        return;
                    }
                    final zziy zzp = zzhoVar2.zzp();
                    Objects.requireNonNull(zzp);
                    new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzr
                        @Override // java.lang.Runnable
                        public final void run() {
                            zziy.this.zzal();
                        }
                    }).start();
                }
            });
        }
    }
}
