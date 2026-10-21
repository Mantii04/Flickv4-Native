package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzka implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdi f11922b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zziy f11923e;

    public zzka(zziy zziyVar, com.google.android.gms.internal.measurement.zzdi zzdiVar) {
        this.f11922b = zzdiVar;
        this.f11923e = zziyVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r8 = this;
            com.google.android.gms.measurement.internal.zziy r0 = r8.f11923e
            com.google.android.gms.measurement.internal.zzmi r1 = r0.zzp()
            boolean r2 = com.google.android.gms.internal.measurement.zzqj.zza()
            r3 = 0
            if (r2 == 0) goto L68
            com.google.android.gms.measurement.internal.zzae r2 = r1.zze()
            com.google.android.gms.measurement.internal.zzfo r4 = com.google.android.gms.measurement.internal.zzbh.f11363x0
            boolean r2 = r2.zza(r4)
            if (r2 == 0) goto L68
            com.google.android.gms.measurement.internal.zzgm r2 = r1.zzk()
            com.google.android.gms.measurement.internal.zziq r2 = r2.d()
            boolean r2 = r2.zzj()
            if (r2 != 0) goto L36
            com.google.android.gms.measurement.internal.zzgb r1 = r1.zzj()
            com.google.android.gms.measurement.internal.zzgd r1 = r1.zzv()
            java.lang.String r2 = "Analytics storage consent denied; will not get session id"
            r1.zza(r2)
        L34:
            r1 = r3
            goto L76
        L36:
            com.google.android.gms.measurement.internal.zzgm r2 = r1.zzk()
            com.google.android.gms.common.util.Clock r4 = r1.zzb()
            long r4 = r4.currentTimeMillis()
            boolean r2 = r2.a(r4)
            if (r2 != 0) goto L34
            com.google.android.gms.measurement.internal.zzgm r2 = r1.zzk()
            com.google.android.gms.measurement.internal.zzgr r2 = r2.f11613r
            long r4 = r2.zza()
            r6 = 0
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 != 0) goto L59
            goto L34
        L59:
            com.google.android.gms.measurement.internal.zzgm r1 = r1.zzk()
            com.google.android.gms.measurement.internal.zzgr r1 = r1.f11613r
            long r1 = r1.zza()
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            goto L76
        L68:
            com.google.android.gms.measurement.internal.zzgb r1 = r1.zzj()
            com.google.android.gms.measurement.internal.zzgd r1 = r1.zzv()
            java.lang.String r2 = "getSessionId has been disabled."
            r1.zza(r2)
            goto L34
        L76:
            com.google.android.gms.internal.measurement.zzdi r2 = r8.f11922b
            if (r1 == 0) goto L88
            com.google.android.gms.measurement.internal.zzho r0 = r0.f11804a
            com.google.android.gms.measurement.internal.zznt r0 = r0.zzt()
            long r3 = r1.longValue()
            r0.zza(r2, r3)
            return
        L88:
            r2.zza(r3)     // Catch: android.os.RemoteException -> L8c
            return
        L8c:
            r1 = move-exception
            com.google.android.gms.measurement.internal.zzho r0 = r0.f11804a
            com.google.android.gms.measurement.internal.zzgb r0 = r0.zzj()
            com.google.android.gms.measurement.internal.zzgd r0 = r0.zzg()
            java.lang.String r2 = "getSessionId failed with exception"
            r0.zza(r2, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzka.run():void");
    }
}
