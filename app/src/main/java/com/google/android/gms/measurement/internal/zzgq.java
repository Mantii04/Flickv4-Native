package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzgq {

    /* renamed from: a, reason: collision with root package name */
    public final String f11632a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11633b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11634c;

    /* renamed from: d, reason: collision with root package name */
    public final long f11635d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzgm f11636e;

    public zzgq(zzgm zzgmVar, long j7) {
        this.f11636e = zzgmVar;
        Preconditions.checkNotEmpty("health_monitor");
        Preconditions.checkArgument(j7 > 0);
        this.f11632a = "health_monitor:start";
        this.f11633b = "health_monitor:count";
        this.f11634c = "health_monitor:value";
        this.f11635d = j7;
    }

    public final void a() {
        zzgm zzgmVar = this.f11636e;
        zzgmVar.zzt();
        long currentTimeMillis = zzgmVar.zzb().currentTimeMillis();
        SharedPreferences.Editor edit = zzgmVar.zzg().edit();
        edit.remove(this.f11633b);
        edit.remove(this.f11634c);
        edit.putLong(this.f11632a, currentTimeMillis);
        edit.apply();
    }

    public final Pair<String, Long> zza() {
        long abs;
        zzgm zzgmVar = this.f11636e;
        zzgmVar.zzt();
        zzgmVar.zzt();
        long j7 = zzgmVar.zzg().getLong(this.f11632a, 0L);
        if (j7 == 0) {
            a();
            abs = 0;
        } else {
            abs = Math.abs(j7 - zzgmVar.zzb().currentTimeMillis());
        }
        long j8 = this.f11635d;
        if (abs < j8) {
            return null;
        }
        if (abs > (j8 << 1)) {
            a();
            return null;
        }
        String string = zzgmVar.zzg().getString(this.f11634c, null);
        long j9 = zzgmVar.zzg().getLong(this.f11633b, 0L);
        a();
        return (string == null || j9 <= 0) ? zzgm.f11597A : new Pair<>(string, Long.valueOf(j9));
    }

    public final void zza(String str, long j7) {
        zzgm zzgmVar = this.f11636e;
        zzgmVar.zzt();
        if (zzgmVar.zzg().getLong(this.f11632a, 0L) == 0) {
            a();
        }
        if (str == null) {
            str = "";
        }
        SharedPreferences zzg = zzgmVar.zzg();
        String str2 = this.f11633b;
        long j8 = zzg.getLong(str2, 0L);
        String str3 = this.f11634c;
        if (j8 <= 0) {
            SharedPreferences.Editor edit = zzgmVar.zzg().edit();
            edit.putString(str3, str);
            edit.putLong(str2, 1L);
            edit.apply();
            return;
        }
        long j9 = j8 + 1;
        boolean z6 = (zzgmVar.zzq().Q().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j9;
        SharedPreferences.Editor edit2 = zzgmVar.zzg().edit();
        if (z6) {
            edit2.putString(str3, str);
        }
        edit2.putLong(str2, j9);
        edit2.apply();
    }
}
