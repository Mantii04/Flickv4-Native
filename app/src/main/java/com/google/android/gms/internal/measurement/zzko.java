package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class zzko extends zzkl {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    private static <E> List<E> zzc(Object obj, long j7) {
        return (List) zzmz.zze(obj, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zzkl
    public final <L> List<L> zza(Object obj, long j7) {
        return zza(obj, j7, 10);
    }

    @Override // com.google.android.gms.internal.measurement.zzkl
    public final void zzb(Object obj, long j7) {
        Object unmodifiableList;
        List list = (List) zzmz.zze(obj, j7);
        if (list instanceof zzkm) {
            unmodifiableList = ((zzkm) list).zzd();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzls) && (list instanceof zzkc)) {
                zzkc zzkcVar = (zzkc) list;
                if (zzkcVar.zzc()) {
                    zzkcVar.zzb();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        zzmz.zza(obj, j7, unmodifiableList);
    }

    private zzko() {
        super();
    }

    private static <L> List<L> zza(Object obj, long j7, int i2) {
        List<L> zzc = zzc(obj, j7);
        if (zzc.isEmpty()) {
            List<L> zzkjVar = zzc instanceof zzkm ? new zzkj(i2) : ((zzc instanceof zzls) && (zzc instanceof zzkc)) ? ((zzkc) zzc).zza(i2) : new ArrayList<>(i2);
            zzmz.zza(obj, j7, zzkjVar);
            return zzkjVar;
        }
        if (zza.isAssignableFrom(zzc.getClass())) {
            ArrayList arrayList = new ArrayList(zzc.size() + i2);
            arrayList.addAll(zzc);
            zzmz.zza(obj, j7, arrayList);
            return arrayList;
        }
        if (zzc instanceof zzmy) {
            zzkj zzkjVar2 = new zzkj(zzc.size() + i2);
            zzkjVar2.addAll((zzmy) zzc);
            zzmz.zza(obj, j7, zzkjVar2);
            return zzkjVar2;
        }
        if ((zzc instanceof zzls) && (zzc instanceof zzkc)) {
            zzkc zzkcVar = (zzkc) zzc;
            if (!zzkcVar.zzc()) {
                zzkc zza2 = zzkcVar.zza(zzc.size() + i2);
                zzmz.zza(obj, j7, zza2);
                return zza2;
            }
        }
        return zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzkl
    public final <E> void zza(Object obj, Object obj2, long j7) {
        List zzc = zzc(obj2, j7);
        List zza2 = zza(obj, j7, zzc.size());
        int size = zza2.size();
        int size2 = zzc.size();
        if (size > 0 && size2 > 0) {
            zza2.addAll(zzc);
        }
        if (size > 0) {
            zzc = zza2;
        }
        zzmz.zza(obj, j7, zzc);
    }
}
