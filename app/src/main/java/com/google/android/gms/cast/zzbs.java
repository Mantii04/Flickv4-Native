package com.google.android.gms.cast;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzbs extends com.google.android.gms.cast.internal.zzah {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbt f10507a;

    public zzbs(zzbt zzbtVar) {
        this.f10507a = zzbtVar;
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzb(ApplicationMetadata applicationMetadata, String str, String str2, boolean z6) {
        zzbt zzbtVar = this.f10507a;
        zzbtVar.f10524s = applicationMetadata;
        zzbtVar.f10525t = str;
        com.google.android.gms.cast.internal.zzq zzqVar = new com.google.android.gms.cast.internal.zzq(new Status(0), applicationMetadata, str, str2, z6);
        zzbt zzbtVar2 = this.f10507a;
        synchronized (zzbtVar2.f10522q) {
            try {
                TaskCompletionSource taskCompletionSource = zzbtVar2.f10519n;
                if (taskCompletionSource != null) {
                    taskCompletionSource.setResult(zzqVar);
                }
                zzbtVar2.f10519n = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzc(int i2) {
        Logger logger = zzbt.f10508F;
        this.f10507a.d(i2);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzd(final int i2) {
        zzbt zzbtVar = this.f10507a;
        zzbt.b(zzbtVar, i2);
        if (zzbtVar.f10512C != null) {
            zzbt.f(zzbtVar).post(new Runnable() { // from class: com.google.android.gms.cast.zzbq
                @Override // java.lang.Runnable
                public final void run() {
                    zzbs.this.f10507a.f10512C.onApplicationDisconnected(i2);
                }
            });
        }
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zze(int i2) {
        zzbt.b(this.f10507a, i2);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzf(final com.google.android.gms.cast.internal.zza zzaVar) {
        zzbt.f(this.f10507a).post(new Runnable() { // from class: com.google.android.gms.cast.zzbm
            @Override // java.lang.Runnable
            public final void run() {
                boolean z6;
                zzbt zzbtVar = zzbs.this.f10507a;
                Logger logger = zzbt.f10508F;
                String zza = zzaVar.zza();
                if (CastUtils.zze(zza, zzbtVar.f10525t)) {
                    z6 = false;
                } else {
                    zzbtVar.f10525t = zza;
                    z6 = true;
                }
                zzbt.f10508F.d("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z6), Boolean.valueOf(zzbtVar.f10518m));
                Cast.Listener listener = zzbtVar.f10512C;
                if (listener != null && (z6 || zzbtVar.f10518m)) {
                    listener.onApplicationStatusChanged();
                }
                zzbtVar.f10518m = false;
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzg(int i2) {
        zzbt.b(this.f10507a, i2);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzh(String str, byte[] bArr) {
        zzbt.f10508F.d("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzi(final int i2) {
        zzbt.f(this.f10507a).post(new Runnable() { // from class: com.google.android.gms.cast.zzbo
            @Override // java.lang.Runnable
            public final void run() {
                zzbs zzbsVar = zzbs.this;
                int i7 = i2;
                if (i7 != 0) {
                    zzbt zzbtVar = zzbsVar.f10507a;
                    zzbtVar.f10514E = 1;
                    synchronized (zzbtVar.f10513D) {
                        try {
                            Iterator it = zzbsVar.f10507a.f10513D.iterator();
                            while (it.hasNext()) {
                                ((zzq) it.next()).zzb(i7);
                            }
                        } finally {
                        }
                    }
                    zzbsVar.f10507a.c();
                    return;
                }
                zzbt zzbtVar2 = zzbsVar.f10507a;
                zzbtVar2.f10514E = 2;
                zzbtVar2.f10517l = true;
                zzbtVar2.f10518m = true;
                synchronized (zzbtVar2.f10513D) {
                    try {
                        Iterator it2 = zzbsVar.f10507a.f10513D.iterator();
                        while (it2.hasNext()) {
                            ((zzq) it2.next()).zza();
                        }
                    } finally {
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzj(final com.google.android.gms.cast.internal.zzab zzabVar) {
        zzbt.f(this.f10507a).post(new Runnable() { // from class: com.google.android.gms.cast.zzbl
            @Override // java.lang.Runnable
            public final void run() {
                boolean z6;
                boolean z7;
                boolean z8;
                zzbt zzbtVar = zzbs.this.f10507a;
                Logger logger = zzbt.f10508F;
                com.google.android.gms.cast.internal.zzab zzabVar2 = zzabVar;
                ApplicationMetadata zze = zzabVar2.zze();
                boolean zze2 = CastUtils.zze(zze, zzbtVar.f10524s);
                Cast.Listener listener = zzbtVar.f10512C;
                if (!zze2) {
                    zzbtVar.f10524s = zze;
                    listener.onApplicationMetadataChanged(zze);
                }
                double zzb = zzabVar2.zzb();
                if (Double.isNaN(zzb) || Math.abs(zzb - zzbtVar.f10526u) <= 1.0E-7d) {
                    z6 = false;
                } else {
                    zzbtVar.f10526u = zzb;
                    z6 = true;
                }
                boolean zzg = zzabVar2.zzg();
                if (zzg != zzbtVar.f10527v) {
                    zzbtVar.f10527v = zzg;
                    z6 = true;
                }
                Logger logger2 = zzbt.f10508F;
                logger2.d("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z6), Boolean.valueOf(zzbtVar.f10517l));
                if (listener != null && (z6 || zzbtVar.f10517l)) {
                    listener.onVolumeChanged();
                }
                Double.isNaN(zzabVar2.zza());
                int zzc = zzabVar2.zzc();
                if (zzc != zzbtVar.f10528w) {
                    zzbtVar.f10528w = zzc;
                    z7 = true;
                } else {
                    z7 = false;
                }
                logger2.d("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z7), Boolean.valueOf(zzbtVar.f10517l));
                if (listener != null && (z7 || zzbtVar.f10517l)) {
                    listener.onActiveInputStateChanged(zzbtVar.f10528w);
                }
                int zzd = zzabVar2.zzd();
                if (zzd != zzbtVar.f10529x) {
                    zzbtVar.f10529x = zzd;
                    z8 = true;
                } else {
                    z8 = false;
                }
                logger2.d("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z8), Boolean.valueOf(zzbtVar.f10517l));
                if (listener != null && (z8 || zzbtVar.f10517l)) {
                    listener.onStandbyStateChanged(zzbtVar.f10529x);
                }
                if (!CastUtils.zze(zzbtVar.f10530y, zzabVar2.zzf())) {
                    zzbtVar.f10530y = zzabVar2.zzf();
                }
                zzbtVar.f10517l = false;
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzk(final int i2) {
        zzbt.f(this.f10507a).post(new Runnable() { // from class: com.google.android.gms.cast.zzbn
            @Override // java.lang.Runnable
            public final void run() {
                zzbs zzbsVar = zzbs.this;
                zzbt zzbtVar = zzbsVar.f10507a;
                zzbtVar.f10528w = -1;
                zzbtVar.f10529x = -1;
                zzbtVar.f10524s = null;
                zzbtVar.f10525t = null;
                zzbtVar.f10526u = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                zzbtVar.e();
                zzbtVar.f10527v = false;
                zzbtVar.f10530y = null;
                zzbt zzbtVar2 = zzbsVar.f10507a;
                zzbtVar2.f10514E = 1;
                int i7 = i2;
                synchronized (zzbtVar2.f10513D) {
                    try {
                        Iterator it = zzbsVar.f10507a.f10513D.iterator();
                        while (it.hasNext()) {
                            ((zzq) it.next()).zzd(i7);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                zzbsVar.f10507a.c();
                zzbt zzbtVar3 = zzbsVar.f10507a;
                zzbtVar3.doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(zzbtVar3.registerListener(zzbtVar3.f10515j, "castDeviceControllerListenerKey").getListenerKey(), "Key must not be null"), 8415);
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzl(String str, long j7) {
        zzbt.a(this.f10507a, j7, 0);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzm(String str, long j7, int i2) {
        zzbt.a(this.f10507a, j7, i2);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzn(String str, double d7, boolean z6) {
        zzbt.f10508F.d("Deprecated callback: \"onStatusReceived\"", new Object[0]);
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzo(final int i2) {
        zzbt.f(this.f10507a).post(new Runnable() { // from class: com.google.android.gms.cast.zzbr
            @Override // java.lang.Runnable
            public final void run() {
                zzbs zzbsVar = zzbs.this;
                zzbt zzbtVar = zzbsVar.f10507a;
                zzbtVar.f10514E = 3;
                int i7 = i2;
                synchronized (zzbtVar.f10513D) {
                    try {
                        Iterator it = zzbsVar.f10507a.f10513D.iterator();
                        while (it.hasNext()) {
                            ((zzq) it.next()).zzc(i7);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.cast.internal.zzai
    public final void zzp(final String str, final String str2) {
        zzbt.f10508F.d("Receive (type=text, ns=%s) %s", str, str2);
        zzbt.f(this.f10507a).post(new Runnable() { // from class: com.google.android.gms.cast.zzbp
            @Override // java.lang.Runnable
            public final void run() {
                Cast.MessageReceivedCallback messageReceivedCallback;
                zzbs zzbsVar = zzbs.this;
                HashMap hashMap = zzbsVar.f10507a.f10511B;
                String str3 = str;
                synchronized (hashMap) {
                    messageReceivedCallback = (Cast.MessageReceivedCallback) zzbsVar.f10507a.f10511B.get(str3);
                }
                if (messageReceivedCallback != null) {
                    messageReceivedCallback.onMessageReceived(zzbsVar.f10507a.f10531z, str3, str2);
                } else {
                    zzbt.f10508F.d("Discarded message for unknown namespace '%s'", str3);
                }
            }
        });
    }
}
