package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.internal.Logger;

/* loaded from: classes2.dex */
final class zzbm implements SessionManagerListener {
    final /* synthetic */ zzbn zza;

    public /* synthetic */ zzbm(zzbn zzbnVar, zzbl zzblVar) {
        this.zza = zzbnVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnded(Session session, int i2) {
        Logger logger;
        int i7;
        logger = zzbn.zza;
        logger.d("onSessionEnded with error = %d", Integer.valueOf(i2));
        zzbn.zzg(this.zza);
        zzbn zzbnVar = this.zza;
        i7 = zzbnVar.zzf;
        if (i7 == 2) {
            return;
        }
        zzbnVar.zzq();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnding(Session session) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i2) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumed(Session session, boolean z6) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResuming(Session session, String str) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i2) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarted(Session session, String str) {
        Logger logger;
        int i2;
        CastOptions castOptions;
        int i7;
        logger = zzbn.zza;
        i2 = this.zza.zzf;
        logger.d("onSessionStarted with transferType = %d", Integer.valueOf(i2));
        castOptions = this.zza.zzb;
        if (castOptions.zzg()) {
            zzbn zzbnVar = this.zza;
            i7 = zzbnVar.zzf;
            if (i7 == 2) {
                zzbn.zzi(zzbnVar);
            }
        }
        this.zza.zzq();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarting(Session session) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionSuspended(Session session, int i2) {
    }
}
