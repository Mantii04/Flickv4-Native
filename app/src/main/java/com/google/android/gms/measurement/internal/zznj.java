package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zznj implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f12221b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f12222e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Bundle f12223f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzng f12224j;

    public zznj(zzng zzngVar, String str, String str2, Bundle bundle) {
        this.f12221b = str;
        this.f12222e = str2;
        this.f12223f = bundle;
        this.f12224j = zzngVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznd zzndVar = this.f12224j.f12217a;
        zznt zzq = zzndVar.zzq();
        long currentTimeMillis = zzndVar.zzb().currentTimeMillis();
        zzndVar.m((zzbf) Preconditions.checkNotNull(zzq.g(this.f12222e, this.f12223f, "auto", currentTimeMillis, false)), this.f12221b);
    }
}
