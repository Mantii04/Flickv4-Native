package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zznc implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zznd f12173b;

    public zznc(zznd zzndVar, zznn zznnVar) {
        this.f12173b = zzndVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznd zzndVar = this.f12173b;
        zzndVar.zzl().zzt();
        zzndVar.f12192k = new zzgv(zzndVar);
        zzan zzanVar = new zzan(zzndVar);
        zzanVar.zzal();
        zzndVar.f12184c = zzanVar;
        zzndVar.zze().f11177d = (zzag) Preconditions.checkNotNull(zzndVar.f12182a);
        zzmd zzmdVar = new zzmd(zzndVar);
        zzmdVar.zzal();
        zzndVar.f12190i = zzmdVar;
        zzs zzsVar = new zzs(zzndVar);
        zzsVar.zzal();
        zzndVar.f12187f = zzsVar;
        zzkq zzkqVar = new zzkq(zzndVar);
        zzkqVar.zzal();
        zzndVar.f12189h = zzkqVar;
        zzmx zzmxVar = new zzmx(zzndVar);
        zzmxVar.zzal();
        zzndVar.f12186e = zzmxVar;
        zzndVar.f12185d = new zzgl(zzndVar);
        if (zzndVar.f12199r != zzndVar.f12200s) {
            zzndVar.zzj().zzg().zza("Not all upload components initialized", Integer.valueOf(zzndVar.f12199r), Integer.valueOf(zzndVar.f12200s));
        }
        zzndVar.f12194m = true;
        zzndVar.zzv();
    }
}
