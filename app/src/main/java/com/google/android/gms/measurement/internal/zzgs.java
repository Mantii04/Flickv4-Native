package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzgs {

    /* renamed from: a, reason: collision with root package name */
    public final String f11642a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11643b;

    /* renamed from: c, reason: collision with root package name */
    public String f11644c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzgm f11645d;

    public zzgs(zzgm zzgmVar, String str, String str2) {
        this.f11645d = zzgmVar;
        Preconditions.checkNotEmpty(str);
        this.f11642a = str;
    }

    public final String zza() {
        if (!this.f11643b) {
            this.f11643b = true;
            this.f11644c = this.f11645d.zzg().getString(this.f11642a, null);
        }
        return this.f11644c;
    }

    public final void zza(String str) {
        SharedPreferences.Editor edit = this.f11645d.zzg().edit();
        edit.putString(this.f11642a, str);
        edit.apply();
        this.f11644c = str;
    }
}
