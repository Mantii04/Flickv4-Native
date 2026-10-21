package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
final class zzo implements DynamiteModule.VersionPolicy.IVersions {

    /* renamed from: a, reason: collision with root package name */
    public final int f11124a;

    public zzo(int i2, int i7) {
        this.f11124a = i2;
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.IVersions
    public final int zza(Context context, String str) {
        return this.f11124a;
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.IVersions
    public final int zzb(Context context, String str, boolean z6) {
        return 0;
    }
}
