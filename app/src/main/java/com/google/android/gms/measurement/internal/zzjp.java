package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes2.dex */
final class zzjp implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zziy f11889b;

    public zzjp(zziy zziyVar) {
        this.f11889b = zziyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzt zztVar = this.f11889b.f11854n;
        zzho zzhoVar = zztVar.f12254a;
        zzhoVar.zzl().zzt();
        if (zztVar.b()) {
            if (zztVar.c()) {
                zzhoVar.zzn().f11619x.zza(null);
                Bundle bundle = new Bundle();
                bundle.putString(FirebaseAnalytics.Param.SOURCE, "(not set)");
                bundle.putString(FirebaseAnalytics.Param.MEDIUM, "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1L);
                zzhoVar.zzp().n("auto", "_cmpx", bundle);
            } else {
                String zza = zzhoVar.zzn().f11619x.zza();
                if (TextUtils.isEmpty(zza)) {
                    zzhoVar.zzj().zzm().zza("Cache still valid but referrer not found");
                } else {
                    long zza2 = ((zzhoVar.zzn().f11620y.zza() / DateUtils.MILLIS_PER_HOUR) - 1) * DateUtils.MILLIS_PER_HOUR;
                    Uri parse = Uri.parse(zza);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", zza2);
                    Object obj = pair.first;
                    zzhoVar.zzp().n(obj == null ? "app" : (String) obj, "_cmp", (Bundle) pair.second);
                }
                zzhoVar.zzn().f11619x.zza(null);
            }
            zzhoVar.zzn().f11620y.zza(0L);
        }
    }
}
