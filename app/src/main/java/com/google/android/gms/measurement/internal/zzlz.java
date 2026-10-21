package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* loaded from: classes2.dex */
final class zzlz implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ComponentName f12080b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzlx f12081e;

    public zzlz(zzlx zzlxVar, ComponentName componentName) {
        this.f12080b = componentName;
        this.f12081e = zzlxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzla zzlaVar = this.f12081e.f12077c;
        zzlaVar.zzt();
        if (zzlaVar.f12001d != null) {
            zzlaVar.f12001d = null;
            zzlaVar.zzj().zzp().zza("Disconnected from device MeasurementService", this.f12080b);
            zzlaVar.zzt();
            zzlaVar.zzad();
        }
    }
}
