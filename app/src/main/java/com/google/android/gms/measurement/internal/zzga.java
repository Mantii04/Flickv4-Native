package com.google.android.gms.measurement.internal;

import A.i;
import com.uwetrottmann.trakt5.TraktV2;

/* loaded from: classes2.dex */
final class zzga implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11554b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11555e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f11556f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f11557j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f11558m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ zzgb f11559n;

    public zzga(zzgb zzgbVar, int i2, String str, Object obj, Object obj2, Object obj3) {
        this.f11554b = i2;
        this.f11555e = str;
        this.f11556f = obj;
        this.f11557j = obj2;
        this.f11558m = obj3;
        this.f11559n = zzgbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar = this.f11559n;
        zzgm zzn = zzgbVar.f11804a.zzn();
        if (!zzn.f11803b) {
            zzgbVar.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (zzgbVar.f11560c == 0) {
            if (zzgbVar.zze().zzy()) {
                zzgbVar.f11560c = 'C';
            } else {
                zzgbVar.f11560c = 'c';
            }
        }
        if (zzgbVar.f11561d < 0) {
            zzgbVar.f11561d = 87000L;
        }
        char charAt = "01VDIWEA?".charAt(this.f11554b);
        char c7 = zzgbVar.f11560c;
        long j7 = zzgbVar.f11561d;
        Object obj = this.f11556f;
        String str = this.f11555e;
        String b7 = zzgb.b(true, str, obj, this.f11557j, this.f11558m);
        StringBuilder sb = new StringBuilder(TraktV2.API_VERSION);
        sb.append(charAt);
        sb.append(c7);
        sb.append(j7);
        String o6 = i.o(sb, ":", b7);
        if (o6.length() > 1024) {
            o6 = str.substring(0, 1024);
        }
        zzgq zzgqVar = zzn.f11601f;
        if (zzgqVar != null) {
            zzgqVar.zza(o6, 1L);
        }
    }
}
