package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zziw {

    /* renamed from: a, reason: collision with root package name */
    public final Context f11833a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11834b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11835c;

    /* renamed from: d, reason: collision with root package name */
    public final String f11836d;

    /* renamed from: e, reason: collision with root package name */
    public final Boolean f11837e;

    /* renamed from: f, reason: collision with root package name */
    public final long f11838f;

    /* renamed from: g, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.zzdq f11839g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f11840h;

    /* renamed from: i, reason: collision with root package name */
    public final Long f11841i;

    /* renamed from: j, reason: collision with root package name */
    public final String f11842j;

    public zziw(Context context, com.google.android.gms.internal.measurement.zzdq zzdqVar, Long l7) {
        this.f11840h = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.f11833a = applicationContext;
        this.f11841i = l7;
        if (zzdqVar != null) {
            this.f11839g = zzdqVar;
            this.f11834b = zzdqVar.zzf;
            this.f11835c = zzdqVar.zze;
            this.f11836d = zzdqVar.zzd;
            this.f11840h = zzdqVar.zzc;
            this.f11838f = zzdqVar.zzb;
            this.f11842j = zzdqVar.zzh;
            Bundle bundle = zzdqVar.zzg;
            if (bundle != null) {
                this.f11837e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
