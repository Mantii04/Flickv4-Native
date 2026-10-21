package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* loaded from: classes2.dex */
final class zzgt extends ContentObserver {
    private final /* synthetic */ zzgr zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgt(zzgr zzgrVar, Handler handler) {
        super(null);
        this.zza = zzgrVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z6) {
        this.zza.zzd();
    }
}
