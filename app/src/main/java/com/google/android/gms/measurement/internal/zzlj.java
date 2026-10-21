package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzlj implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f12028b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzn f12029e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzla f12030f;

    public zzlj(zzla zzlaVar, AtomicReference atomicReference, zzn zznVar) {
        this.f12028b = atomicReference;
        this.f12029e = zznVar;
        this.f12030f = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f12028b) {
            try {
                try {
                } catch (RemoteException e3) {
                    this.f12030f.zzj().zzg().zza("Failed to get app instance id", e3);
                }
                if (!this.f12030f.zzk().d().zzj()) {
                    this.f12030f.zzj().zzv().zza("Analytics storage consent denied; will not get app instance id");
                    this.f12030f.zzm().i(null);
                    this.f12030f.zzk().f11603h.zza(null);
                    this.f12028b.set(null);
                    return;
                }
                zzla zzlaVar = this.f12030f;
                zzfq zzfqVar = zzlaVar.f12001d;
                if (zzfqVar == null) {
                    zzlaVar.zzj().zzg().zza("Failed to get app instance id");
                    return;
                }
                Preconditions.checkNotNull(this.f12029e);
                this.f12028b.set(zzfqVar.zzb(this.f12029e));
                String str = (String) this.f12028b.get();
                if (str != null) {
                    this.f12030f.zzm().i(str);
                    this.f12030f.zzk().f11603h.zza(str);
                }
                this.f12030f.f();
                this.f12028b.notify();
            } finally {
                this.f12028b.notify();
            }
        }
    }
}
