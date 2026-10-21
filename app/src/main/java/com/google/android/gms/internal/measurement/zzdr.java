package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.measurement.zzds;

/* loaded from: classes2.dex */
final class zzdr extends zzds.zzb {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ Context zze;
    private final /* synthetic */ Bundle zzf;
    private final /* synthetic */ zzds zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdr(zzds zzdsVar, String str, String str2, Context context, Bundle bundle) {
        super(zzdsVar);
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = bundle;
        this.zzg = zzdsVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzds.zzb
    public final void zza() {
        boolean zzc;
        String str;
        String str2;
        String str3;
        zzdd zzddVar;
        zzdd zzddVar2;
        String str4;
        String str5;
        try {
            zzc = this.zzg.zzc(this.zzc, this.zzd);
            if (zzc) {
                String str6 = this.zzd;
                String str7 = this.zzc;
                str5 = this.zzg.zzc;
                str3 = str6;
                str2 = str7;
                str = str5;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            Preconditions.checkNotNull(this.zze);
            zzds zzdsVar = this.zzg;
            zzdsVar.zzj = zzdsVar.zza(this.zze, true);
            zzddVar = this.zzg.zzj;
            if (zzddVar == null) {
                str4 = this.zzg.zzc;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            int localVersion = DynamiteModule.getLocalVersion(this.zze, ModuleDescriptor.MODULE_ID);
            zzdq zzdqVar = new zzdq(87000L, Math.max(localVersion, r0), DynamiteModule.getRemoteVersion(this.zze, ModuleDescriptor.MODULE_ID) < localVersion, str, str2, str3, this.zzf, com.google.android.gms.measurement.internal.zzhi.zza(this.zze));
            zzddVar2 = this.zzg.zzj;
            ((zzdd) Preconditions.checkNotNull(zzddVar2)).initialize(ObjectWrapper.wrap(this.zze), zzdqVar, this.zza);
        } catch (Exception e3) {
            this.zzg.zza(e3, true, false);
        }
    }
}
