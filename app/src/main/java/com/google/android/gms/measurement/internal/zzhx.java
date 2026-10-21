package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzhx implements Callable<List<zznq>> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11757b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11758e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11759f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzhs f11760j;

    public zzhx(zzhs zzhsVar, String str, String str2, String str3) {
        this.f11757b = str;
        this.f11758e = str2;
        this.f11759f = str3;
        this.f11760j = zzhsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zznq> call() throws Exception {
        zzhs zzhsVar = this.f11760j;
        zzhsVar.f11742a.L();
        return zzhsVar.f11742a.zzf().zzb(this.f11757b, this.f11758e, this.f11759f);
    }
}
