package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzkb implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11924b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11925e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11926f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f11927j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zziy f11928m;

    public zzkb(zziy zziyVar, AtomicReference atomicReference, String str, String str2, boolean z6) {
        this.f11924b = atomicReference;
        this.f11925e = str;
        this.f11926f = str2;
        this.f11927j = z6;
        this.f11928m = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11928m.f11804a.zzr().zza(this.f11924b, null, this.f11925e, this.f11926f, this.f11927j);
    }
}
