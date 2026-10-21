package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzic implements Callable<List<zzac>> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11778b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11779e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11780f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzhs f11781j;

    public zzic(zzhs zzhsVar, String str, String str2, String str3) {
        this.f11778b = str;
        this.f11779e = str2;
        this.f11780f = str3;
        this.f11781j = zzhsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzac> call() throws Exception {
        zzhs zzhsVar = this.f11781j;
        zzhsVar.f11742a.L();
        return zzhsVar.f11742a.zzf().zza(this.f11778b, this.f11779e, this.f11780f);
    }
}
