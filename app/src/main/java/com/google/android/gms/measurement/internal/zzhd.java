package com.google.android.gms.measurement.internal;

import java.util.List;

/* loaded from: classes2.dex */
final class zzhd implements com.google.android.gms.internal.measurement.zzv {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgy f11672a;

    public zzhd(zzgy zzgyVar) {
        this.f11672a = zzgyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void zza(com.google.android.gms.internal.measurement.zzs zzsVar, String str, List<String> list, boolean z6, boolean z7) {
        int i2 = zzhf.f11674a[zzsVar.ordinal()];
        zzgy zzgyVar = this.f11672a;
        zzgd zzn = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? zzgyVar.zzj().zzn() : zzgyVar.zzj().zzp() : z6 ? zzgyVar.zzj().zzw() : !z7 ? zzgyVar.zzj().zzv() : zzgyVar.zzj().zzu() : z6 ? zzgyVar.zzj().zzm() : !z7 ? zzgyVar.zzj().zzh() : zzgyVar.zzj().zzg() : zzgyVar.zzj().zzc();
        int size = list.size();
        if (size == 1) {
            zzn.zza(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzn.zza(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzn.zza(str);
        } else {
            zzn.zza(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
