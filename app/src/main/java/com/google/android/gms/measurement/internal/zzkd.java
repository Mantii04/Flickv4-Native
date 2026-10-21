package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes2.dex */
final class zzkd implements zzns {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zziy f11931a;

    public zzkd(zziy zziyVar) {
        this.f11931a = zziyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final void zza(String str, String str2, Bundle bundle) {
        boolean isEmpty = TextUtils.isEmpty(str);
        zziy zziyVar = this.f11931a;
        if (isEmpty) {
            zziyVar.zzb("auto", str2, bundle);
        } else {
            zziyVar.zza("auto", str2, bundle, str);
        }
    }
}
