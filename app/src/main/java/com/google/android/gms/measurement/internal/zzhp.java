package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
final class zzhp implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zziw f11736b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzho f11737e;

    public zzhp(zzho zzhoVar, zziw zziwVar) {
        this.f11736b = zziwVar;
        this.f11737e = zzhoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzho zzhoVar = this.f11737e;
        zzhoVar.zzl().zzt();
        zzaz zzazVar = new zzaz(zzhoVar);
        zzazVar.zzad();
        zzhoVar.f11731v = zzazVar;
        zziw zziwVar = this.f11736b;
        long j7 = zziwVar.f11838f;
        zzfv zzfvVar = new zzfv(zzhoVar);
        zzfvVar.f11546o = 0L;
        zzfvVar.f11547p = null;
        zzfvVar.f11539h = j7;
        zzfvVar.zzv();
        zzhoVar.f11732w = zzfvVar;
        zzfu zzfuVar = new zzfu(zzhoVar);
        zzfuVar.zzv();
        zzhoVar.f11729t = zzfuVar;
        zzla zzlaVar = new zzla(zzhoVar);
        zzlaVar.zzv();
        zzhoVar.f11730u = zzlaVar;
        zzhoVar.f11721l.zzae();
        zzhoVar.f11717h.zzae();
        zzhoVar.f11732w.zzw();
        zzhoVar.zzj().zzn().zza("App measurement initialized, version", 87000L);
        zzhoVar.zzj().zzn().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String a7 = zzfvVar.a();
        if (TextUtils.isEmpty(zzhoVar.f11711b)) {
            if (zzhoVar.zzt().J(a7, zzhoVar.f11716g.zzp())) {
                zzhoVar.zzj().zzn().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzhoVar.zzj().zzn().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app " + a7);
            }
        }
        zzhoVar.zzj().zzc().zza("Debug-level message logging enabled");
        int i2 = zzhoVar.f11706E;
        AtomicInteger atomicInteger = zzhoVar.f11708G;
        if (i2 != atomicInteger.get()) {
            zzhoVar.zzj().zzg().zza("Not all components initialized", Integer.valueOf(zzhoVar.f11706E), Integer.valueOf(atomicInteger.get()));
        }
        zzhoVar.f11733x = true;
        zzhoVar.zza(zziwVar.f11839g);
    }
}
