package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzjy implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11912b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11913e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11914f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zziy f11915j;

    public zzjy(zziy zziyVar, AtomicReference atomicReference, String str, String str2) {
        this.f11912b = atomicReference;
        this.f11913e = str;
        this.f11914f = str2;
        this.f11915j = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11915j.f11804a.zzr().zza(this.f11912b, (String) null, this.f11913e, this.f11914f);
    }
}
