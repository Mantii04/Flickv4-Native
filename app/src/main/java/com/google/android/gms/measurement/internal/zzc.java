package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import p.g;

/* loaded from: classes2.dex */
final class zzc implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11386b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f11387e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zza f11388f;

    public zzc(zza zzaVar, String str, long j7) {
        this.f11386b = str;
        this.f11387e = j7;
        this.f11388f = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zza zzaVar = this.f11388f;
        zzaVar.zzt();
        String str = this.f11386b;
        Preconditions.checkNotEmpty(str);
        g gVar = zzaVar.f11154c;
        boolean isEmpty = gVar.isEmpty();
        long j7 = this.f11387e;
        if (isEmpty) {
            zzaVar.f11155d = j7;
        }
        Integer num = (Integer) gVar.get(str);
        if (num != null) {
            gVar.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (gVar.size() >= 100) {
            zzaVar.zzj().zzu().zza("Too many ads visible");
        } else {
            gVar.put(str, 1);
            zzaVar.f11153b.put(str, Long.valueOf(j7));
        }
    }
}
