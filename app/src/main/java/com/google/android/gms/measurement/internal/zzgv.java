package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;

/* loaded from: classes2.dex */
public final class zzgv {

    /* renamed from: a, reason: collision with root package name */
    public final zzho f11648a;

    public zzgv(zznd zzndVar) {
        this.f11648a = zzndVar.f12193l;
    }

    public final boolean a() {
        zzho zzhoVar = this.f11648a;
        try {
            PackageManagerWrapper packageManager = Wrappers.packageManager(zzhoVar.zza());
            if (packageManager != null) {
                return packageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            zzhoVar.zzj().zzp().zza("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e3) {
            zzhoVar.zzj().zzp().zza("Failed to retrieve Play Store version for Install Referrer", e3);
            return false;
        }
    }
}
