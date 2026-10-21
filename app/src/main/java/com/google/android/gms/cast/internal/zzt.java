package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.Cast;

/* loaded from: classes.dex */
final class zzt implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzw f10407b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zza f10408e;

    public zzt(zzw zzwVar, zza zzaVar) {
        this.f10407b = zzwVar;
        this.f10408e = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z6;
        Logger logger = zzw.f10414x;
        String zza = this.f10408e.zza();
        zzw zzwVar = this.f10407b;
        if (CastUtils.zze(zza, zzwVar.f10424h)) {
            z6 = false;
        } else {
            zzwVar.f10424h = zza;
            z6 = true;
        }
        zzw.f10414x.d("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z6), Boolean.valueOf(zzwVar.f10426j));
        Cast.Listener listener = zzwVar.f10419c;
        if (listener != null && (z6 || zzwVar.f10426j)) {
            listener.onApplicationStatusChanged();
        }
        zzwVar.f10426j = false;
    }
}
