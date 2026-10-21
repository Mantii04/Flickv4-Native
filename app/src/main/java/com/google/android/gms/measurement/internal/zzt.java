package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public final class zzt {

    /* renamed from: a, reason: collision with root package name */
    public final zzho f12254a;

    public zzt(zzho zzhoVar) {
        this.f12254a = zzhoVar;
    }

    public final void a(String str, Bundle bundle) {
        String uri;
        zzho zzhoVar = this.f12254a;
        zzhoVar.zzl().zzt();
        if (zzhoVar.zzac()) {
            return;
        }
        if (bundle.isEmpty()) {
            uri = null;
        } else {
            if (str.isEmpty()) {
                str = "auto";
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            uri = builder.build().toString();
        }
        if (TextUtils.isEmpty(uri)) {
            return;
        }
        zzhoVar.zzn().f11619x.zza(uri);
        zzhoVar.zzn().f11620y.zza(zzhoVar.zzb().currentTimeMillis());
    }

    public final boolean b() {
        return this.f12254a.zzn().f11620y.zza() > 0;
    }

    public final boolean c() {
        if (!b()) {
            return false;
        }
        zzho zzhoVar = this.f12254a;
        return zzhoVar.zzb().currentTimeMillis() - zzhoVar.zzn().f11620y.zza() > zzhoVar.zzf().zzc(null, zzbh.f11302U);
    }
}
