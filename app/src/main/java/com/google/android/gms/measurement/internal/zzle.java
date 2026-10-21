package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzle implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f12015b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzn f12016e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Bundle f12017f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzla f12018j;

    public zzle(zzla zzlaVar, AtomicReference atomicReference, zzn zznVar, Bundle bundle) {
        this.f12015b = atomicReference;
        this.f12016e = zznVar;
        this.f12017f = bundle;
        this.f12018j = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzla zzlaVar;
        zzfq zzfqVar;
        synchronized (this.f12015b) {
            try {
                try {
                    zzlaVar = this.f12018j;
                    zzfqVar = zzlaVar.f12001d;
                } catch (RemoteException e3) {
                    this.f12018j.zzj().zzg().zza("Failed to get trigger URIs; remote exception", e3);
                }
                if (zzfqVar == null) {
                    zzlaVar.zzj().zzg().zza("Failed to get trigger URIs; not connected to service");
                    return;
                }
                Preconditions.checkNotNull(this.f12016e);
                this.f12015b.set(zzfqVar.zza(this.f12016e, this.f12017f));
                this.f12018j.f();
                this.f12015b.notify();
            } finally {
                this.f12015b.notify();
            }
        }
    }
}
