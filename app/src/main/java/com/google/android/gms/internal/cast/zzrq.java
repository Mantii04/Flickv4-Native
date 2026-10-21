package com.google.android.gms.internal.cast;

import V3.F;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public abstract class zzrq extends zzro implements F {
    @Override // V3.F
    public final void addListener(Runnable runnable, Executor executor) {
        zzc().addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.cast.zzro
    public /* bridge */ /* synthetic */ Future zzb() {
        throw null;
    }

    public abstract F zzc();
}
