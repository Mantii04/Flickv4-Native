package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzia implements Callable<List<zznq>> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11772b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11773e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11774f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzhs f11775j;

    public zzia(zzhs zzhsVar, String str, String str2, String str3) {
        this.f11772b = str;
        this.f11773e = str2;
        this.f11774f = str3;
        this.f11775j = zzhsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zznq> call() throws Exception {
        zzhs zzhsVar = this.f11775j;
        zzhsVar.f11742a.L();
        return zzhsVar.f11742a.zzf().zzb(this.f11772b, this.f11773e, this.f11774f);
    }
}
