package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
final class zzgm extends ContentObserver {
    private final /* synthetic */ zzgk zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgm(zzgk zzgkVar, Handler handler) {
        super(null);
        this.zza = zzgkVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z6) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = this.zza.zza;
        atomicBoolean.set(true);
    }
}
