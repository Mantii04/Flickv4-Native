package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzhz implements Callable<List<zzac>> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11763b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11764e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11765f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzhs f11766j;

    public zzhz(zzhs zzhsVar, String str, String str2, String str3) {
        this.f11763b = str;
        this.f11764e = str2;
        this.f11765f = str3;
        this.f11766j = zzhsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzac> call() throws Exception {
        zzhs zzhsVar = this.f11766j;
        zzhsVar.f11742a.L();
        return zzhsVar.f11742a.zzf().zza(this.f11763b, this.f11764e, this.f11765f);
    }
}
