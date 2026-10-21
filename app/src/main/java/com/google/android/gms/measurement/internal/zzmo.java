package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzpa;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes2.dex */
final class zzmo {

    /* renamed from: a, reason: collision with root package name */
    public long f12119a;

    /* renamed from: b, reason: collision with root package name */
    public long f12120b;

    /* renamed from: c, reason: collision with root package name */
    public final zzmr f12121c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzmi f12122d;

    public zzmo(zzmi zzmiVar) {
        this.f12122d = zzmiVar;
        this.f12121c = new zzmr(this, zzmiVar.f11804a);
        long elapsedRealtime = zzmiVar.zzb().elapsedRealtime();
        this.f12119a = elapsedRealtime;
        this.f12120b = elapsedRealtime;
    }

    public final boolean zza(boolean z6, boolean z7, long j7) {
        zzmi zzmiVar = this.f12122d;
        zzmiVar.zzt();
        zzmiVar.zzu();
        if (!zzpa.zza() || !zzmiVar.zze().zza(zzbh.f11341m0) || zzmiVar.f11804a.zzac()) {
            zzmiVar.zzk().f11612q.zza(zzmiVar.zzb().currentTimeMillis());
        }
        long j8 = j7 - this.f12119a;
        if (!z6 && j8 < 1000) {
            zzmiVar.zzj().zzp().zza("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j8));
            return false;
        }
        if (!z7) {
            j8 = j7 - this.f12120b;
            this.f12120b = j7;
        }
        zzmiVar.zzj().zzp().zza("Recording user engagement, ms", Long.valueOf(j8));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j8);
        zznt.zza(zzmiVar.zzn().zza(!zzmiVar.zze().zzv()), bundle, true);
        if (!z7) {
            zzmiVar.zzm().n("auto", "_e", bundle);
        }
        this.f12119a = j7;
        zzmr zzmrVar = this.f12121c;
        zzmrVar.a();
        zzmrVar.zza(DateUtils.MILLIS_PER_HOUR);
        return true;
    }
}
