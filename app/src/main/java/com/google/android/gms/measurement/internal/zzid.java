package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzid implements Callable<zzal> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f11782b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhs f11783e;

    public zzid(zzhs zzhsVar, zzn zznVar) {
        this.f11782b = zznVar;
        this.f11783e = zzhsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzal call() throws Exception {
        zzhs zzhsVar = this.f11783e;
        zzhsVar.f11742a.L();
        return new zzal(zzhsVar.f11742a.b(this.f11782b.f12154b));
    }
}
