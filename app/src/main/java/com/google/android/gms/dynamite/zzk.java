package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
final class zzk implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult selectModule(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        selectionResult.f11118a = iVersions.zza(context, str);
        int i2 = 1;
        int zzb = iVersions.zzb(context, str, true);
        selectionResult.f11119b = zzb;
        int i7 = selectionResult.f11118a;
        if (i7 == 0) {
            i7 = 0;
            if (zzb == 0) {
                i2 = 0;
                selectionResult.f11120c = i2;
                return selectionResult;
            }
        }
        if (zzb < i7) {
            i2 = -1;
        }
        selectionResult.f11120c = i2;
        return selectionResult;
    }
}
