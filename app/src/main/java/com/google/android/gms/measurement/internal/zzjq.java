package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* loaded from: classes2.dex */
final class zzjq implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11890b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11891e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f11892f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Bundle f11893j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ boolean f11894m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ boolean f11895n;

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ boolean f11896p;

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ String f11897q;

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ zziy f11898r;

    public zzjq(zziy zziyVar, String str, String str2, long j7, Bundle bundle, boolean z6, boolean z7, boolean z8, String str3) {
        this.f11890b = str;
        this.f11891e = str2;
        this.f11892f = j7;
        this.f11893j = bundle;
        this.f11894m = z6;
        this.f11895n = z7;
        this.f11896p = z8;
        this.f11897q = str3;
        this.f11898r = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11898r.zza(this.f11890b, this.f11891e, this.f11892f, this.f11893j, this.f11894m, this.f11895n, this.f11896p, this.f11897q);
    }
}
