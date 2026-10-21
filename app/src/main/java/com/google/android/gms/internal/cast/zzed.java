package com.google.android.gms.internal.cast;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes2.dex */
public final class zzed extends Handler {
    private final Looper zza;

    public zzed() {
        this.zza = Looper.getMainLooper();
    }

    public zzed(Looper looper) {
        super(looper);
        this.zza = Looper.getMainLooper();
    }
}
