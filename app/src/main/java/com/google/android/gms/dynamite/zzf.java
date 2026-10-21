package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
final class zzf implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult selectModule(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int zzb = iVersions.zzb(context, str, true);
        selectionResult.f11119b = zzb;
        if (zzb != 0) {
            selectionResult.f11120c = 1;
            return selectionResult;
        }
        int zza = iVersions.zza(context, str);
        selectionResult.f11118a = zza;
        if (zza != 0) {
            selectionResult.f11120c = -1;
        }
        return selectionResult;
    }
}
