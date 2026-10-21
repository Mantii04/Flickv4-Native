package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzay {

    /* renamed from: a, reason: collision with root package name */
    public final String f11230a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11231b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11232c;

    /* renamed from: d, reason: collision with root package name */
    public final long f11233d;

    /* renamed from: e, reason: collision with root package name */
    public final long f11234e;

    /* renamed from: f, reason: collision with root package name */
    public final zzba f11235f;

    public zzay(zzho zzhoVar, String str, String str2, String str3, long j7, Bundle bundle) {
        zzba zzbaVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.f11230a = str2;
        this.f11231b = str3;
        this.f11232c = TextUtils.isEmpty(str) ? null : str;
        this.f11233d = j7;
        this.f11234e = 0L;
        if (bundle == null || bundle.isEmpty()) {
            zzbaVar = new zzba(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzhoVar.zzj().zzg().zza("Param name can't be null");
                    it.remove();
                } else {
                    Object C6 = zzhoVar.zzt().C(bundle2.get(next), next);
                    if (C6 == null) {
                        zzhoVar.zzj().zzu().zza("Param value can't be null", zzhoVar.zzk().zzb(next));
                        it.remove();
                    } else {
                        zzhoVar.zzt().k(bundle2, next, C6);
                    }
                }
            }
            zzbaVar = new zzba(bundle2);
        }
        this.f11235f = zzbaVar;
    }

    public final zzay a(zzho zzhoVar, long j7) {
        return new zzay(zzhoVar, this.f11232c, this.f11230a, this.f11231b, this.f11233d, j7, this.f11235f);
    }

    public final String toString() {
        return "Event{appId='" + this.f11230a + "', name='" + this.f11231b + "', params=" + String.valueOf(this.f11235f) + "}";
    }

    public zzay(zzho zzhoVar, String str, String str2, String str3, long j7, long j8, zzba zzbaVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzbaVar);
        this.f11230a = str2;
        this.f11231b = str3;
        this.f11232c = TextUtils.isEmpty(str) ? null : str;
        this.f11233d = j7;
        this.f11234e = j8;
        if (j8 != 0 && j8 > j7) {
            zzhoVar.zzj().zzu().zza("Event created with reverse previous/current timestamps. appId, name", zzgb.zza(str2), zzgb.zza(str3));
        }
        this.f11235f = zzbaVar;
    }
}
