package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zznh implements Callable<String> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f12218b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zznd f12219e;

    public zznh(zznd zzndVar, zzn zznVar) {
        this.f12218b = zznVar;
        this.f12219e = zzndVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        zzn zznVar = this.f12218b;
        String str = (String) Preconditions.checkNotNull(zznVar.f12154b);
        zznd zzndVar = this.f12219e;
        if (zzndVar.A(str).zzj() && zziq.zzb(zznVar.f12143E).zzj()) {
            return zzndVar.d(zznVar).zzab();
        }
        zzndVar.zzj().zzp().zza("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
