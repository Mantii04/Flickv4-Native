package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzgp {

    /* renamed from: a, reason: collision with root package name */
    public final String f11627a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f11628b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11629c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f11630d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzgm f11631e;

    public zzgp(zzgm zzgmVar, String str, boolean z6) {
        this.f11631e = zzgmVar;
        Preconditions.checkNotEmpty(str);
        this.f11627a = str;
        this.f11628b = z6;
    }

    public final void zza(boolean z6) {
        SharedPreferences.Editor edit = this.f11631e.zzg().edit();
        edit.putBoolean(this.f11627a, z6);
        edit.apply();
        this.f11630d = z6;
    }

    public final boolean zza() {
        if (!this.f11629c) {
            this.f11629c = true;
            this.f11630d = this.f11631e.zzg().getBoolean(this.f11627a, this.f11628b);
        }
        return this.f11630d;
    }
}
