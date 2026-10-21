package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
final class zzl implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult selectModule(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        int zzb;
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int zza = iVersions.zza(context, str);
        selectionResult.f11118a = zza;
        int i2 = 1;
        int i7 = 0;
        if (zza != 0) {
            zzb = iVersions.zzb(context, str, false);
            selectionResult.f11119b = zzb;
        } else {
            zzb = iVersions.zzb(context, str, true);
            selectionResult.f11119b = zzb;
        }
        int i8 = selectionResult.f11118a;
        if (i8 != 0) {
            i7 = i8;
        } else if (zzb == 0) {
            i2 = 0;
            selectionResult.f11120c = i2;
            return selectionResult;
        }
        if (zzb < i7) {
            i2 = -1;
        }
        selectionResult.f11120c = i2;
        return selectionResult;
    }
}
