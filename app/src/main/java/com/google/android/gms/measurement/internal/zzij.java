package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzij implements Callable<List<zznq>> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11798b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhs f11799e;

    public zzij(zzhs zzhsVar, String str) {
        this.f11798b = str;
        this.f11799e = zzhsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zznq> call() throws Exception {
        zzhs zzhsVar = this.f11799e;
        zzhsVar.f11742a.L();
        return zzhsVar.f11742a.zzf().zzj(this.f11798b);
    }
}
