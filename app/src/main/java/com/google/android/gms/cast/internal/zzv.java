package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.cast.zzed;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
final class zzv extends zzah {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f10412a;

    /* renamed from: b, reason: collision with root package name */
    public final zzed f10413b;

    public zzv(zzw zzwVar) {
        this.f10412a = new AtomicReference(zzwVar);
        this.f10413b = new zzed(zzwVar.getLooper());
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzb(ApplicationMetadata applicationMetadata, String str, String str2, boolean z6) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.f10417a = applicationMetadata;
        zzwVar.f10434r = applicationMetadata.getApplicationId();
        zzwVar.f10435s = str2;
        zzwVar.f10424h = str;
        synchronized (zzw.f10415y) {
            try {
                BaseImplementation.ResultHolder resultHolder = zzwVar.f10438v;
                if (resultHolder != null) {
                    resultHolder.setResult(new zzq(new Status(0), applicationMetadata, str, str2, z6));
                    zzwVar.f10438v = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzc(int i2) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.zzR(i2);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzd(int i2) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        zzwVar.f10434r = null;
        zzwVar.f10435s = null;
        zzwVar.e(i2);
        if (zzwVar.f10419c != null) {
            this.f10413b.post(new zzr(zzwVar, i2));
        }
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zze(int i2) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        Logger logger = zzw.f10414x;
        zzwVar.e(i2);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzf(zza zzaVar) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        zzw.f10414x.d("onApplicationStatusChanged", new Object[0]);
        this.f10413b.post(new zzt(zzwVar, zzaVar));
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzg(int i2) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        Logger logger = zzw.f10414x;
        zzwVar.e(i2);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzh(String str, byte[] bArr) {
        if (((zzw) this.f10412a.get()) == null) {
            return;
        }
        zzw.f10414x.d("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzi(int i2) {
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzj(zzab zzabVar) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        zzw.f10414x.d("onDeviceStatusChanged", new Object[0]);
        this.f10413b.post(new zzs(zzwVar, zzabVar));
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzk(int i2) {
        zzw zzq = zzq();
        if (zzq == null) {
            return;
        }
        zzw.f10414x.d("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i2));
        if (i2 != 0) {
            zzq.triggerConnectionSuspended(2);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzl(String str, long j7) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        Logger logger = zzw.f10414x;
        zzwVar.d(0, j7);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzm(String str, long j7, int i2) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        Logger logger = zzw.f10414x;
        zzwVar.d(i2, j7);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzn(String str, double d7, boolean z6) {
        zzw.f10414x.d("Deprecated callback: \"onStatusreceived\"", new Object[0]);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzo(int i2) {
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzp(String str, String str2) {
        zzw zzwVar = (zzw) this.f10412a.get();
        if (zzwVar == null) {
            return;
        }
        zzw.f10414x.d("Receive (type=text, ns=%s) %s", str, str2);
        this.f10413b.post(new zzu(zzwVar, str, str2));
    }

    public final zzw zzq() {
        zzw zzwVar = (zzw) this.f10412a.getAndSet(null);
        if (zzwVar == null) {
            return null;
        }
        Logger logger = zzw.f10414x;
        zzwVar.f10428l = false;
        zzwVar.f10431o = -1;
        zzwVar.f10432p = -1;
        zzwVar.f10417a = null;
        zzwVar.f10424h = null;
        zzwVar.f10429m = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        zzwVar.h();
        zzwVar.f10425i = false;
        zzwVar.f10430n = null;
        return zzwVar;
    }

    public final boolean zzr() {
        return this.f10412a.get() == null;
    }
}
