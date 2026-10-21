package com.google.android.gms.internal.cast;

/* loaded from: classes2.dex */
final class zzuj extends zzul {
    public /* synthetic */ zzuj(zzui zzuiVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.cast.zzul
    public final void zza(Object obj, long j7) {
        ((zztx) zzwj.zzf(obj, j7)).zzb();
    }

    @Override // com.google.android.gms.internal.cast.zzul
    public final void zzb(Object obj, Object obj2, long j7) {
        zztx zztxVar = (zztx) zzwj.zzf(obj, j7);
        zztx zztxVar2 = (zztx) zzwj.zzf(obj2, j7);
        int size = zztxVar.size();
        int size2 = zztxVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zztxVar.zzc()) {
                zztxVar = zztxVar.zzg(size2 + size);
            }
            zztxVar.addAll(zztxVar2);
        }
        if (size > 0) {
            zztxVar2 = zztxVar;
        }
        zzwj.zzs(obj, j7, zztxVar2);
    }

    private zzuj() {
        super(null);
    }
}
