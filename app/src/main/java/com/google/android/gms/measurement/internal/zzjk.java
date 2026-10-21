package com.google.android.gms.measurement.internal;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzjk implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zziy f11880b;

    public zzjk(zziy zziyVar) {
        this.f11880b = zziyVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f11880b.zzl().zzb(runnable);
    }
}
