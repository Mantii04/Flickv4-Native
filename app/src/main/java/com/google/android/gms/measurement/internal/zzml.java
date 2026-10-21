package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzml implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f12112b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzmi f12113e;

    public zzml(zzmi zzmiVar, long j7) {
        this.f12112b = j7;
        this.f12113e = zzmiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzmi zzmiVar = this.f12113e;
        zzmiVar.zzt();
        zzmiVar.a();
        zzgd zzp = zzmiVar.zzj().zzp();
        long j7 = this.f12112b;
        zzp.zza("Activity resumed, time", Long.valueOf(j7));
        boolean zza = zzmiVar.zze().zza(zzbh.f11283K0);
        zzmo zzmoVar = zzmiVar.f12108f;
        if (zza) {
            if (zzmiVar.zze().zzv() || zzmiVar.f12106d) {
                zzmoVar.f12122d.zzt();
                zzmoVar.f12121c.a();
                zzmoVar.f12119a = j7;
                zzmoVar.f12120b = j7;
            }
        } else if (zzmiVar.zze().zzv() || zzmiVar.zzk().f11615t.zza()) {
            zzmoVar.f12122d.zzt();
            zzmoVar.f12121c.a();
            zzmoVar.f12119a = j7;
            zzmoVar.f12120b = j7;
        }
        zzmn zzmnVar = zzmiVar.f12109g;
        zzmi zzmiVar2 = zzmnVar.f12118b;
        zzmiVar2.zzt();
        zzmm zzmmVar = zzmnVar.f12117a;
        if (zzmmVar != null) {
            zzmiVar2.f12105c.removeCallbacks(zzmmVar);
        }
        zzmiVar2.zzk().f11615t.zza(false);
        zzmiVar2.zzt();
        zzmiVar2.f12106d = false;
        zzmq zzmqVar = zzmiVar.f12107e;
        zzmqVar.f12124a.zzt();
        zzmi zzmiVar3 = zzmqVar.f12124a;
        if (zzmiVar3.f11804a.zzac()) {
            zzmqVar.b(zzmiVar3.zzb().currentTimeMillis());
        }
    }
}
