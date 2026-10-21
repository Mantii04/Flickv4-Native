package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzgf {

    /* renamed from: a, reason: collision with root package name */
    public String f11577a;

    /* renamed from: b, reason: collision with root package name */
    public String f11578b;

    /* renamed from: c, reason: collision with root package name */
    public long f11579c;

    /* renamed from: d, reason: collision with root package name */
    public Bundle f11580d;

    public final String toString() {
        return "origin=" + this.f11578b + ",name=" + this.f11577a + ",params=" + String.valueOf(this.f11580d);
    }

    public final zzbf zza() {
        return new zzbf(this.f11577a, new zzba(new Bundle(this.f11580d)), this.f11578b, this.f11579c);
    }

    public static zzgf zza(zzbf zzbfVar) {
        String str = zzbfVar.f11257b;
        Bundle zzb = zzbfVar.f11258e.zzb();
        zzgf zzgfVar = new zzgf();
        zzgfVar.f11577a = str;
        zzgfVar.f11578b = zzbfVar.f11259f;
        if (zzb == null) {
            zzb = new Bundle();
        }
        zzgfVar.f11580d = zzb;
        zzgfVar.f11579c = zzbfVar.f11260j;
        return zzgfVar;
    }
}
