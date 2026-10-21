package com.google.android.gms.measurement.internal;

import java.util.ArrayList;

/* loaded from: classes2.dex */
final class zzmg implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zznd f12099b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Runnable f12100e;

    public zzmg(zznd zzndVar, Runnable runnable) {
        this.f12099b = zzndVar;
        this.f12100e = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznd zzndVar = this.f12099b;
        zzndVar.L();
        zzndVar.zzl().zzt();
        if (zzndVar.f12197p == null) {
            zzndVar.f12197p = new ArrayList();
        }
        zzndVar.f12197p.add(this.f12100e);
        zzndVar.N();
    }
}
