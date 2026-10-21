package com.google.android.gms.internal.cast;

import A.i;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import b.c;
import cz.msebera.android.httpclient.impl.client.cache.CacheConfig;
import cz.msebera.android.httpclient.util.LangUtils;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
final class zzva<T> implements zzvi<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzwj.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final zzux zze;
    private final boolean zzf;
    private final int[] zzg;
    private final int zzh;
    private final zzul zzi;
    private final zzvz zzj;
    private final zztf zzk;
    private final zzvc zzl;
    private final zzus zzm;

    private zzva(int[] iArr, Object[] objArr, int i2, int i7, zzux zzuxVar, int i8, boolean z6, int[] iArr2, int i9, int i10, zzvc zzvcVar, zzul zzulVar, zzvz zzvzVar, zztf zztfVar, zzus zzusVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        boolean z7 = false;
        if (zztfVar != null && zztfVar.zzc(zzuxVar)) {
            z7 = true;
        }
        this.zzf = z7;
        this.zzg = iArr2;
        this.zzh = i9;
        this.zzl = zzvcVar;
        this.zzi = zzulVar;
        this.zzj = zzvzVar;
        this.zzk = zztfVar;
        this.zze = zzuxVar;
        this.zzm = zzusVar;
    }

    private static boolean zzA(Object obj, int i2, zzvi zzviVar) {
        return zzviVar.zzh(zzwj.zzf(obj, i2 & 1048575));
    }

    private static boolean zzB(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zztp) {
            return ((zztp) obj).zzK();
        }
        return true;
    }

    private final boolean zzC(Object obj, int i2, int i7) {
        return zzwj.zzc(obj, (long) (zzm(i7) & 1048575)) == i2;
    }

    private static boolean zzD(Object obj, long j7) {
        return ((Boolean) zzwj.zzf(obj, j7)).booleanValue();
    }

    private static final void zzE(int i2, Object obj, zzwq zzwqVar) throws IOException {
        if (obj instanceof String) {
            zzwqVar.zzD(i2, (String) obj);
        } else {
            zzwqVar.zzd(i2, (zzsu) obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x026e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.cast.zzva zzi(java.lang.Class r32, com.google.android.gms.internal.cast.zzuu r33, com.google.android.gms.internal.cast.zzvc r34, com.google.android.gms.internal.cast.zzul r35, com.google.android.gms.internal.cast.zzvz r36, com.google.android.gms.internal.cast.zztf r37, com.google.android.gms.internal.cast.zzus r38) {
        /*
            Method dump skipped, instructions count: 1050
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzva.zzi(java.lang.Class, com.google.android.gms.internal.cast.zzuu, com.google.android.gms.internal.cast.zzvc, com.google.android.gms.internal.cast.zzul, com.google.android.gms.internal.cast.zzvz, com.google.android.gms.internal.cast.zztf, com.google.android.gms.internal.cast.zzus):com.google.android.gms.internal.cast.zzva");
    }

    private static double zzj(Object obj, long j7) {
        return ((Double) zzwj.zzf(obj, j7)).doubleValue();
    }

    private static float zzk(Object obj, long j7) {
        return ((Float) zzwj.zzf(obj, j7)).floatValue();
    }

    private static int zzl(Object obj, long j7) {
        return ((Integer) zzwj.zzf(obj, j7)).intValue();
    }

    private final int zzm(int i2) {
        return this.zzc[i2 + 2];
    }

    private static int zzn(int i2) {
        return (i2 >>> 20) & 255;
    }

    private final int zzo(int i2) {
        return this.zzc[i2 + 1];
    }

    private static long zzp(Object obj, long j7) {
        return ((Long) zzwj.zzf(obj, j7)).longValue();
    }

    private final zzvi zzq(int i2) {
        Object[] objArr = this.zzd;
        int i7 = i2 / 3;
        int i8 = i7 + i7;
        zzvi zzviVar = (zzvi) objArr[i8];
        if (zzviVar != null) {
            return zzviVar;
        }
        zzvi zzb2 = zzvf.zza().zzb((Class) objArr[i8 + 1]);
        this.zzd[i8] = zzb2;
        return zzb2;
    }

    private final Object zzr(int i2) {
        int i7 = i2 / 3;
        return this.zzd[i7 + i7];
    }

    private static Field zzs(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder u6 = i.u("Field ", str, " for ", name, " not found. Known fields are ");
            u6.append(arrays);
            throw new RuntimeException(u6.toString());
        }
    }

    private final void zzt(Object obj, Object obj2, int i2) {
        if (zzy(obj2, i2)) {
            int zzo = zzo(i2) & 1048575;
            Unsafe unsafe = zzb;
            long j7 = zzo;
            Object object = unsafe.getObject(obj2, j7);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i2] + " is present but null: " + obj2.toString());
            }
            zzvi zzq = zzq(i2);
            if (!zzy(obj, i2)) {
                if (zzB(object)) {
                    Object zzc = zzq.zzc();
                    zzq.zze(zzc, object);
                    unsafe.putObject(obj, j7, zzc);
                } else {
                    unsafe.putObject(obj, j7, object);
                }
                zzv(obj, i2);
                return;
            }
            Object object2 = unsafe.getObject(obj, j7);
            if (!zzB(object2)) {
                Object zzc2 = zzq.zzc();
                zzq.zze(zzc2, object2);
                unsafe.putObject(obj, j7, zzc2);
                object2 = zzc2;
            }
            zzq.zze(object2, object);
        }
    }

    private final void zzu(Object obj, Object obj2, int i2) {
        int i7 = this.zzc[i2];
        if (zzC(obj2, i7, i2)) {
            int zzo = zzo(i2) & 1048575;
            Unsafe unsafe = zzb;
            long j7 = zzo;
            Object object = unsafe.getObject(obj2, j7);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i2] + " is present but null: " + obj2.toString());
            }
            zzvi zzq = zzq(i2);
            if (!zzC(obj, i7, i2)) {
                if (zzB(object)) {
                    Object zzc = zzq.zzc();
                    zzq.zze(zzc, object);
                    unsafe.putObject(obj, j7, zzc);
                } else {
                    unsafe.putObject(obj, j7, object);
                }
                zzw(obj, i7, i2);
                return;
            }
            Object object2 = unsafe.getObject(obj, j7);
            if (!zzB(object2)) {
                Object zzc2 = zzq.zzc();
                zzq.zze(zzc2, object2);
                unsafe.putObject(obj, j7, zzc2);
                object2 = zzc2;
            }
            zzq.zze(object2, object);
        }
    }

    private final void zzv(Object obj, int i2) {
        int zzm = zzm(i2);
        long j7 = 1048575 & zzm;
        if (j7 == 1048575) {
            return;
        }
        zzwj.zzq(obj, j7, (1 << (zzm >>> 20)) | zzwj.zzc(obj, j7));
    }

    private final void zzw(Object obj, int i2, int i7) {
        zzwj.zzq(obj, zzm(i7) & 1048575, i2);
    }

    private final boolean zzx(Object obj, Object obj2, int i2) {
        return zzy(obj, i2) == zzy(obj2, i2);
    }

    private final boolean zzy(Object obj, int i2) {
        int zzm = zzm(i2);
        long j7 = zzm & 1048575;
        if (j7 != 1048575) {
            return (zzwj.zzc(obj, j7) & (1 << (zzm >>> 20))) != 0;
        }
        int zzo = zzo(i2);
        long j8 = zzo & 1048575;
        switch (zzn(zzo)) {
            case 0:
                return Double.doubleToRawLongBits(zzwj.zza(obj, j8)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzwj.zzb(obj, j8)) != 0;
            case 2:
                return zzwj.zzd(obj, j8) != 0;
            case 3:
                return zzwj.zzd(obj, j8) != 0;
            case 4:
                return zzwj.zzc(obj, j8) != 0;
            case 5:
                return zzwj.zzd(obj, j8) != 0;
            case 6:
                return zzwj.zzc(obj, j8) != 0;
            case 7:
                return zzwj.zzw(obj, j8);
            case 8:
                Object zzf = zzwj.zzf(obj, j8);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                }
                if (zzf instanceof zzsu) {
                    return !zzsu.zzb.equals(zzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzwj.zzf(obj, j8) != null;
            case 10:
                return !zzsu.zzb.equals(zzwj.zzf(obj, j8));
            case 11:
                return zzwj.zzc(obj, j8) != 0;
            case 12:
                return zzwj.zzc(obj, j8) != 0;
            case 13:
                return zzwj.zzc(obj, j8) != 0;
            case 14:
                return zzwj.zzd(obj, j8) != 0;
            case 15:
                return zzwj.zzc(obj, j8) != 0;
            case 16:
                return zzwj.zzd(obj, j8) != 0;
            case 17:
                return zzwj.zzf(obj, j8) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzz(Object obj, int i2, int i7, int i8, int i9) {
        return i7 == 1048575 ? zzy(obj, i2) : (i8 & i9) != 0;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final int zza(Object obj) {
        int i2;
        int zzh;
        int zzt;
        int zzx;
        int size;
        int zzl;
        int zzx2;
        int zzx3;
        int zzx4;
        int zze;
        int zzx5;
        int zzx6;
        int i7;
        int i8;
        zzva<T> zzvaVar = this;
        Object obj2 = obj;
        Unsafe unsafe = zzb;
        int i9 = 1048575;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 1048575;
        while (i10 < zzvaVar.zzc.length) {
            int zzo = zzvaVar.zzo(i10);
            int zzn = zzn(zzo);
            int[] iArr = zzvaVar.zzc;
            int i14 = iArr[i10];
            int i15 = iArr[i10 + 2];
            int i16 = i15 & i9;
            if (zzn <= 17) {
                if (i16 != i13) {
                    i11 = i16 == i9 ? 0 : unsafe.getInt(obj2, i16);
                    i13 = i16;
                }
                i2 = 1 << (i15 >>> 20);
            } else {
                i2 = 0;
            }
            int i17 = zzo & i9;
            if (zzn >= zztk.zzJ.zza()) {
                zztk.zzW.zza();
            }
            long j7 = i17;
            switch (zzn) {
                case 0:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, 8, i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 1:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, 4, i12);
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i10 += 3;
                    i9 = 1048575;
                case 2:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, zztc.zzy(unsafe.getLong(obj2, j7)), i12);
                    }
                    zzvaVar = this;
                    i10 += 3;
                    i9 = 1048575;
                case 3:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, zztc.zzy(unsafe.getLong(obj2, j7)), i12);
                    }
                    zzvaVar = this;
                    i10 += 3;
                    i9 = 1048575;
                case 4:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, zztc.zzu(unsafe.getInt(obj2, j7)), i12);
                    }
                    zzvaVar = this;
                    i10 += 3;
                    i9 = 1048575;
                case 5:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, 8, i12);
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i10 += 3;
                    i9 = 1048575;
                case 6:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, 4, i12);
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i10 += 3;
                    i9 = 1048575;
                case 7:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, 1, i12);
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i10 += 3;
                    i9 = 1048575;
                case 8:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        int i18 = i14 << 3;
                        Object object = unsafe.getObject(obj2, j7);
                        if (object instanceof zzsu) {
                            int i19 = zztc.zzb;
                            int zzd = ((zzsu) object).zzd();
                            i12 = c.b(i18, zztc.zzx(zzd) + zzd, i12);
                        } else {
                            i12 = c.b(i18, zztc.zzw((String) object), i12);
                        }
                    }
                    zzvaVar = this;
                    i10 += 3;
                    i9 = 1048575;
                case 9:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        zzh = zzvk.zzh(i14, unsafe.getObject(obj2, j7), zzvaVar.zzq(i10));
                        i12 += zzh;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 10:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        zzsu zzsuVar = (zzsu) unsafe.getObject(obj2, j7);
                        int i20 = zztc.zzb;
                        int zzd2 = zzsuVar.zzd();
                        i12 = c.b(i14 << 3, zztc.zzx(zzd2) + zzd2, i12);
                    }
                    zzvaVar = this;
                    i10 += 3;
                    i9 = 1048575;
                case 11:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, zztc.zzx(unsafe.getInt(obj2, j7)), i12);
                    }
                    zzvaVar = this;
                    i10 += 3;
                    i9 = 1048575;
                case 12:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, zztc.zzu(unsafe.getInt(obj2, j7)), i12);
                    }
                    zzvaVar = this;
                    i10 += 3;
                    i9 = 1048575;
                case 13:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, 4, i12);
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i10 += 3;
                    i9 = 1048575;
                case 14:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        i12 = c.b(i14 << 3, 8, i12);
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i10 += 3;
                    i9 = 1048575;
                case 15:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        int i21 = unsafe.getInt(obj2, j7);
                        i12 = c.b((i21 >> 31) ^ (i21 + i21), zztc.zzx(i14 << 3), i12);
                    }
                    zzvaVar = this;
                    i10 += 3;
                    i9 = 1048575;
                case 16:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        long j8 = unsafe.getLong(obj2, j7);
                        i12 += zztc.zzy((j8 >> 63) ^ (j8 + j8)) + zztc.zzx(i14 << 3);
                    }
                    zzvaVar = this;
                    i10 += 3;
                    i9 = 1048575;
                case 17:
                    if (zzvaVar.zzz(obj2, i10, i13, i11, i2)) {
                        zzt = zztc.zzt(i14, (zzux) unsafe.getObject(obj2, j7), zzvaVar.zzq(i10));
                        i12 += zzt;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 18:
                    zzh = zzvk.zzd(i14, (List) unsafe.getObject(obj2, j7), false);
                    i12 += zzh;
                    i10 += 3;
                    i9 = 1048575;
                case 19:
                    zzh = zzvk.zzb(i14, (List) unsafe.getObject(obj2, j7), false);
                    i12 += zzh;
                    i10 += 3;
                    i9 = 1048575;
                case 20:
                    List list = (List) unsafe.getObject(obj2, j7);
                    int i22 = zzvk.zza;
                    if (list.size() != 0) {
                        zzx = (zztc.zzx(i14 << 3) * list.size()) + zzvk.zzg(list);
                        i12 += zzx;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx = 0;
                    i12 += zzx;
                    i10 += 3;
                    i9 = 1048575;
                case 21:
                    List list2 = (List) unsafe.getObject(obj2, j7);
                    int i23 = zzvk.zza;
                    size = list2.size();
                    if (size != 0) {
                        zzl = zzvk.zzl(list2);
                        zzx2 = zztc.zzx(i14 << 3);
                        zzx3 = (zzx2 * size) + zzl;
                        i12 += zzx3;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx3 = 0;
                    i12 += zzx3;
                    i10 += 3;
                    i9 = 1048575;
                case 22:
                    List list3 = (List) unsafe.getObject(obj2, j7);
                    int i24 = zzvk.zza;
                    size = list3.size();
                    if (size != 0) {
                        zzl = zzvk.zzf(list3);
                        zzx2 = zztc.zzx(i14 << 3);
                        zzx3 = (zzx2 * size) + zzl;
                        i12 += zzx3;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx3 = 0;
                    i12 += zzx3;
                    i10 += 3;
                    i9 = 1048575;
                case 23:
                    zzh = zzvk.zzd(i14, (List) unsafe.getObject(obj2, j7), false);
                    i12 += zzh;
                    i10 += 3;
                    i9 = 1048575;
                case 24:
                    zzh = zzvk.zzb(i14, (List) unsafe.getObject(obj2, j7), false);
                    i12 += zzh;
                    i10 += 3;
                    i9 = 1048575;
                case 25:
                    List list4 = (List) unsafe.getObject(obj2, j7);
                    int i25 = zzvk.zza;
                    int size2 = list4.size();
                    if (size2 != 0) {
                        zzx = (zztc.zzx(i14 << 3) + 1) * size2;
                        i12 += zzx;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx = 0;
                    i12 += zzx;
                    i10 += 3;
                    i9 = 1048575;
                case 26:
                    List list5 = (List) unsafe.getObject(obj2, j7);
                    int i26 = zzvk.zza;
                    int size3 = list5.size();
                    if (size3 != 0) {
                        boolean z6 = list5 instanceof zzuf;
                        zzx3 = zztc.zzx(i14 << 3) * size3;
                        if (z6) {
                            zzuf zzufVar = (zzuf) list5;
                            for (int i27 = 0; i27 < size3; i27++) {
                                Object zze2 = zzufVar.zze(i27);
                                if (zze2 instanceof zzsu) {
                                    int zzd3 = ((zzsu) zze2).zzd();
                                    zzx3 = c.b(zzd3, zzd3, zzx3);
                                } else {
                                    zzx3 = zztc.zzw((String) zze2) + zzx3;
                                }
                            }
                        } else {
                            for (int i28 = 0; i28 < size3; i28++) {
                                Object obj3 = list5.get(i28);
                                if (obj3 instanceof zzsu) {
                                    int zzd4 = ((zzsu) obj3).zzd();
                                    zzx3 = c.b(zzd4, zzd4, zzx3);
                                } else {
                                    zzx3 = zztc.zzw((String) obj3) + zzx3;
                                }
                            }
                        }
                        i12 += zzx3;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx3 = 0;
                    i12 += zzx3;
                    i10 += 3;
                    i9 = 1048575;
                case 27:
                    List list6 = (List) unsafe.getObject(obj2, j7);
                    zzvi zzq = zzvaVar.zzq(i10);
                    int i29 = zzvk.zza;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        zzx4 = 0;
                    } else {
                        zzx4 = zztc.zzx(i14 << 3) * size4;
                        for (int i30 = 0; i30 < size4; i30++) {
                            Object obj4 = list6.get(i30);
                            if (obj4 instanceof zzud) {
                                int zza2 = ((zzud) obj4).zza();
                                zzx4 = c.b(zza2, zza2, zzx4);
                            } else {
                                zzx4 = zztc.zzv((zzux) obj4, zzq) + zzx4;
                            }
                        }
                    }
                    i12 += zzx4;
                    i10 += 3;
                    i9 = 1048575;
                case 28:
                    List list7 = (List) unsafe.getObject(obj2, j7);
                    int i31 = zzvk.zza;
                    int size5 = list7.size();
                    if (size5 != 0) {
                        zzx3 = zztc.zzx(i14 << 3) * size5;
                        for (int i32 = 0; i32 < list7.size(); i32++) {
                            int zzd5 = ((zzsu) list7.get(i32)).zzd();
                            zzx3 = c.b(zzd5, zzd5, zzx3);
                        }
                        i12 += zzx3;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx3 = 0;
                    i12 += zzx3;
                    i10 += 3;
                    i9 = 1048575;
                case 29:
                    List list8 = (List) unsafe.getObject(obj2, j7);
                    int i33 = zzvk.zza;
                    size = list8.size();
                    if (size != 0) {
                        zzl = zzvk.zzk(list8);
                        zzx2 = zztc.zzx(i14 << 3);
                        zzx3 = (zzx2 * size) + zzl;
                        i12 += zzx3;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx3 = 0;
                    i12 += zzx3;
                    i10 += 3;
                    i9 = 1048575;
                case 30:
                    List list9 = (List) unsafe.getObject(obj2, j7);
                    int i34 = zzvk.zza;
                    size = list9.size();
                    if (size != 0) {
                        zzl = zzvk.zza(list9);
                        zzx2 = zztc.zzx(i14 << 3);
                        zzx3 = (zzx2 * size) + zzl;
                        i12 += zzx3;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx3 = 0;
                    i12 += zzx3;
                    i10 += 3;
                    i9 = 1048575;
                case 31:
                    zzh = zzvk.zzb(i14, (List) unsafe.getObject(obj2, j7), false);
                    i12 += zzh;
                    i10 += 3;
                    i9 = 1048575;
                case 32:
                    zzh = zzvk.zzd(i14, (List) unsafe.getObject(obj2, j7), false);
                    i12 += zzh;
                    i10 += 3;
                    i9 = 1048575;
                case 33:
                    List list10 = (List) unsafe.getObject(obj2, j7);
                    int i35 = zzvk.zza;
                    size = list10.size();
                    if (size != 0) {
                        zzl = zzvk.zzi(list10);
                        zzx2 = zztc.zzx(i14 << 3);
                        zzx3 = (zzx2 * size) + zzl;
                        i12 += zzx3;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx3 = 0;
                    i12 += zzx3;
                    i10 += 3;
                    i9 = 1048575;
                case 34:
                    List list11 = (List) unsafe.getObject(obj2, j7);
                    int i36 = zzvk.zza;
                    size = list11.size();
                    if (size != 0) {
                        zzl = zzvk.zzj(list11);
                        zzx2 = zztc.zzx(i14 << 3);
                        zzx3 = (zzx2 * size) + zzl;
                        i12 += zzx3;
                        i10 += 3;
                        i9 = 1048575;
                    }
                    zzx3 = 0;
                    i12 += zzx3;
                    i10 += 3;
                    i9 = 1048575;
                case 35:
                    zze = zzvk.zze((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 36:
                    zze = zzvk.zzc((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case LangUtils.HASH_OFFSET /* 37 */:
                    zze = zzvk.zzg((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 38:
                    zze = zzvk.zzl((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 39:
                    zze = zzvk.zzf((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 40:
                    zze = zzvk.zze((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 41:
                    zze = zzvk.zzc((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 42:
                    List list12 = (List) unsafe.getObject(obj2, j7);
                    int i37 = zzvk.zza;
                    zze = list12.size();
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 43:
                    zze = zzvk.zzk((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 44:
                    zze = zzvk.zza((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 45:
                    zze = zzvk.zzc((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 46:
                    zze = zzvk.zze((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 47:
                    zze = zzvk.zzi((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 48:
                    zze = zzvk.zzj((List) unsafe.getObject(obj2, j7));
                    if (zze > 0) {
                        zzx5 = zztc.zzx(zze);
                        zzx6 = zztc.zzx(i14 << 3);
                        i7 = zzx6 + zzx5;
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 49:
                    List list13 = (List) unsafe.getObject(obj2, j7);
                    zzvi zzq2 = zzvaVar.zzq(i10);
                    int i38 = zzvk.zza;
                    int size6 = list13.size();
                    if (size6 == 0) {
                        i8 = 0;
                    } else {
                        i8 = 0;
                        for (int i39 = 0; i39 < size6; i39++) {
                            i8 += zztc.zzt(i14, (zzux) list13.get(i39), zzq2);
                        }
                    }
                    i12 += i8;
                    i10 += 3;
                    i9 = 1048575;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    zzur zzurVar = (zzur) unsafe.getObject(obj2, j7);
                    if (zzurVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzurVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 51:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, 8, i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 52:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, 4, i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 53:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, zztc.zzy(zzp(obj2, j7)), i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 54:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, zztc.zzy(zzp(obj2, j7)), i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 55:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, zztc.zzu(zzl(obj2, j7)), i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 56:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, 8, i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 57:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, 4, i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 58:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, 1, i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 59:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        int i40 = i14 << 3;
                        Object object2 = unsafe.getObject(obj2, j7);
                        if (object2 instanceof zzsu) {
                            int i41 = zztc.zzb;
                            int zzd6 = ((zzsu) object2).zzd();
                            i12 = c.b(i40, zztc.zzx(zzd6) + zzd6, i12);
                        } else {
                            i12 = c.b(i40, zztc.zzw((String) object2), i12);
                        }
                    }
                    i10 += 3;
                    i9 = 1048575;
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        zzh = zzvk.zzh(i14, unsafe.getObject(obj2, j7), zzvaVar.zzq(i10));
                        i12 += zzh;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 61:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        zzsu zzsuVar2 = (zzsu) unsafe.getObject(obj2, j7);
                        int i42 = zztc.zzb;
                        int zzd7 = zzsuVar2.zzd();
                        i12 = c.b(i14 << 3, zztc.zzx(zzd7) + zzd7, i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 62:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, zztc.zzx(zzl(obj2, j7)), i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 63:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, zztc.zzu(zzl(obj2, j7)), i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 64:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, 4, i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 65:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        i12 = c.b(i14 << 3, 8, i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 66:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        int zzl2 = zzl(obj2, j7);
                        i12 = c.b((zzl2 >> 31) ^ (zzl2 + zzl2), zztc.zzx(i14 << 3), i12);
                    }
                    i10 += 3;
                    i9 = 1048575;
                case 67:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        long zzp = zzp(obj2, j7);
                        zze = zztc.zzx(i14 << 3);
                        i7 = zztc.zzy((zzp >> 63) ^ (zzp + zzp));
                        i12 += i7 + zze;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                case 68:
                    if (zzvaVar.zzC(obj2, i14, i10)) {
                        zzt = zztc.zzt(i14, (zzux) unsafe.getObject(obj2, j7), zzvaVar.zzq(i10));
                        i12 += zzt;
                        i10 += 3;
                        i9 = 1048575;
                    } else {
                        i10 += 3;
                        i9 = 1048575;
                    }
                default:
                    i10 += 3;
                    i9 = 1048575;
            }
        }
        zzvz zzvzVar = zzvaVar.zzj;
        int zza3 = i12 + zzvzVar.zza(zzvzVar.zzc(obj2));
        if (!zzvaVar.zzf) {
            return zza3;
        }
        zzvaVar.zzk.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final int zzb(Object obj) {
        int i2;
        long doubleToLongBits;
        int i7;
        int floatToIntBits;
        int zzc;
        int i8;
        int i9 = 0;
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int zzo = zzo(i10);
            int[] iArr = this.zzc;
            int i11 = 1048575 & zzo;
            int zzn = zzn(zzo);
            int i12 = iArr[i10];
            long j7 = i11;
            int i13 = 37;
            switch (zzn) {
                case 0:
                    i2 = i9 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zzwj.zza(obj, j7));
                    byte[] bArr = zzty.zzd;
                    zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i9 = i2 + zzc;
                    break;
                case 1:
                    i7 = i9 * 53;
                    floatToIntBits = Float.floatToIntBits(zzwj.zzb(obj, j7));
                    i9 = floatToIntBits + i7;
                    break;
                case 2:
                    i2 = i9 * 53;
                    doubleToLongBits = zzwj.zzd(obj, j7);
                    byte[] bArr2 = zzty.zzd;
                    zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i9 = i2 + zzc;
                    break;
                case 3:
                    i2 = i9 * 53;
                    doubleToLongBits = zzwj.zzd(obj, j7);
                    byte[] bArr3 = zzty.zzd;
                    zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i9 = i2 + zzc;
                    break;
                case 4:
                    i2 = i9 * 53;
                    zzc = zzwj.zzc(obj, j7);
                    i9 = i2 + zzc;
                    break;
                case 5:
                    i2 = i9 * 53;
                    doubleToLongBits = zzwj.zzd(obj, j7);
                    byte[] bArr4 = zzty.zzd;
                    zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i9 = i2 + zzc;
                    break;
                case 6:
                    i2 = i9 * 53;
                    zzc = zzwj.zzc(obj, j7);
                    i9 = i2 + zzc;
                    break;
                case 7:
                    i7 = i9 * 53;
                    floatToIntBits = zzty.zza(zzwj.zzw(obj, j7));
                    i9 = floatToIntBits + i7;
                    break;
                case 8:
                    i7 = i9 * 53;
                    floatToIntBits = ((String) zzwj.zzf(obj, j7)).hashCode();
                    i9 = floatToIntBits + i7;
                    break;
                case 9:
                    i8 = i9 * 53;
                    Object zzf = zzwj.zzf(obj, j7);
                    if (zzf != null) {
                        i13 = zzf.hashCode();
                    }
                    i9 = i8 + i13;
                    break;
                case 10:
                    i7 = i9 * 53;
                    floatToIntBits = zzwj.zzf(obj, j7).hashCode();
                    i9 = floatToIntBits + i7;
                    break;
                case 11:
                    i2 = i9 * 53;
                    zzc = zzwj.zzc(obj, j7);
                    i9 = i2 + zzc;
                    break;
                case 12:
                    i2 = i9 * 53;
                    zzc = zzwj.zzc(obj, j7);
                    i9 = i2 + zzc;
                    break;
                case 13:
                    i2 = i9 * 53;
                    zzc = zzwj.zzc(obj, j7);
                    i9 = i2 + zzc;
                    break;
                case 14:
                    i2 = i9 * 53;
                    doubleToLongBits = zzwj.zzd(obj, j7);
                    byte[] bArr5 = zzty.zzd;
                    zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i9 = i2 + zzc;
                    break;
                case 15:
                    i2 = i9 * 53;
                    zzc = zzwj.zzc(obj, j7);
                    i9 = i2 + zzc;
                    break;
                case 16:
                    i2 = i9 * 53;
                    doubleToLongBits = zzwj.zzd(obj, j7);
                    byte[] bArr6 = zzty.zzd;
                    zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i9 = i2 + zzc;
                    break;
                case 17:
                    i8 = i9 * 53;
                    Object zzf2 = zzwj.zzf(obj, j7);
                    if (zzf2 != null) {
                        i13 = zzf2.hashCode();
                    }
                    i9 = i8 + i13;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case LangUtils.HASH_OFFSET /* 37 */:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i7 = i9 * 53;
                    floatToIntBits = zzwj.zzf(obj, j7).hashCode();
                    i9 = floatToIntBits + i7;
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    i7 = i9 * 53;
                    floatToIntBits = zzwj.zzf(obj, j7).hashCode();
                    i9 = floatToIntBits + i7;
                    break;
                case 51:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzj(obj, j7));
                        byte[] bArr7 = zzty.zzd;
                        zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzC(obj, i12, i10)) {
                        i7 = i9 * 53;
                        floatToIntBits = Float.floatToIntBits(zzk(obj, j7));
                        i9 = floatToIntBits + i7;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        doubleToLongBits = zzp(obj, j7);
                        byte[] bArr8 = zzty.zzd;
                        zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        doubleToLongBits = zzp(obj, j7);
                        byte[] bArr9 = zzty.zzd;
                        zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        zzc = zzl(obj, j7);
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        doubleToLongBits = zzp(obj, j7);
                        byte[] bArr10 = zzty.zzd;
                        zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        zzc = zzl(obj, j7);
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzC(obj, i12, i10)) {
                        i7 = i9 * 53;
                        floatToIntBits = zzty.zza(zzD(obj, j7));
                        i9 = floatToIntBits + i7;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzC(obj, i12, i10)) {
                        i7 = i9 * 53;
                        floatToIntBits = ((String) zzwj.zzf(obj, j7)).hashCode();
                        i9 = floatToIntBits + i7;
                        break;
                    } else {
                        break;
                    }
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (zzC(obj, i12, i10)) {
                        i7 = i9 * 53;
                        floatToIntBits = zzwj.zzf(obj, j7).hashCode();
                        i9 = floatToIntBits + i7;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzC(obj, i12, i10)) {
                        i7 = i9 * 53;
                        floatToIntBits = zzwj.zzf(obj, j7).hashCode();
                        i9 = floatToIntBits + i7;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        zzc = zzl(obj, j7);
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        zzc = zzl(obj, j7);
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        zzc = zzl(obj, j7);
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        doubleToLongBits = zzp(obj, j7);
                        byte[] bArr11 = zzty.zzd;
                        zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        zzc = zzl(obj, j7);
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzC(obj, i12, i10)) {
                        i2 = i9 * 53;
                        doubleToLongBits = zzp(obj, j7);
                        byte[] bArr12 = zzty.zzd;
                        zzc = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i9 = i2 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzC(obj, i12, i10)) {
                        i7 = i9 * 53;
                        floatToIntBits = zzwj.zzf(obj, j7).hashCode();
                        i9 = floatToIntBits + i7;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = this.zzj.zzc(obj).hashCode() + (i9 * 53);
        if (!this.zzf) {
            return hashCode;
        }
        this.zzk.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final Object zzc() {
        return ((zztp) this.zze).zzx();
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final void zzd(Object obj) {
        if (zzB(obj)) {
            if (obj instanceof zztp) {
                zztp zztpVar = (zztp) obj;
                zztpVar.zzI(Log.LOG_LEVEL_OFF);
                zztpVar.zza = 0;
                zztpVar.zzG();
            }
            int[] iArr = this.zzc;
            for (int i2 = 0; i2 < iArr.length; i2 += 3) {
                int zzo = zzo(i2);
                int i7 = 1048575 & zzo;
                int zzn = zzn(zzo);
                long j7 = i7;
                if (zzn != 9) {
                    if (zzn != 60 && zzn != 68) {
                        switch (zzn) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case LangUtils.HASH_OFFSET /* 37 */:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.zzi.zza(obj, j7);
                                break;
                            case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j7);
                                if (object != null) {
                                    ((zzur) object).zzb();
                                    unsafe.putObject(obj, j7, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzC(obj, this.zzc[i2], i2)) {
                        zzq(i2).zzd(zzb.getObject(obj, j7));
                    }
                }
                if (zzy(obj, i2)) {
                    zzq(i2).zzd(zzb.getObject(obj, j7));
                }
            }
            this.zzj.zze(obj);
            if (this.zzf) {
                this.zzk.zzb(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final void zze(Object obj, Object obj2) {
        if (!zzB(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        for (int i2 = 0; i2 < this.zzc.length; i2 += 3) {
            int zzo = zzo(i2);
            int i7 = 1048575 & zzo;
            int[] iArr = this.zzc;
            int zzn = zzn(zzo);
            int i8 = iArr[i2];
            long j7 = i7;
            switch (zzn) {
                case 0:
                    if (zzy(obj2, i2)) {
                        zzwj.zzo(obj, j7, zzwj.zza(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzy(obj2, i2)) {
                        zzwj.zzp(obj, j7, zzwj.zzb(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzy(obj2, i2)) {
                        zzwj.zzr(obj, j7, zzwj.zzd(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzy(obj2, i2)) {
                        zzwj.zzr(obj, j7, zzwj.zzd(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzy(obj2, i2)) {
                        zzwj.zzq(obj, j7, zzwj.zzc(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzy(obj2, i2)) {
                        zzwj.zzr(obj, j7, zzwj.zzd(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzy(obj2, i2)) {
                        zzwj.zzq(obj, j7, zzwj.zzc(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzy(obj2, i2)) {
                        zzwj.zzm(obj, j7, zzwj.zzw(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzy(obj2, i2)) {
                        zzwj.zzs(obj, j7, zzwj.zzf(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzt(obj, obj2, i2);
                    break;
                case 10:
                    if (zzy(obj2, i2)) {
                        zzwj.zzs(obj, j7, zzwj.zzf(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzy(obj2, i2)) {
                        zzwj.zzq(obj, j7, zzwj.zzc(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzy(obj2, i2)) {
                        zzwj.zzq(obj, j7, zzwj.zzc(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzy(obj2, i2)) {
                        zzwj.zzq(obj, j7, zzwj.zzc(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzy(obj2, i2)) {
                        zzwj.zzr(obj, j7, zzwj.zzd(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzy(obj2, i2)) {
                        zzwj.zzq(obj, j7, zzwj.zzc(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzy(obj2, i2)) {
                        zzwj.zzr(obj, j7, zzwj.zzd(obj2, j7));
                        zzv(obj, i2);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzt(obj, obj2, i2);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case LangUtils.HASH_OFFSET /* 37 */:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzi.zzb(obj, obj2, j7);
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    int i9 = zzvk.zza;
                    zzur zzurVar = (zzur) zzwj.zzf(obj, j7);
                    zzur zzurVar2 = (zzur) zzwj.zzf(obj2, j7);
                    if (!zzurVar2.isEmpty()) {
                        if (!zzurVar.zzd()) {
                            zzurVar = zzurVar.zza();
                        }
                        zzurVar.zzc(zzurVar2);
                    }
                    zzwj.zzs(obj, j7, zzurVar);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzC(obj2, i8, i2)) {
                        zzwj.zzs(obj, j7, zzwj.zzf(obj2, j7));
                        zzw(obj, i8, i2);
                        break;
                    } else {
                        break;
                    }
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    zzu(obj, obj2, i2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzC(obj2, i8, i2)) {
                        zzwj.zzs(obj, j7, zzwj.zzf(obj2, j7));
                        zzw(obj, i8, i2);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzu(obj, obj2, i2);
                    break;
            }
        }
        zzvk.zzo(this.zzj, obj, obj2);
        if (this.zzf) {
            this.zzk.zza(obj2);
            throw null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.cast.zzvi
    public final void zzf(Object obj, zzwq zzwqVar) throws IOException {
        int i2;
        zzva<T> zzvaVar = this;
        if (zzvaVar.zzf) {
            zzvaVar.zzk.zza(obj);
            throw null;
        }
        int[] iArr = zzvaVar.zzc;
        Unsafe unsafe = zzb;
        int i7 = 1048575;
        int i8 = 1048575;
        int i9 = 0;
        int i10 = 0;
        while (i9 < iArr.length) {
            int zzo = zzvaVar.zzo(i9);
            int[] iArr2 = zzvaVar.zzc;
            int zzn = zzn(zzo);
            int i11 = iArr2[i9];
            if (zzn <= 17) {
                int i12 = iArr2[i9 + 2];
                int i13 = i12 & i7;
                if (i13 != i8) {
                    i10 = i13 == i7 ? 0 : unsafe.getInt(obj, i13);
                    i8 = i13;
                }
                i2 = 1 << (i12 >>> 20);
            } else {
                i2 = 0;
            }
            long j7 = zzo & i7;
            switch (zzn) {
                case 0:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzf(i11, zzwj.zza(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 1:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzn(i11, zzwj.zzb(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 2:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzs(i11, unsafe.getLong(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 3:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzH(i11, unsafe.getLong(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 4:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzq(i11, unsafe.getInt(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 5:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzl(i11, unsafe.getLong(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 6:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzj(i11, unsafe.getInt(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 7:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzb(i11, zzwj.zzw(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 8:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzE(i11, unsafe.getObject(obj, j7), zzwqVar);
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 9:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzu(i11, unsafe.getObject(obj, j7), zzvaVar.zzq(i9));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 10:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzd(i11, (zzsu) unsafe.getObject(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 11:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzF(i11, unsafe.getInt(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 12:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzh(i11, unsafe.getInt(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 13:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzv(i11, unsafe.getInt(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 14:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzx(i11, unsafe.getLong(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 15:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzz(i11, unsafe.getInt(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 16:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzB(i11, unsafe.getLong(obj, j7));
                    }
                    zzvaVar = this;
                    i9 += 3;
                    i7 = 1048575;
                case 17:
                    if (zzvaVar.zzz(obj, i9, i8, i10, i2)) {
                        zzwqVar.zzp(i11, unsafe.getObject(obj, j7), zzvaVar.zzq(i9));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 18:
                    zzvk.zzr(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 19:
                    zzvk.zzv(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 20:
                    zzvk.zzx(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 21:
                    zzvk.zzD(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 22:
                    zzvk.zzw(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 23:
                    zzvk.zzu(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 24:
                    zzvk.zzt(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 25:
                    zzvk.zzq(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 26:
                    int i14 = zzvaVar.zzc[i9];
                    List list = (List) unsafe.getObject(obj, j7);
                    int i15 = zzvk.zza;
                    if (list != null && !list.isEmpty()) {
                        zzwqVar.zzE(i14, list);
                    }
                    i9 += 3;
                    i7 = 1048575;
                    break;
                case 27:
                    int i16 = zzvaVar.zzc[i9];
                    List list2 = (List) unsafe.getObject(obj, j7);
                    zzvi zzq = zzvaVar.zzq(i9);
                    int i17 = zzvk.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i18 = 0; i18 < list2.size(); i18++) {
                            ((zztd) zzwqVar).zzu(i16, list2.get(i18), zzq);
                        }
                    }
                    i9 += 3;
                    i7 = 1048575;
                    break;
                case 28:
                    int i19 = zzvaVar.zzc[i9];
                    List list3 = (List) unsafe.getObject(obj, j7);
                    int i20 = zzvk.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzwqVar.zze(i19, list3);
                    }
                    i9 += 3;
                    i7 = 1048575;
                    break;
                case 29:
                    zzvk.zzC(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 30:
                    zzvk.zzs(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 31:
                    zzvk.zzy(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 32:
                    zzvk.zzz(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 33:
                    zzvk.zzA(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 34:
                    zzvk.zzB(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, false);
                    i9 += 3;
                    i7 = 1048575;
                case 35:
                    zzvk.zzr(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 36:
                    zzvk.zzv(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case LangUtils.HASH_OFFSET /* 37 */:
                    zzvk.zzx(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 38:
                    zzvk.zzD(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 39:
                    zzvk.zzw(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 40:
                    zzvk.zzu(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 41:
                    zzvk.zzt(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 42:
                    zzvk.zzq(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 43:
                    zzvk.zzC(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 44:
                    zzvk.zzs(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 45:
                    zzvk.zzy(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 46:
                    zzvk.zzz(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 47:
                    zzvk.zzA(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 48:
                    zzvk.zzB(zzvaVar.zzc[i9], (List) unsafe.getObject(obj, j7), zzwqVar, true);
                    i9 += 3;
                    i7 = 1048575;
                case 49:
                    int i21 = zzvaVar.zzc[i9];
                    List list4 = (List) unsafe.getObject(obj, j7);
                    zzvi zzq2 = zzvaVar.zzq(i9);
                    int i22 = zzvk.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i23 = 0; i23 < list4.size(); i23++) {
                            ((zztd) zzwqVar).zzp(i21, list4.get(i23), zzq2);
                        }
                    }
                    i9 += 3;
                    i7 = 1048575;
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    if (unsafe.getObject(obj, j7) != null) {
                        throw null;
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 51:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzf(i11, zzj(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 52:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzn(i11, zzk(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 53:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzs(i11, zzp(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 54:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzH(i11, zzp(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 55:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzq(i11, zzl(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 56:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzl(i11, zzp(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 57:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzj(i11, zzl(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 58:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzb(i11, zzD(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 59:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzE(i11, unsafe.getObject(obj, j7), zzwqVar);
                    }
                    i9 += 3;
                    i7 = 1048575;
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzu(i11, unsafe.getObject(obj, j7), zzvaVar.zzq(i9));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 61:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzd(i11, (zzsu) unsafe.getObject(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 62:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzF(i11, zzl(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 63:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzh(i11, zzl(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 64:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzv(i11, zzl(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 65:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzx(i11, zzp(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 66:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzz(i11, zzl(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 67:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzB(i11, zzp(obj, j7));
                    }
                    i9 += 3;
                    i7 = 1048575;
                case 68:
                    if (zzvaVar.zzC(obj, i11, i9)) {
                        zzwqVar.zzp(i11, unsafe.getObject(obj, j7), zzvaVar.zzq(i9));
                    }
                    i9 += 3;
                    i7 = 1048575;
                default:
                    i9 += 3;
                    i7 = 1048575;
            }
        }
        zzvz zzvzVar = zzvaVar.zzj;
        zzvzVar.zzg(zzvzVar.zzc(obj), zzwqVar);
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final boolean zzg(Object obj, Object obj2) {
        boolean zzE;
        for (int i2 = 0; i2 < this.zzc.length; i2 += 3) {
            int zzo = zzo(i2);
            long j7 = zzo & 1048575;
            switch (zzn(zzo)) {
                case 0:
                    if (zzx(obj, obj2, i2) && Double.doubleToLongBits(zzwj.zza(obj, j7)) == Double.doubleToLongBits(zzwj.zza(obj2, j7))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzx(obj, obj2, i2) && Float.floatToIntBits(zzwj.zzb(obj, j7)) == Float.floatToIntBits(zzwj.zzb(obj2, j7))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzx(obj, obj2, i2) && zzwj.zzd(obj, j7) == zzwj.zzd(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzx(obj, obj2, i2) && zzwj.zzd(obj, j7) == zzwj.zzd(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzx(obj, obj2, i2) && zzwj.zzc(obj, j7) == zzwj.zzc(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzx(obj, obj2, i2) && zzwj.zzd(obj, j7) == zzwj.zzd(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzx(obj, obj2, i2) && zzwj.zzc(obj, j7) == zzwj.zzc(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzx(obj, obj2, i2) && zzwj.zzw(obj, j7) == zzwj.zzw(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzx(obj, obj2, i2) && zzvk.zzE(zzwj.zzf(obj, j7), zzwj.zzf(obj2, j7))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzx(obj, obj2, i2) && zzvk.zzE(zzwj.zzf(obj, j7), zzwj.zzf(obj2, j7))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzx(obj, obj2, i2) && zzvk.zzE(zzwj.zzf(obj, j7), zzwj.zzf(obj2, j7))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzx(obj, obj2, i2) && zzwj.zzc(obj, j7) == zzwj.zzc(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzx(obj, obj2, i2) && zzwj.zzc(obj, j7) == zzwj.zzc(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzx(obj, obj2, i2) && zzwj.zzc(obj, j7) == zzwj.zzc(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzx(obj, obj2, i2) && zzwj.zzd(obj, j7) == zzwj.zzd(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzx(obj, obj2, i2) && zzwj.zzc(obj, j7) == zzwj.zzc(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzx(obj, obj2, i2) && zzwj.zzd(obj, j7) == zzwj.zzd(obj2, j7)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzx(obj, obj2, i2) && zzvk.zzE(zzwj.zzf(obj, j7), zzwj.zzf(obj2, j7))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case LangUtils.HASH_OFFSET /* 37 */:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzE = zzvk.zzE(zzwj.zzf(obj, j7), zzwj.zzf(obj2, j7));
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    zzE = zzvk.zzE(zzwj.zzf(obj, j7), zzwj.zzf(obj2, j7));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzm = zzm(i2) & 1048575;
                    if (zzwj.zzc(obj, zzm) == zzwj.zzc(obj2, zzm) && zzvk.zzE(zzwj.zzf(obj, j7), zzwj.zzf(obj2, j7))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzE) {
                return false;
            }
        }
        if (!this.zzj.zzc(obj).equals(this.zzj.zzc(obj2))) {
            return false;
        }
        if (!this.zzf) {
            return true;
        }
        this.zzk.zza(obj);
        this.zzk.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final boolean zzh(Object obj) {
        int i2;
        int i7;
        int i8;
        int i9 = 0;
        int i10 = 0;
        int i11 = 1048575;
        while (i10 < this.zzh) {
            int[] iArr = this.zzg;
            int[] iArr2 = this.zzc;
            int i12 = iArr[i10];
            int i13 = iArr2[i12];
            int zzo = zzo(i12);
            int i14 = this.zzc[i12 + 2];
            int i15 = i14 & 1048575;
            int i16 = 1 << (i14 >>> 20);
            if (i15 != i11) {
                if (i15 != 1048575) {
                    i9 = zzb.getInt(obj, i15);
                }
                i2 = i9;
                i11 = i15;
            } else {
                i2 = i9;
            }
            if ((268435456 & zzo) != 0) {
                i7 = i12;
                i8 = i11;
                if (!zzz(obj, i7, i8, i2, i16)) {
                    return false;
                }
            } else {
                i7 = i12;
                i8 = i11;
            }
            int zzn = zzn(zzo);
            if (zzn != 9 && zzn != 17) {
                if (zzn != 27) {
                    if (zzn == 60 || zzn == 68) {
                        if (zzC(obj, i13, i7) && !zzA(obj, zzo, zzq(i7))) {
                            return false;
                        }
                    } else if (zzn != 49) {
                        if (zzn == 50 && !((zzur) zzwj.zzf(obj, zzo & 1048575)).isEmpty()) {
                            throw null;
                        }
                    }
                }
                List list = (List) zzwj.zzf(obj, zzo & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzvi zzq = zzq(i7);
                    for (int i17 = 0; i17 < list.size(); i17++) {
                        if (!zzq.zzh(list.get(i17))) {
                            return false;
                        }
                    }
                }
            } else if (zzz(obj, i7, i8, i2, i16) && !zzA(obj, zzo, zzq(i7))) {
                return false;
            }
            i10++;
            i11 = i8;
            i9 = i2;
        }
        if (!this.zzf) {
            return true;
        }
        this.zzk.zza(obj);
        throw null;
    }
}
