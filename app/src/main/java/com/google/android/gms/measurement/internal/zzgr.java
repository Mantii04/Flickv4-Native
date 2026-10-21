package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzgr {

    /* renamed from: a, reason: collision with root package name */
    public final String f11637a;

    /* renamed from: b, reason: collision with root package name */
    public final long f11638b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11639c;

    /* renamed from: d, reason: collision with root package name */
    public long f11640d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzgm f11641e;

    public zzgr(zzgm zzgmVar, String str, long j7) {
        this.f11641e = zzgmVar;
        Preconditions.checkNotEmpty(str);
        this.f11637a = str;
        this.f11638b = j7;
    }

    public final long zza() {
        if (!this.f11639c) {
            this.f11639c = true;
            this.f11640d = this.f11641e.zzg().getLong(this.f11637a, this.f11638b);
        }
        return this.f11640d;
    }

    public final void zza(long j7) {
        SharedPreferences.Editor edit = this.f11641e.zzg().edit();
        edit.putLong(this.f11637a, j7);
        edit.apply();
        this.f11640d = j7;
    }
}
