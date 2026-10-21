package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzjt implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11900b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11901e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f11902f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ long f11903j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zziy f11904m;

    public zzjt(zziy zziyVar, String str, String str2, Object obj, long j7) {
        this.f11900b = str;
        this.f11901e = str2;
        this.f11902f = obj;
        this.f11903j = j7;
        this.f11904m = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f11902f;
        this.f11904m.a(this.f11903j, obj, this.f11900b, this.f11901e);
    }
}
