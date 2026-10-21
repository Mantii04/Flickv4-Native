package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzma {
    private static final Class<?> zza = zzd();
    private static final zzmt<?, ?> zzb = zzc();
    private static final zzmt<?, ?> zzc = new zzmv();

    public static int zza(int i2, List<?> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzja.zza(i2, true) * size;
    }

    public static int zzb(int i2, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzja.zzf(i2) * size) + zzb(list);
    }

    public static int zzc(int i2, List<?> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzja.zzb(i2, 0) * size;
    }

    public static int zzd(int i2, List<?> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzja.zza(i2, 0L) * size;
    }

    public static int zze(int i2, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzja.zzf(i2) * size) + zze(list);
    }

    public static int zzf(int i2, List<Long> list, boolean z6) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzja.zzf(i2) * list.size()) + zzf(list);
    }

    public static int zzg(int i2, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzja.zzf(i2) * size) + zzg(list);
    }

    public static int zzh(int i2, List<Long> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzja.zzf(i2) * size) + zzh(list);
    }

    public static int zzi(int i2, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzja.zzf(i2) * size) + zzi(list);
    }

    public static int zzj(int i2, List<Long> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzja.zzf(i2) * size) + zzj(list);
    }

    public static void zzk(int i2, List<Integer> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzk(i2, list, z6);
    }

    public static void zzl(int i2, List<Long> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzl(i2, list, z6);
    }

    public static void zzm(int i2, List<Integer> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzm(i2, list, z6);
    }

    public static void zzn(int i2, List<Long> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzn(i2, list, z6);
    }

    public static int zza(List<?> list) {
        return list.size();
    }

    public static int zzc(List<?> list) {
        return list.size() << 2;
    }

    public static int zzd(List<?> list) {
        return list.size() << 3;
    }

    public static int zza(int i2, List<zzij> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzf = zzja.zzf(i2) * size;
        for (int i7 = 0; i7 < list.size(); i7++) {
            zzf += zzja.zza(list.get(i7));
        }
        return zzf;
    }

    public static int zzb(List<Integer> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzju)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zzja.zza(list.get(i2).intValue());
                i2++;
            }
            return i7;
        }
        zzju zzjuVar = (zzju) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zzja.zza(zzjuVar.zzb(i2));
            i2++;
        }
        return i8;
    }

    private static zzmt<?, ?> zzc() {
        try {
            Class<?> zze = zze();
            if (zze == null) {
                return null;
            }
            return (zzmt) zze.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzd() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int zze(List<Integer> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzju)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zzja.zzc(list.get(i2).intValue());
                i2++;
            }
            return i7;
        }
        zzju zzjuVar = (zzju) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zzja.zzc(zzjuVar.zzb(i2));
            i2++;
        }
        return i8;
    }

    public static int zzf(List<Long> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkr)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zzja.zzb(list.get(i2).longValue());
                i2++;
            }
            return i7;
        }
        zzkr zzkrVar = (zzkr) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zzja.zzb(zzkrVar.zzb(i2));
            i2++;
        }
        return i8;
    }

    public static int zzg(List<Integer> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzju)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zzja.zze(list.get(i2).intValue());
                i2++;
            }
            return i7;
        }
        zzju zzjuVar = (zzju) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zzja.zze(zzjuVar.zzb(i2));
            i2++;
        }
        return i8;
    }

    public static int zzh(List<Long> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkr)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zzja.zzd(list.get(i2).longValue());
                i2++;
            }
            return i7;
        }
        zzkr zzkrVar = (zzkr) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zzja.zzd(zzkrVar.zzb(i2));
            i2++;
        }
        return i8;
    }

    public static int zzi(List<Integer> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzju)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zzja.zzg(list.get(i2).intValue());
                i2++;
            }
            return i7;
        }
        zzju zzjuVar = (zzju) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zzja.zzg(zzjuVar.zzb(i2));
            i2++;
        }
        return i8;
    }

    public static int zzj(List<Long> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkr)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zzja.zze(list.get(i2).longValue());
                i2++;
            }
            return i7;
        }
        zzkr zzkrVar = (zzkr) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zzja.zze(zzkrVar.zzb(i2));
            i2++;
        }
        return i8;
    }

    public static void zzd(int i2, List<Integer> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzd(i2, list, z6);
    }

    public static void zzc(int i2, List<Integer> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzc(i2, list, z6);
    }

    public static int zza(int i2, List<zzlg> list, zzly zzlyVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            i7 += zzja.zza(i2, list.get(i8), zzlyVar);
        }
        return i7;
    }

    public static int zzb(int i2, List<?> list, zzly zzlyVar) {
        int zza2;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzf = zzja.zzf(i2) * size;
        for (int i7 = 0; i7 < size; i7++) {
            Object obj = list.get(i7);
            if (obj instanceof zzkk) {
                zza2 = zzja.zza((zzkk) obj);
            } else {
                zza2 = zzja.zza((zzlg) obj, zzlyVar);
            }
            zzf = zza2 + zzf;
        }
        return zzf;
    }

    private static Class<?> zze() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zzf(int i2, List<Float> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzf(i2, list, z6);
    }

    public static void zzg(int i2, List<Integer> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzg(i2, list, z6);
    }

    public static void zzh(int i2, List<Long> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzh(i2, list, z6);
    }

    public static void zzi(int i2, List<Integer> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzi(i2, list, z6);
    }

    public static void zzj(int i2, List<Long> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzj(i2, list, z6);
    }

    public static int zza(int i2, Object obj, zzly zzlyVar) {
        if (obj instanceof zzkk) {
            return zzja.zzb(i2, (zzkk) obj);
        }
        return zzja.zzb(i2, (zzlg) obj, zzlyVar);
    }

    public static void zze(int i2, List<Long> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zze(i2, list, z6);
    }

    public static zzmt<?, ?> zza() {
        return zzb;
    }

    public static <UT, UB> UB zza(Object obj, int i2, List<Integer> list, zzjx zzjxVar, UB ub, zzmt<UT, UB> zzmtVar) {
        if (zzjxVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i7 = 0;
            for (int i8 = 0; i8 < size; i8++) {
                Integer num = list.get(i8);
                int intValue = num.intValue();
                if (zzjxVar.zza(intValue)) {
                    if (i8 != i7) {
                        list.set(i7, num);
                    }
                    i7++;
                } else {
                    ub = (UB) zza(obj, i2, intValue, ub, zzmtVar);
                }
            }
            if (i7 != size) {
                list.subList(i7, size).clear();
            }
            return ub;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            int intValue2 = it.next().intValue();
            if (!zzjxVar.zza(intValue2)) {
                ub = (UB) zza(obj, i2, intValue2, ub, zzmtVar);
                it.remove();
            }
        }
        return ub;
    }

    public static int zzb(int i2, List<?> list) {
        int zza2;
        int zza3;
        int size = list.size();
        int i7 = 0;
        if (size == 0) {
            return 0;
        }
        int zzf = zzja.zzf(i2) * size;
        if (!(list instanceof zzkm)) {
            while (i7 < size) {
                Object obj = list.get(i7);
                if (obj instanceof zzij) {
                    zza2 = zzja.zza((zzij) obj);
                } else {
                    zza2 = zzja.zza((String) obj);
                }
                zzf = zza2 + zzf;
                i7++;
            }
            return zzf;
        }
        zzkm zzkmVar = (zzkm) list;
        while (i7 < size) {
            Object zzb2 = zzkmVar.zzb(i7);
            if (zzb2 instanceof zzij) {
                zza3 = zzja.zza((zzij) zzb2);
            } else {
                zza3 = zzja.zza((String) zzb2);
            }
            zzf = zza3 + zzf;
            i7++;
        }
        return zzf;
    }

    public static <UT, UB> UB zza(Object obj, int i2, int i7, UB ub, zzmt<UT, UB> zzmtVar) {
        if (ub == null) {
            ub = zzmtVar.zzc(obj);
        }
        zzmtVar.zzb(ub, i2, i7);
        return ub;
    }

    public static zzmt<?, ?> zzb() {
        return zzc;
    }

    public static <T, FT extends zzjl<FT>> void zza(zzji<FT> zzjiVar, T t6, T t7) {
        zzjj<FT> zza2 = zzjiVar.zza(t7);
        if (zza2.zza.isEmpty()) {
            return;
        }
        zzjiVar.zzb(t6).zza(zza2);
    }

    public static void zzb(int i2, List<Double> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzb(i2, list, z6);
    }

    public static void zzb(int i2, List<?> list, zznt zzntVar, zzly zzlyVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzb(i2, list, zzlyVar);
    }

    public static <T> void zza(zzkz zzkzVar, T t6, T t7, long j7) {
        zzmz.zza(t6, j7, zzkzVar.zza(zzmz.zze(t6, j7), zzmz.zze(t7, j7)));
    }

    public static void zzb(int i2, List<String> list, zznt zzntVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zzb(i2, list);
    }

    public static <T, UT, UB> void zza(zzmt<UT, UB> zzmtVar, T t6, T t7) {
        zzmtVar.zzc(t6, zzmtVar.zza(zzmtVar.zzd(t6), zzmtVar.zzd(t7)));
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (!zzjt.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zza(int i2, List<Boolean> list, zznt zzntVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zza(i2, list, z6);
    }

    public static void zza(int i2, List<zzij> list, zznt zzntVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zza(i2, list);
    }

    public static void zza(int i2, List<?> list, zznt zzntVar, zzly zzlyVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzntVar.zza(i2, list, zzlyVar);
    }

    public static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
