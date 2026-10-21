package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzhy implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzac f11761b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzhs f11762e;

    public zzhy(zzhs zzhsVar, zzac zzacVar) {
        this.f11761b = zzacVar;
        this.f11762e = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhs zzhsVar = this.f11762e;
        zzhsVar.f11742a.L();
        zzac zzacVar = this.f11761b;
        if (zzacVar.f11166f.zza() == null) {
            zznd zzndVar = zzhsVar.f11742a;
            zzndVar.getClass();
            zzn E6 = zzndVar.E((String) Preconditions.checkNotNull(zzacVar.f11164b));
            if (E6 != null) {
                zzndVar.k(zzacVar, E6);
                return;
            }
            return;
        }
        zznd zzndVar2 = zzhsVar.f11742a;
        zzndVar2.getClass();
        zzn E7 = zzndVar2.E((String) Preconditions.checkNotNull(zzacVar.f11164b));
        if (E7 != null) {
            zzndVar2.B(zzacVar, E7);
        }
    }
}
