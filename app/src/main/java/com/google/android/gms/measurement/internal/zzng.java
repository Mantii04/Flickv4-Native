package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes2.dex */
final class zzng implements zzns {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zznd f12217a;

    public zzng(zznd zzndVar) {
        this.f12217a = zzndVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzns
    public final void zza(String str, String str2, Bundle bundle) {
        boolean isEmpty = TextUtils.isEmpty(str);
        zznd zzndVar = this.f12217a;
        if (!isEmpty) {
            zzndVar.zzl().zzb(new zznj(this, str, str2, bundle));
            return;
        }
        zzho zzhoVar = zzndVar.f12193l;
        if (zzhoVar != null) {
            zzhoVar.zzj().zzg().zza("AppId not known when logging event", str2);
        }
    }
}
