package com.google.android.gms.internal.cast;

import A.i;
import com.google.android.gms.internal.cast.zzrg;

/* loaded from: classes2.dex */
final class zzsa extends zzrg.zzi implements Runnable {
    private final Runnable zzb;

    public zzsa(Runnable runnable) {
        runnable.getClass();
        this.zzb = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.run();
        } catch (Error | RuntimeException e3) {
            zzl(e3);
            throw e3;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzrg
    public final String zze() {
        return i.l("task=[", this.zzb.toString(), "]");
    }
}
