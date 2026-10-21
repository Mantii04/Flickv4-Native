package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.framework.SessionTransferCallback;
import com.google.android.gms.cast.internal.Logger;

/* loaded from: classes2.dex */
public final class zzj extends SessionTransferCallback {
    final /* synthetic */ zzk zza;

    public zzj(zzk zzkVar) {
        this.zza = zzkVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferFailed(int i2, int i7) {
        Logger logger;
        zzm zzmVar;
        zzl zzlVar;
        zzg zzgVar;
        logger = zzk.zza;
        logger.d("onTransferFailed with type = %d and reason = %d", Integer.valueOf(i2), Integer.valueOf(i7));
        this.zza.zzs();
        zzk zzkVar = this.zza;
        zzmVar = zzkVar.zzd;
        zzlVar = zzkVar.zzh;
        zzno zzf = zzmVar.zzf(zzlVar, i2, i7);
        zzgVar = this.zza.zzb;
        zzgVar.zze(zzf, 232);
        this.zza.zzj = false;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferred(int i2, SessionState sessionState) {
        Logger logger;
        zzm zzmVar;
        zzl zzlVar;
        zzg zzgVar;
        logger = zzk.zza;
        logger.d("onTransferred with type = %d", Integer.valueOf(i2));
        this.zza.zzs();
        zzk zzkVar = this.zza;
        zzmVar = zzkVar.zzd;
        zzlVar = zzkVar.zzh;
        zzno zzg = zzmVar.zzg(zzlVar, i2);
        zzgVar = this.zza.zzb;
        zzgVar.zze(zzg, 231);
        this.zza.zzj = false;
        this.zza.zzh = null;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferring(int i2) {
        Logger logger;
        zzm zzmVar;
        zzl zzlVar;
        zzg zzgVar;
        logger = zzk.zza;
        logger.d("onTransferring with type = %d", Integer.valueOf(i2));
        this.zza.zzj = true;
        this.zza.zzs();
        zzk zzkVar = this.zza;
        zzmVar = zzkVar.zzd;
        zzlVar = zzkVar.zzh;
        zzno zzg = zzmVar.zzg(zzlVar, i2);
        zzgVar = this.zza.zzb;
        zzgVar.zze(zzg, 230);
    }
}
