package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzjc implements zznt {
    private final zzja zza;

    private zzjc(zzja zzjaVar) {
        zzja zzjaVar2 = (zzja) zzjw.zza(zzjaVar, "output");
        this.zza = zzjaVar2;
        zzjaVar2.zza = this;
    }

    public static zzjc zza(zzja zzjaVar) {
        zzjc zzjcVar = zzjaVar.zza;
        return zzjcVar != null ? zzjcVar : new zzjc(zzjaVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzb(int i2, List<Double> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzb(i2, list.get(i7).doubleValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zza(list.get(i9).doubleValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzb(list.get(i7).doubleValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzc(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzh(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zza(list.get(i9).intValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzi(list.get(i7).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzd(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzg(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zzb(list.get(i9).intValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzh(list.get(i7).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zze(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzf(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zza(list.get(i9).longValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzf(list.get(i7).longValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzf(int i2, List<Float> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzb(i2, list.get(i7).floatValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zza(list.get(i9).floatValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzb(list.get(i7).floatValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzg(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzh(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zzc(list.get(i9).intValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzi(list.get(i7).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzh(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzh(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zzb(list.get(i9).longValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzh(list.get(i7).longValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzi(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzg(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zzd(list.get(i9).intValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzh(list.get(i7).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzj(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzf(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zzc(list.get(i9).longValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzf(list.get(i7).longValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzk(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzi(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zze(list.get(i9).intValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzj(list.get(i7).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzl(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzg(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zzd(list.get(i9).longValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzg(list.get(i7).longValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzm(int i2, List<Integer> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzk(i2, list.get(i7).intValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zzg(list.get(i9).intValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzk(list.get(i7).intValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzn(int i2, List<Long> list, boolean z6) throws IOException {
        int i7 = 0;
        if (!z6) {
            while (i7 < list.size()) {
                this.zza.zzh(i2, list.get(i7).longValue());
                i7++;
            }
            return;
        }
        this.zza.zzj(i2, 2);
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            i8 += zzja.zze(list.get(i9).longValue());
        }
        this.zza.zzk(i8);
        while (i7 < list.size()) {
            this.zza.zzh(list.get(i7).longValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final int zza() {
        return zzns.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, boolean z6) throws IOException {
        this.zza.zzb(i2, z6);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, List<Boolean> list, boolean z6) throws IOException {
        int i7 = 0;
        if (z6) {
            this.zza.zzj(i2, 2);
            int i8 = 0;
            for (int i9 = 0; i9 < list.size(); i9++) {
                i8 += zzja.zza(list.get(i9).booleanValue());
            }
            this.zza.zzk(i8);
            while (i7 < list.size()) {
                this.zza.zzb(list.get(i7).booleanValue());
                i7++;
            }
            return;
        }
        while (i7 < list.size()) {
            this.zza.zzb(i2, list.get(i7).booleanValue());
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzb(int i2, int i7) throws IOException {
        this.zza.zzg(i2, i7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzd(int i2, int i7) throws IOException {
        this.zza.zzg(i2, i7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zze(int i2, int i7) throws IOException {
        this.zza.zzi(i2, i7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzf(int i2, int i7) throws IOException {
        this.zza.zzk(i2, i7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzb(int i2, long j7) throws IOException {
        this.zza.zzh(i2, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zze(int i2, long j7) throws IOException {
        this.zza.zzh(i2, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzc(int i2, int i7) throws IOException {
        this.zza.zzh(i2, i7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzd(int i2, long j7) throws IOException {
        this.zza.zzg(i2, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzb(int i2, Object obj, zzly zzlyVar) throws IOException {
        this.zza.zzc(i2, (zzlg) obj, zzlyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzc(int i2, long j7) throws IOException {
        this.zza.zzf(i2, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, zzij zzijVar) throws IOException {
        this.zza.zzc(i2, zzijVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzb(int i2, List<?> list, zzly zzlyVar) throws IOException {
        for (int i7 = 0; i7 < list.size(); i7++) {
            zzb(i2, list.get(i7), zzlyVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, List<zzij> list) throws IOException {
        for (int i7 = 0; i7 < list.size(); i7++) {
            this.zza.zzc(i2, list.get(i7));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    @Deprecated
    public final void zzb(int i2) throws IOException {
        this.zza.zzj(i2, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, double d7) throws IOException {
        this.zza.zzb(i2, d7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zzb(int i2, List<String> list) throws IOException {
        int i7 = 0;
        if (list instanceof zzkm) {
            zzkm zzkmVar = (zzkm) list;
            while (i7 < list.size()) {
                Object zzb = zzkmVar.zzb(i7);
                if (zzb instanceof String) {
                    this.zza.zzb(i2, (String) zzb);
                } else {
                    this.zza.zzc(i2, (zzij) zzb);
                }
                i7++;
            }
            return;
        }
        while (i7 < list.size()) {
            this.zza.zzb(i2, list.get(i7));
            i7++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    @Deprecated
    public final void zza(int i2) throws IOException {
        this.zza.zzj(i2, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, int i7) throws IOException {
        this.zza.zzh(i2, i7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, long j7) throws IOException {
        this.zza.zzf(i2, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, float f3) throws IOException {
        this.zza.zzb(i2, f3);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, Object obj, zzly zzlyVar) throws IOException {
        zzja zzjaVar = this.zza;
        zzjaVar.zzj(i2, 3);
        zzlyVar.zza((zzly) obj, (zznt) zzjaVar.zza);
        zzjaVar.zzj(i2, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, List<?> list, zzly zzlyVar) throws IOException {
        for (int i7 = 0; i7 < list.size(); i7++) {
            zza(i2, list.get(i7), zzlyVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final <K, V> void zza(int i2, zzkx<K, V> zzkxVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zzj(i2, 2);
            this.zza.zzk(zzky.zza(zzkxVar, entry.getKey(), entry.getValue()));
            zzky.zza(this.zza, zzkxVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, Object obj) throws IOException {
        if (obj instanceof zzij) {
            this.zza.zzd(i2, (zzij) obj);
        } else {
            this.zza.zzb(i2, (zzlg) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final void zza(int i2, String str) throws IOException {
        this.zza.zzb(i2, str);
    }
}
