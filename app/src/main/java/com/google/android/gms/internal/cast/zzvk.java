package com.google.android.gms.internal.cast;

import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
final class zzvk {
    public static final /* synthetic */ int zza = 0;
    private static final Class zzb;
    private static final zzvz zzc;
    private static final zzvz zzd;

    static {
        Class<?> cls;
        Class<?> cls2;
        zzvz zzvzVar = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zzb = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                zzvzVar = (zzvz) cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused3) {
            }
        }
        zzc = zzvzVar;
        zzd = new zzwb();
    }

    public static void zzA(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzA(i2, list, z6);
    }

    public static void zzB(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzC(i2, list, z6);
    }

    public static void zzC(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzG(i2, list, z6);
    }

    public static void zzD(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzI(i2, list, z6);
    }

    public static boolean zzE(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int zza(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztq)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zztc.zzu(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return i7;
        }
        zztq zztqVar = (zztq) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zztc.zzu(zztqVar.zzd(i2));
            i2++;
        }
        return i8;
    }

    public static int zzb(int i2, List list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zztc.zzx(i2 << 3) + 4) * size;
    }

    public static int zzc(List list) {
        return list.size() * 4;
    }

    public static int zzd(int i2, List list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zztc.zzx(i2 << 3) + 8) * size;
    }

    public static int zze(List list) {
        return list.size() * 8;
    }

    public static int zzf(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztq)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zztc.zzu(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return i7;
        }
        zztq zztqVar = (zztq) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zztc.zzu(zztqVar.zzd(i2));
            i2++;
        }
        return i8;
    }

    public static int zzg(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzum)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zztc.zzy(((Long) list.get(i2)).longValue());
                i2++;
            }
            return i7;
        }
        zzum zzumVar = (zzum) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zztc.zzy(zzumVar.zzd(i2));
            i2++;
        }
        return i8;
    }

    public static int zzh(int i2, Object obj, zzvi zzviVar) {
        int i7 = i2 << 3;
        if (!(obj instanceof zzud)) {
            return zztc.zzx(i7) + zztc.zzv((zzux) obj, zzviVar);
        }
        int i8 = zztc.zzb;
        int zza2 = ((zzud) obj).zza();
        return zztc.zzx(i7) + zztc.zzx(zza2) + zza2;
    }

    public static int zzi(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztq)) {
            int i7 = 0;
            while (i2 < size) {
                int intValue = ((Integer) list.get(i2)).intValue();
                i7 += zztc.zzx((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
            return i7;
        }
        zztq zztqVar = (zztq) list;
        int i8 = 0;
        while (i2 < size) {
            int zzd2 = zztqVar.zzd(i2);
            i8 += zztc.zzx((zzd2 >> 31) ^ (zzd2 + zzd2));
            i2++;
        }
        return i8;
    }

    public static int zzj(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzum)) {
            int i7 = 0;
            while (i2 < size) {
                long longValue = ((Long) list.get(i2)).longValue();
                i7 += zztc.zzy((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
            return i7;
        }
        zzum zzumVar = (zzum) list;
        int i8 = 0;
        while (i2 < size) {
            long zzd2 = zzumVar.zzd(i2);
            i8 += zztc.zzy((zzd2 >> 63) ^ (zzd2 + zzd2));
            i2++;
        }
        return i8;
    }

    public static int zzk(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztq)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zztc.zzx(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return i7;
        }
        zztq zztqVar = (zztq) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zztc.zzx(zztqVar.zzd(i2));
            i2++;
        }
        return i8;
    }

    public static int zzl(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzum)) {
            int i7 = 0;
            while (i2 < size) {
                i7 += zztc.zzy(((Long) list.get(i2)).longValue());
                i2++;
            }
            return i7;
        }
        zzum zzumVar = (zzum) list;
        int i8 = 0;
        while (i2 < size) {
            i8 += zztc.zzy(zzumVar.zzd(i2));
            i2++;
        }
        return i8;
    }

    public static zzvz zzm() {
        return zzc;
    }

    public static zzvz zzn() {
        return zzd;
    }

    public static void zzo(zzvz zzvzVar, Object obj, Object obj2) {
        zzvzVar.zzf(obj, zzvzVar.zzd(zzvzVar.zzc(obj), zzvzVar.zzc(obj2)));
    }

    public static void zzp(Class cls) {
        Class cls2;
        if (!zztp.class.isAssignableFrom(cls) && (cls2 = zzb) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzq(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzc(i2, list, z6);
    }

    public static void zzr(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzg(i2, list, z6);
    }

    public static void zzs(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzi(i2, list, z6);
    }

    public static void zzt(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzk(i2, list, z6);
    }

    public static void zzu(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzm(i2, list, z6);
    }

    public static void zzv(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzo(i2, list, z6);
    }

    public static void zzw(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzr(i2, list, z6);
    }

    public static void zzx(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzt(i2, list, z6);
    }

    public static void zzy(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzw(i2, list, z6);
    }

    public static void zzz(int i2, List list, zzwq zzwqVar, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzy(i2, list, z6);
    }
}
