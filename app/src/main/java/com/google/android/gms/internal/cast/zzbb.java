package com.google.android.gms.internal.cast;

import V3.F;
import android.os.Handler;
import android.os.Looper;
import androidx.concurrent.futures.j;
import androidx.concurrent.futures.k;
import androidx.concurrent.futures.n;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import f1.P;
import f1.U;

/* loaded from: classes2.dex */
public final class zzbb implements P {
    private static final Logger zza = new Logger("MediaRouterOPTListener");
    private final zzbn zzb;
    private final Handler zzc = new zzed(Looper.getMainLooper());

    public zzbb(zzbn zzbnVar) {
        this.zzb = (zzbn) Preconditions.checkNotNull(zzbnVar);
    }

    @Override // f1.P
    public final F onPrepareTransfer(final U u6, final U u7) {
        zza.d("Prepare transfer from Route(%s) to Route(%s)", u6, u7);
        return n.getFuture(new k() { // from class: com.google.android.gms.internal.cast.zzaz
            @Override // androidx.concurrent.futures.k
            public final Object attachCompleter(j jVar) {
                return zzbb.this.zza(u6, u7, jVar);
            }
        });
    }

    public final /* synthetic */ Object zza(final U u6, final U u7, final j jVar) throws Exception {
        return Boolean.valueOf(this.zzc.post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzba
            @Override // java.lang.Runnable
            public final void run() {
                zzbb.this.zzb(u6, u7, jVar);
            }
        }));
    }

    public final /* synthetic */ void zzb(U u6, U u7, j jVar) {
        this.zzb.zzl(u6, u7, jVar);
    }
}
