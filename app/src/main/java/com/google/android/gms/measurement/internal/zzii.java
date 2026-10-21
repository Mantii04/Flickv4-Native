package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzii implements Callable<byte[]> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbf f11795b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11796e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzhs f11797f;

    public zzii(zzhs zzhsVar, zzbf zzbfVar, String str) {
        this.f11795b = zzbfVar;
        this.f11796e = str;
        this.f11797f = zzhsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        zzhs zzhsVar = this.f11797f;
        zzhsVar.f11742a.L();
        return zzhsVar.f11742a.zzm().zza(this.f11795b, this.f11796e);
    }
}
