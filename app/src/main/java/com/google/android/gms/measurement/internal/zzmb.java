package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* loaded from: classes2.dex */
final class zzmb implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzlx f12085b;

    public zzmb(zzlx zzlxVar) {
        this.f12085b = zzlxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzla zzlaVar = this.f12085b.f12077c;
        ComponentName componentName = new ComponentName(zzlaVar.zza(), "com.google.android.gms.measurement.AppMeasurementService");
        zzlaVar.zzt();
        if (zzlaVar.f12001d != null) {
            zzlaVar.f12001d = null;
            zzlaVar.zzj().zzp().zza("Disconnected from device MeasurementService", componentName);
            zzlaVar.zzt();
            zzlaVar.zzad();
        }
    }
}
