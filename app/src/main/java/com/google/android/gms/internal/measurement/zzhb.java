package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* loaded from: classes2.dex */
final class zzhb extends ContentObserver {
    public zzhb(zzgz zzgzVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z6) {
        zzhg.zzc();
    }
}
