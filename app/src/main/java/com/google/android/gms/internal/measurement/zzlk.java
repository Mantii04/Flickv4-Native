package com.google.android.gms.internal.measurement;

import A.i;
import androidx.media3.common.C;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
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
final class zzlk<T> implements zzly<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzmz.zzb();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzlg zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final zzlr zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzlo zzo;
    private final zzkl zzp;
    private final zzmt<?, ?> zzq;
    private final zzji<?> zzr;
    private final zzkz zzs;

    private zzlk(int[] iArr, Object[] objArr, int i2, int i7, zzlg zzlgVar, zzlr zzlrVar, boolean z6, int[] iArr2, int i8, int i9, zzlo zzloVar, zzkl zzklVar, zzmt<?, ?> zzmtVar, zzji<?> zzjiVar, zzkz zzkzVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i2;
        this.zzf = i7;
        this.zzi = zzlgVar instanceof zzjt;
        this.zzj = zzlrVar;
        this.zzh = zzjiVar != null && zzjiVar.zza(zzlgVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i8;
        this.zzn = i9;
        this.zzo = zzloVar;
        this.zzp = zzklVar;
        this.zzq = zzmtVar;
        this.zzr = zzjiVar;
        this.zzg = zzlgVar;
        this.zzs = zzkzVar;
    }

    private static <T> double zza(T t6, long j7) {
        return ((Double) zzmz.zze(t6, j7)).doubleValue();
    }

    private static <T> float zzb(T t6, long j7) {
        return ((Float) zzmz.zze(t6, j7)).floatValue();
    }

    private static <T> int zzc(T t6, long j7) {
        return ((Integer) zzmz.zze(t6, j7)).intValue();
    }

    private static <T> long zzd(T t6, long j7) {
        return ((Long) zzmz.zze(t6, j7)).longValue();
    }

    private final zzly zze(int i2) {
        int i7 = (i2 / 3) << 1;
        zzly zzlyVar = (zzly) this.zzd[i7];
        if (zzlyVar != null) {
            return zzlyVar;
        }
        zzly<T> zza2 = zzlu.zza().zza((Class) this.zzd[i7 + 1]);
        this.zzd[i7] = zza2;
        return zza2;
    }

    private final Object zzf(int i2) {
        return this.zzd[(i2 / 3) << 1];
    }

    private static boolean zzg(int i2) {
        return (i2 & C.BUFFER_FLAG_LAST_SAMPLE) != 0;
    }

    private static int zza(byte[] bArr, int i2, int i7, zzng zzngVar, Class<?> cls, zzie zzieVar) throws IOException {
        switch (zzlj.zza[zzngVar.ordinal()]) {
            case 1:
                int zzd = zzif.zzd(bArr, i2, zzieVar);
                zzieVar.zzc = Boolean.valueOf(zzieVar.zzb != 0);
                return zzd;
            case 2:
                return zzif.zza(bArr, i2, zzieVar);
            case 3:
                zzieVar.zzc = Double.valueOf(zzif.zza(bArr, i2));
                return i2 + 8;
            case 4:
            case 5:
                zzieVar.zzc = Integer.valueOf(zzif.zzc(bArr, i2));
                return i2 + 4;
            case 6:
            case 7:
                zzieVar.zzc = Long.valueOf(zzif.zzd(bArr, i2));
                return i2 + 8;
            case 8:
                zzieVar.zzc = Float.valueOf(zzif.zzb(bArr, i2));
                return i2 + 4;
            case 9:
            case 10:
            case 11:
                int zzc = zzif.zzc(bArr, i2, zzieVar);
                zzieVar.zzc = Integer.valueOf(zzieVar.zza);
                return zzc;
            case 12:
            case 13:
                int zzd2 = zzif.zzd(bArr, i2, zzieVar);
                zzieVar.zzc = Long.valueOf(zzieVar.zzb);
                return zzd2;
            case 14:
                return zzif.zza(zzlu.zza().zza((Class) cls), bArr, i2, i7, zzieVar);
            case 15:
                int zzc2 = zzif.zzc(bArr, i2, zzieVar);
                zzieVar.zzc = Integer.valueOf(zziu.zza(zzieVar.zza));
                return zzc2;
            case 16:
                int zzd3 = zzif.zzd(bArr, i2, zzieVar);
                zzieVar.zzc = Long.valueOf(zziu.zza(zzieVar.zzb));
                return zzd3;
            case 17:
                return zzif.zzb(bArr, i2, zzieVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final int zzc(int i2) {
        return this.zzc[i2 + 1];
    }

    private final zzjx zzd(int i2) {
        return (zzjx) this.zzd[((i2 / 3) << 1) + 1];
    }

    private static void zzf(Object obj) {
        if (!zzg(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private static boolean zzg(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzjt) {
            return ((zzjt) obj).zzch();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final int zzb(T t6) {
        int i2;
        int zza2;
        int i7;
        int zzc;
        int length = this.zzc.length;
        int i8 = 0;
        for (int i9 = 0; i9 < length; i9 += 3) {
            int zzc2 = zzc(i9);
            int i10 = this.zzc[i9];
            long j7 = 1048575 & zzc2;
            int i11 = 37;
            switch ((zzc2 & 267386880) >>> 20) {
                case 0:
                    i2 = i8 * 53;
                    zza2 = zzjw.zza(Double.doubleToLongBits(zzmz.zza(t6, j7)));
                    i8 = zza2 + i2;
                    break;
                case 1:
                    i2 = i8 * 53;
                    zza2 = Float.floatToIntBits(zzmz.zzb(t6, j7));
                    i8 = zza2 + i2;
                    break;
                case 2:
                    i2 = i8 * 53;
                    zza2 = zzjw.zza(zzmz.zzd(t6, j7));
                    i8 = zza2 + i2;
                    break;
                case 3:
                    i2 = i8 * 53;
                    zza2 = zzjw.zza(zzmz.zzd(t6, j7));
                    i8 = zza2 + i2;
                    break;
                case 4:
                    i7 = i8 * 53;
                    zzc = zzmz.zzc(t6, j7);
                    i8 = i7 + zzc;
                    break;
                case 5:
                    i2 = i8 * 53;
                    zza2 = zzjw.zza(zzmz.zzd(t6, j7));
                    i8 = zza2 + i2;
                    break;
                case 6:
                    i7 = i8 * 53;
                    zzc = zzmz.zzc(t6, j7);
                    i8 = i7 + zzc;
                    break;
                case 7:
                    i2 = i8 * 53;
                    zza2 = zzjw.zza(zzmz.zzh(t6, j7));
                    i8 = zza2 + i2;
                    break;
                case 8:
                    i2 = i8 * 53;
                    zza2 = ((String) zzmz.zze(t6, j7)).hashCode();
                    i8 = zza2 + i2;
                    break;
                case 9:
                    Object zze = zzmz.zze(t6, j7);
                    if (zze != null) {
                        i11 = zze.hashCode();
                    }
                    i8 = (i8 * 53) + i11;
                    break;
                case 10:
                    i2 = i8 * 53;
                    zza2 = zzmz.zze(t6, j7).hashCode();
                    i8 = zza2 + i2;
                    break;
                case 11:
                    i7 = i8 * 53;
                    zzc = zzmz.zzc(t6, j7);
                    i8 = i7 + zzc;
                    break;
                case 12:
                    i7 = i8 * 53;
                    zzc = zzmz.zzc(t6, j7);
                    i8 = i7 + zzc;
                    break;
                case 13:
                    i7 = i8 * 53;
                    zzc = zzmz.zzc(t6, j7);
                    i8 = i7 + zzc;
                    break;
                case 14:
                    i2 = i8 * 53;
                    zza2 = zzjw.zza(zzmz.zzd(t6, j7));
                    i8 = zza2 + i2;
                    break;
                case 15:
                    i7 = i8 * 53;
                    zzc = zzmz.zzc(t6, j7);
                    i8 = i7 + zzc;
                    break;
                case 16:
                    i2 = i8 * 53;
                    zza2 = zzjw.zza(zzmz.zzd(t6, j7));
                    i8 = zza2 + i2;
                    break;
                case 17:
                    Object zze2 = zzmz.zze(t6, j7);
                    if (zze2 != null) {
                        i11 = zze2.hashCode();
                    }
                    i8 = (i8 * 53) + i11;
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
                    i2 = i8 * 53;
                    zza2 = zzmz.zze(t6, j7).hashCode();
                    i8 = zza2 + i2;
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    i2 = i8 * 53;
                    zza2 = zzmz.zze(t6, j7).hashCode();
                    i8 = zza2 + i2;
                    break;
                case 51:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzjw.zza(Double.doubleToLongBits(zza(t6, j7)));
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = Float.floatToIntBits(zzb(t6, j7));
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzjw.zza(zzd(t6, j7));
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzjw.zza(zzd(t6, j7));
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i7 = i8 * 53;
                        zzc = zzc(t6, j7);
                        i8 = i7 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzjw.zza(zzd(t6, j7));
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i7 = i8 * 53;
                        zzc = zzc(t6, j7);
                        i8 = i7 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzjw.zza(zze(t6, j7));
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = ((String) zzmz.zze(t6, j7)).hashCode();
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzmz.zze(t6, j7).hashCode();
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzmz.zze(t6, j7).hashCode();
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i7 = i8 * 53;
                        zzc = zzc(t6, j7);
                        i8 = i7 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i7 = i8 * 53;
                        zzc = zzc(t6, j7);
                        i8 = i7 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i7 = i8 * 53;
                        zzc = zzc(t6, j7);
                        i8 = i7 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzjw.zza(zzd(t6, j7));
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i7 = i8 * 53;
                        zzc = zzc(t6, j7);
                        i8 = i7 + zzc;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzjw.zza(zzd(t6, j7));
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzc((zzlk<T>) t6, i10, i9)) {
                        i2 = i8 * 53;
                        zza2 = zzmz.zze(t6, j7).hashCode();
                        i8 = zza2 + i2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = this.zzq.zzd(t6).hashCode() + (i8 * 53);
        return this.zzh ? (hashCode * 53) + this.zzr.zza(t6).hashCode() : hashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzly
    public final void zzc(T t6) {
        if (zzg(t6)) {
            if (t6 instanceof zzjt) {
                zzjt zzjtVar = (zzjt) t6;
                zzjtVar.zzc(Log.LOG_LEVEL_OFF);
                zzjtVar.zza = 0;
                zzjtVar.zzcg();
            }
            int length = this.zzc.length;
            for (int i2 = 0; i2 < length; i2 += 3) {
                int zzc = zzc(i2);
                long j7 = 1048575 & zzc;
                int i7 = (zzc & 267386880) >>> 20;
                if (i7 != 9) {
                    if (i7 != 60 && i7 != 68) {
                        switch (i7) {
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
                                this.zzp.zzb(t6, j7);
                                break;
                            case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(t6, j7);
                                if (object != null) {
                                    unsafe.putObject(t6, j7, this.zzs.zzc(object));
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzc((zzlk<T>) t6, this.zzc[i2], i2)) {
                        zze(i2).zzc(zzb.getObject(t6, j7));
                    }
                }
                if (zzc((zzlk<T>) t6, i2)) {
                    zze(i2).zzc(zzb.getObject(t6, j7));
                }
            }
            this.zzq.zzf(t6);
            if (this.zzh) {
                this.zzr.zzc(t6);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [com.google.android.gms.internal.measurement.zzly] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25, types: [com.google.android.gms.internal.measurement.zzly] */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30 */
    @Override // com.google.android.gms.internal.measurement.zzly
    public final boolean zzd(T t6) {
        int i2;
        int i7;
        zzlk<T> zzlkVar;
        T t7;
        int i8 = 1048575;
        int i9 = 0;
        int i10 = 0;
        while (i9 < this.zzm) {
            int i11 = this.zzl[i9];
            int i12 = this.zzc[i11];
            int zzc = zzc(i11);
            int i13 = this.zzc[i11 + 2];
            int i14 = i13 & 1048575;
            int i15 = 1 << (i13 >>> 20);
            if (i14 != i8) {
                if (i14 != 1048575) {
                    i10 = zzb.getInt(t6, i14);
                }
                i7 = i10;
                i2 = i14;
            } else {
                i2 = i8;
                i7 = i10;
            }
            if ((268435456 & zzc) != 0) {
                zzlkVar = this;
                t7 = t6;
                if (!zzlkVar.zza((zzlk<T>) t7, i11, i2, i7, i15)) {
                    return false;
                }
            } else {
                zzlkVar = this;
                t7 = t6;
            }
            int i16 = (267386880 & zzc) >>> 20;
            if (i16 != 9 && i16 != 17) {
                if (i16 != 27) {
                    if (i16 == 60 || i16 == 68) {
                        if (zzc((zzlk<T>) t7, i12, i11) && !zza((Object) t7, zzc, zze(i11))) {
                            return false;
                        }
                    } else if (i16 != 49) {
                        if (i16 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzd = zzlkVar.zzs.zzd(zzmz.zze(t7, zzc & 1048575));
                            if (zzd.isEmpty()) {
                                continue;
                            } else if (zzlkVar.zzs.zza(zzf(i11)).zzc.zzb() == zznq.MESSAGE) {
                                ?? r32 = 0;
                                for (Object obj : zzd.values()) {
                                    r32 = r32;
                                    if (r32 == 0) {
                                        r32 = zzlu.zza().zza((Class) obj.getClass());
                                    }
                                    if (!r32.zzd(obj)) {
                                        return false;
                                    }
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
                List list = (List) zzmz.zze(t7, zzc & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    ?? zze = zze(i11);
                    for (int i17 = 0; i17 < list.size(); i17++) {
                        if (!zze.zzd(list.get(i17))) {
                            return false;
                        }
                    }
                }
            } else if (zzlkVar.zza((zzlk<T>) t7, i11, i2, i7, i15) && !zza((Object) t7, zzc, zze(i11))) {
                return false;
            }
            i9++;
            t6 = t7;
            i8 = i2;
            i10 = i7;
        }
        return !this.zzh || this.zzr.zza(t6).zzg();
    }

    private static zzmw zze(Object obj) {
        zzjt zzjtVar = (zzjt) obj;
        zzmw zzmwVar = zzjtVar.zzb;
        if (zzmwVar != zzmw.zzc()) {
            return zzmwVar;
        }
        zzmw zzd = zzmw.zzd();
        zzjtVar.zzb = zzd;
        return zzd;
    }

    private static <T> boolean zze(T t6, long j7) {
        return ((Boolean) zzmz.zze(t6, j7)).booleanValue();
    }

    private final boolean zzc(T t6, T t7, int i2) {
        return zzc((zzlk<T>) t6, i2) == zzc((zzlk<T>) t7, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.measurement.zzly
    public final int zza(T t6) {
        int i2;
        int zza2;
        int zza3;
        int zzb2;
        int zza4;
        int zzd;
        int zzf;
        int zzg;
        zzlk<T> zzlkVar = this;
        T t7 = t6;
        Unsafe unsafe = zzb;
        int i7 = 1048575;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 1048575;
        while (i8 < zzlkVar.zzc.length) {
            int zzc = zzlkVar.zzc(i8);
            int i12 = (267386880 & zzc) >>> 20;
            int[] iArr = zzlkVar.zzc;
            int i13 = iArr[i8];
            int i14 = iArr[i8 + 2];
            int i15 = i14 & i7;
            if (i12 <= 17) {
                if (i15 != i11) {
                    i9 = i15 == i7 ? 0 : unsafe.getInt(t7, i15);
                    i11 = i15;
                }
                i2 = 1 << (i14 >>> 20);
            } else {
                i2 = 0;
            }
            long j7 = zzc & i7;
            if (i12 >= zzjo.zza.zza()) {
                zzjo.zzb.zza();
            }
            int i16 = i10;
            switch (i12) {
                case 0:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zza2 = zzja.zza(i13, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 1:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zza3 = zzja.zza(i13, 0.0f);
                        i10 = zza3 + i16;
                        zzlkVar = this;
                        t7 = t6;
                        break;
                    }
                    zzlkVar = this;
                    t7 = t6;
                    i10 = i16;
                    break;
                case 2:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zzb2 = zzja.zzb(i13, unsafe.getLong(t7, j7));
                        i10 = zzb2 + i16;
                        zzlkVar = this;
                        break;
                    }
                    zzlkVar = this;
                    i10 = i16;
                    break;
                case 3:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zzb2 = zzja.zze(i13, unsafe.getLong(t7, j7));
                        i10 = zzb2 + i16;
                        zzlkVar = this;
                        break;
                    }
                    zzlkVar = this;
                    i10 = i16;
                    break;
                case 4:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zzb2 = zzja.zzc(i13, unsafe.getInt(t7, j7));
                        i10 = zzb2 + i16;
                        zzlkVar = this;
                        break;
                    }
                    zzlkVar = this;
                    i10 = i16;
                    break;
                case 5:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zza3 = zzja.zza(i13, 0L);
                        i10 = zza3 + i16;
                        zzlkVar = this;
                        t7 = t6;
                        break;
                    }
                    zzlkVar = this;
                    t7 = t6;
                    i10 = i16;
                    break;
                case 6:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zza3 = zzja.zzb(i13, 0);
                        i10 = zza3 + i16;
                        zzlkVar = this;
                        t7 = t6;
                        break;
                    }
                    zzlkVar = this;
                    t7 = t6;
                    i10 = i16;
                    break;
                case 7:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zza3 = zzja.zza(i13, true);
                        i10 = zza3 + i16;
                        zzlkVar = this;
                        t7 = t6;
                        break;
                    }
                    zzlkVar = this;
                    t7 = t6;
                    i10 = i16;
                    break;
                case 8:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        Object object = unsafe.getObject(t7, j7);
                        if (object instanceof zzij) {
                            zzb2 = zzja.zza(i13, (zzij) object);
                        } else {
                            zzb2 = zzja.zza(i13, (String) object);
                        }
                        i10 = zzb2 + i16;
                        zzlkVar = this;
                        break;
                    }
                    zzlkVar = this;
                    i10 = i16;
                    break;
                case 9:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zza4 = zzma.zza(i13, unsafe.getObject(t7, j7), zzlkVar.zze(i8));
                        i10 = i16 + zza4;
                        break;
                    }
                    i10 = i16;
                    break;
                case 10:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zzb2 = zzja.zza(i13, (zzij) unsafe.getObject(t7, j7));
                        i10 = zzb2 + i16;
                        zzlkVar = this;
                        break;
                    }
                    zzlkVar = this;
                    i10 = i16;
                    break;
                case 11:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zzb2 = zzja.zzf(i13, unsafe.getInt(t7, j7));
                        i10 = zzb2 + i16;
                        zzlkVar = this;
                        break;
                    }
                    zzlkVar = this;
                    i10 = i16;
                    break;
                case 12:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zzb2 = zzja.zza(i13, unsafe.getInt(t7, j7));
                        i10 = zzb2 + i16;
                        zzlkVar = this;
                        break;
                    }
                    zzlkVar = this;
                    i10 = i16;
                    break;
                case 13:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zza3 = zzja.zzd(i13, 0);
                        i10 = zza3 + i16;
                        zzlkVar = this;
                        t7 = t6;
                        break;
                    }
                    zzlkVar = this;
                    t7 = t6;
                    i10 = i16;
                    break;
                case 14:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zza3 = zzja.zzc(i13, 0L);
                        i10 = zza3 + i16;
                        zzlkVar = this;
                        t7 = t6;
                        break;
                    }
                    zzlkVar = this;
                    t7 = t6;
                    i10 = i16;
                    break;
                case 15:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zzb2 = zzja.zze(i13, unsafe.getInt(t7, j7));
                        i10 = zzb2 + i16;
                        zzlkVar = this;
                        break;
                    }
                    zzlkVar = this;
                    i10 = i16;
                    break;
                case 16:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zzb2 = zzja.zzd(i13, unsafe.getLong(t7, j7));
                        i10 = zzb2 + i16;
                        zzlkVar = this;
                        break;
                    }
                    zzlkVar = this;
                    i10 = i16;
                    break;
                case 17:
                    if (zzlkVar.zza((zzlk<T>) t7, i8, i11, i9, i2)) {
                        zza2 = zzja.zza(i13, (zzlg) unsafe.getObject(t7, j7), zzlkVar.zze(i8));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 18:
                    zza4 = zzma.zzd(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 19:
                    zza4 = zzma.zzc(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 20:
                    zza4 = zzma.zzf(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 21:
                    zza4 = zzma.zzj(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 22:
                    zza4 = zzma.zze(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 23:
                    zza4 = zzma.zzd(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 24:
                    zza4 = zzma.zzc(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 25:
                    zza4 = zzma.zza(i13, (List<?>) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 26:
                    zza4 = zzma.zzb(i13, (List) unsafe.getObject(t7, j7));
                    i10 = i16 + zza4;
                    break;
                case 27:
                    zza4 = zzma.zzb(i13, (List<?>) unsafe.getObject(t7, j7), zzlkVar.zze(i8));
                    i10 = i16 + zza4;
                    break;
                case 28:
                    zza4 = zzma.zza(i13, (List<zzij>) unsafe.getObject(t7, j7));
                    i10 = i16 + zza4;
                    break;
                case 29:
                    zza4 = zzma.zzi(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 30:
                    zza4 = zzma.zzb(i13, (List<Integer>) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 31:
                    zza4 = zzma.zzc(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 32:
                    zza4 = zzma.zzd(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 33:
                    zza4 = zzma.zzg(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 34:
                    zza4 = zzma.zzh(i13, (List) unsafe.getObject(t7, j7), false);
                    i10 = i16 + zza4;
                    break;
                case 35:
                    zzd = zzma.zzd((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 36:
                    zzd = zzma.zzc((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case LangUtils.HASH_OFFSET /* 37 */:
                    zzd = zzma.zzf((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 38:
                    zzd = zzma.zzj((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 39:
                    zzd = zzma.zze((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 40:
                    zzd = zzma.zzd((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 41:
                    zzd = zzma.zzc((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 42:
                    zzd = zzma.zza((List<?>) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 43:
                    zzd = zzma.zzi((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 44:
                    zzd = zzma.zzb((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 45:
                    zzd = zzma.zzc((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 46:
                    zzd = zzma.zzd((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 47:
                    zzd = zzma.zzg((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 48:
                    zzd = zzma.zzh((List) unsafe.getObject(t7, j7));
                    if (zzd > 0) {
                        zzf = zzja.zzf(i13);
                        zzg = zzja.zzg(zzd);
                        i10 = zzg + zzf + zzd + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 49:
                    zza4 = zzma.zza(i13, (List<zzlg>) unsafe.getObject(t7, j7), zzlkVar.zze(i8));
                    i10 = i16 + zza4;
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    zza4 = zzlkVar.zzs.zza(i13, unsafe.getObject(t7, j7), zzlkVar.zzf(i8));
                    i10 = i16 + zza4;
                    break;
                case 51:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zza(i13, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 52:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zza(i13, 0.0f);
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 53:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zzb(i13, zzd(t7, j7));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 54:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zze(i13, zzd(t7, j7));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 55:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zzc(i13, zzc(t7, j7));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 56:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zza(i13, 0L);
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 57:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zzb(i13, 0);
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 58:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zza(i13, true);
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 59:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        Object object2 = unsafe.getObject(t7, j7);
                        if (object2 instanceof zzij) {
                            zza2 = zzja.zza(i13, (zzij) object2);
                        } else {
                            zza2 = zzja.zza(i13, (String) object2);
                        }
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza4 = zzma.zza(i13, unsafe.getObject(t7, j7), zzlkVar.zze(i8));
                        i10 = i16 + zza4;
                        break;
                    }
                    i10 = i16;
                    break;
                case 61:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zza(i13, (zzij) unsafe.getObject(t7, j7));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 62:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zzf(i13, zzc(t7, j7));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 63:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zza(i13, zzc(t7, j7));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 64:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zzd(i13, 0);
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 65:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zzc(i13, 0L);
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 66:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zze(i13, zzc(t7, j7));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 67:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zzd(i13, zzd(t7, j7));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                case 68:
                    if (zzlkVar.zzc((zzlk<T>) t7, i13, i8)) {
                        zza2 = zzja.zza(i13, (zzlg) unsafe.getObject(t7, j7), zzlkVar.zze(i8));
                        i10 = zza2 + i16;
                        break;
                    }
                    i10 = i16;
                    break;
                default:
                    i10 = i16;
                    break;
            }
            i8 += 3;
            i7 = 1048575;
        }
        zzmt<?, ?> zzmtVar = zzlkVar.zzq;
        int zza5 = i10 + zzmtVar.zza((zzmt<?, ?>) zzmtVar.zzd(t7));
        if (!zzlkVar.zzh) {
            return zza5;
        }
        zzjj<?> zza6 = zzlkVar.zzr.zza(t7);
        int i17 = 0;
        for (int i18 = 0; i18 < zza6.zza.zza(); i18++) {
            Map.Entry<?, Object> zzb3 = zza6.zza.zzb(i18);
            i17 += zzjj.zza((zzjl<?>) zzb3.getKey(), zzb3.getValue());
        }
        for (Map.Entry<?, Object> entry : zza6.zza.zzb()) {
            i17 += zzjj.zza((zzjl<?>) entry.getKey(), entry.getValue());
        }
        return zza5 + i17;
    }

    private final boolean zzc(T t6, int i2) {
        int zzb2 = zzb(i2);
        long j7 = zzb2 & 1048575;
        if (j7 != 1048575) {
            return (zzmz.zzc(t6, j7) & (1 << (zzb2 >>> 20))) != 0;
        }
        int zzc = zzc(i2);
        long j8 = zzc & 1048575;
        switch ((zzc & 267386880) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(zzmz.zza(t6, j8)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzmz.zzb(t6, j8)) != 0;
            case 2:
                return zzmz.zzd(t6, j8) != 0;
            case 3:
                return zzmz.zzd(t6, j8) != 0;
            case 4:
                return zzmz.zzc(t6, j8) != 0;
            case 5:
                return zzmz.zzd(t6, j8) != 0;
            case 6:
                return zzmz.zzc(t6, j8) != 0;
            case 7:
                return zzmz.zzh(t6, j8);
            case 8:
                Object zze = zzmz.zze(t6, j8);
                if (zze instanceof String) {
                    return !((String) zze).isEmpty();
                }
                if (zze instanceof zzij) {
                    return !zzij.zza.equals(zze);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzmz.zze(t6, j8) != null;
            case 10:
                return !zzij.zza.equals(zzmz.zze(t6, j8));
            case 11:
                return zzmz.zzc(t6, j8) != 0;
            case 12:
                return zzmz.zzc(t6, j8) != 0;
            case 13:
                return zzmz.zzc(t6, j8) != 0;
            case 14:
                return zzmz.zzd(t6, j8) != 0;
            case 15:
                return zzmz.zzc(t6, j8) != 0;
            case 16:
                return zzmz.zzd(t6, j8) != 0;
            case 17:
                return zzmz.zze(t6, j8) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzc(T t6, int i2, int i7) {
        return zzmz.zzc(t6, (long) (zzb(i7) & 1048575)) == i2;
    }

    private final int zzb(int i2) {
        return this.zzc[i2 + 2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzb(T t6, T t7, int i2) {
        int i7 = this.zzc[i2];
        if (zzc((zzlk<T>) t7, i7, i2)) {
            long zzc = zzc(i2) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t7, zzc);
            if (object != null) {
                zzly zze = zze(i2);
                if (!zzc((zzlk<T>) t6, i7, i2)) {
                    if (!zzg(object)) {
                        unsafe.putObject(t6, zzc, object);
                    } else {
                        Object zza2 = zze.zza();
                        zze.zza(zza2, object);
                        unsafe.putObject(t6, zzc, zza2);
                    }
                    zzb((zzlk<T>) t6, i7, i2);
                    return;
                }
                Object object2 = unsafe.getObject(t6, zzc);
                if (!zzg(object2)) {
                    Object zza3 = zze.zza();
                    zze.zza(zza3, object2);
                    unsafe.putObject(t6, zzc, zza3);
                    object2 = zza3;
                }
                zze.zza(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + this.zzc[i2] + " is present but null: " + String.valueOf(t7));
        }
    }

    private final void zzb(T t6, int i2) {
        int zzb2 = zzb(i2);
        long j7 = 1048575 & zzb2;
        if (j7 == 1048575) {
            return;
        }
        zzmz.zza((Object) t6, j7, (1 << (zzb2 >>> 20)) | zzmz.zzc(t6, j7));
    }

    private final void zzb(T t6, int i2, int i7) {
        zzmz.zza((Object) t6, zzb(i7) & 1048575, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006b, code lost:
    
        if (com.google.android.gms.internal.measurement.zzma.zza(com.google.android.gms.internal.measurement.zzmz.zze(r10, r6), com.google.android.gms.internal.measurement.zzmz.zze(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzd(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008f, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzc(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a2, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzd(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b3, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzc(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c4, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzc(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d6, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzc(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ec, code lost:
    
        if (com.google.android.gms.internal.measurement.zzma.zza(com.google.android.gms.internal.measurement.zzmz.zze(r10, r6), com.google.android.gms.internal.measurement.zzmz.zze(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0102, code lost:
    
        if (com.google.android.gms.internal.measurement.zzma.zza(com.google.android.gms.internal.measurement.zzmz.zze(r10, r6), com.google.android.gms.internal.measurement.zzmz.zze(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0118, code lost:
    
        if (com.google.android.gms.internal.measurement.zzma.zza(com.google.android.gms.internal.measurement.zzmz.zze(r10, r6), com.google.android.gms.internal.measurement.zzmz.zze(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012a, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzh(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzh(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013c, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzc(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0150, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzd(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0162, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzc(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0176, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzd(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x018a, code lost:
    
        if (com.google.android.gms.internal.measurement.zzmz.zzd(r10, r6) == com.google.android.gms.internal.measurement.zzmz.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01a4, code lost:
    
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.zzmz.zzb(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.zzmz.zzb(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c0, code lost:
    
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.zzmz.zza(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.zzmz.zza(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (com.google.android.gms.internal.measurement.zzma.zza(com.google.android.gms.internal.measurement.zzmz.zze(r10, r6), com.google.android.gms.internal.measurement.zzmz.zze(r11, r6)) != false) goto L105;
     */
    @Override // com.google.android.gms.internal.measurement.zzly
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzb(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlk.zzb(java.lang.Object, java.lang.Object):boolean");
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public final int zza(T r30, byte[] r31, int r32, int r33, int r34, com.google.android.gms.internal.measurement.zzie r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlk.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzie):int");
    }

    private final int zza(int i2) {
        if (i2 < this.zze || i2 > this.zzf) {
            return -1;
        }
        return zza(i2, 0);
    }

    private final int zza(int i2, int i7) {
        int length = (this.zzc.length / 3) - 1;
        while (i7 <= length) {
            int i8 = (length + i7) >>> 1;
            int i9 = i8 * 3;
            int i10 = this.zzc[i9];
            if (i2 == i10) {
                return i9;
            }
            if (i2 < i10) {
                length = i8 - 1;
            } else {
                i7 = i8 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0265  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.measurement.zzlk<T> zza(java.lang.Class<T> r31, com.google.android.gms.internal.measurement.zzle r32, com.google.android.gms.internal.measurement.zzlo r33, com.google.android.gms.internal.measurement.zzkl r34, com.google.android.gms.internal.measurement.zzmt<?, ?> r35, com.google.android.gms.internal.measurement.zzji<?> r36, com.google.android.gms.internal.measurement.zzkz r37) {
        /*
            Method dump skipped, instructions count: 1024
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlk.zza(java.lang.Class, com.google.android.gms.internal.measurement.zzle, com.google.android.gms.internal.measurement.zzlo, com.google.android.gms.internal.measurement.zzkl, com.google.android.gms.internal.measurement.zzmt, com.google.android.gms.internal.measurement.zzji, com.google.android.gms.internal.measurement.zzkz):com.google.android.gms.internal.measurement.zzlk");
    }

    private final <UT, UB> UB zza(Object obj, int i2, UB ub, zzmt<UT, UB> zzmtVar, Object obj2) {
        zzjx zzd;
        int i7 = this.zzc[i2];
        Object zze = zzmz.zze(obj, zzc(i2) & 1048575);
        return (zze == null || (zzd = zzd(i2)) == null) ? ub : (UB) zza(i2, i7, this.zzs.zze(zze), zzd, (zzjx) ub, (zzmt<UT, zzjx>) zzmtVar, obj2);
    }

    private final <K, V, UT, UB> UB zza(int i2, int i7, Map<K, V> map, zzjx zzjxVar, UB ub, zzmt<UT, UB> zzmtVar, Object obj) {
        zzkx<?, ?> zza2 = this.zzs.zza(zzf(i2));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzjxVar.zza(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzmtVar.zzc(obj);
                }
                zzio zzc = zzij.zzc(zzky.zza(zza2, next.getKey(), next.getValue()));
                try {
                    zzky.zza(zzc.zzb(), zza2, next.getKey(), next.getValue());
                    zzmtVar.zza((zzmt<UT, UB>) ub, i7, zzc.zza());
                    it.remove();
                } catch (IOException e3) {
                    throw new RuntimeException(e3);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t6, int i2) {
        zzly zze = zze(i2);
        long zzc = zzc(i2) & 1048575;
        if (!zzc((zzlk<T>) t6, i2)) {
            return zze.zza();
        }
        Object object = zzb.getObject(t6, zzc);
        if (zzg(object)) {
            return object;
        }
        Object zza2 = zze.zza();
        if (object != null) {
            zze.zza(zza2, object);
        }
        return zza2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t6, int i2, int i7) {
        zzly zze = zze(i7);
        if (!zzc((zzlk<T>) t6, i2, i7)) {
            return zze.zza();
        }
        Object object = zzb.getObject(t6, zzc(i7) & 1048575);
        if (zzg(object)) {
            return object;
        }
        Object zza2 = zze.zza();
        if (object != null) {
            zze.zza(zza2, object);
        }
        return zza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final T zza() {
        return (T) this.zzo.zza(this.zzg);
    }

    private static Field zza(Class<?> cls, String str) {
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

    @Override // com.google.android.gms.internal.measurement.zzly
    public final void zza(T t6, T t7) {
        zzf(t6);
        t7.getClass();
        for (int i2 = 0; i2 < this.zzc.length; i2 += 3) {
            int zzc = zzc(i2);
            long j7 = 1048575 & zzc;
            int i7 = this.zzc[i2];
            switch ((zzc & 267386880) >>> 20) {
                case 0:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza(t6, j7, zzmz.zza(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzb(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzd(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzd(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzc(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzd(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzc(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zzc(t6, j7, zzmz.zzh(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza(t6, j7, zzmz.zze(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t6, t7, i2);
                    break;
                case 10:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza(t6, j7, zzmz.zze(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzc(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzc(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzc(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzd(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzc(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzc((zzlk<T>) t7, i2)) {
                        zzmz.zza((Object) t6, j7, zzmz.zzd(t7, j7));
                        zzb((zzlk<T>) t6, i2);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zza(t6, t7, i2);
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
                    this.zzp.zza(t6, t7, j7);
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    zzma.zza(this.zzs, t6, t7, j7);
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
                    if (zzc((zzlk<T>) t7, i7, i2)) {
                        zzmz.zza(t6, j7, zzmz.zze(t7, j7));
                        zzb((zzlk<T>) t6, i7, i2);
                        break;
                    } else {
                        break;
                    }
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    zzb(t6, t7, i2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzc((zzlk<T>) t7, i7, i2)) {
                        zzmz.zza(t6, j7, zzmz.zze(t7, j7));
                        zzb((zzlk<T>) t6, i7, i2);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t6, t7, i2);
                    break;
            }
        }
        zzma.zza(this.zzq, t6, t7);
        if (this.zzh) {
            zzma.zza(this.zzr, t6, t7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0784 A[Catch: all -> 0x0062, TryCatch #4 {all -> 0x0062, blocks: (B:36:0x0058, B:114:0x077f, B:116:0x0784, B:117:0x0789, B:133:0x013a, B:136:0x014c, B:137:0x0164, B:138:0x017c, B:139:0x0194, B:140:0x01ac, B:142:0x01bc, B:145:0x01c3, B:146:0x01c9, B:147:0x01d7, B:148:0x01ef, B:149:0x0203, B:150:0x021b, B:151:0x0229, B:152:0x0241, B:153:0x0259, B:154:0x0271, B:155:0x0289, B:156:0x02a1, B:157:0x02b9, B:158:0x02d1, B:159:0x02e9, B:161:0x02ff, B:162:0x0320, B:163:0x0309, B:165:0x0311, B:166:0x0331, B:167:0x0349, B:168:0x035d, B:169:0x0371, B:170:0x0385, B:171:0x0399, B:182:0x03cc, B:183:0x03da, B:184:0x03ee, B:185:0x0402, B:186:0x0416, B:187:0x042a, B:188:0x043e, B:189:0x0452, B:190:0x0466, B:191:0x047a, B:192:0x048e, B:193:0x04a2, B:194:0x04b6, B:195:0x04ca, B:200:0x04f1, B:201:0x04ff, B:202:0x0513, B:203:0x052b, B:205:0x0537, B:206:0x0545, B:207:0x0553, B:208:0x0567, B:209:0x057b, B:210:0x058f, B:211:0x05a3, B:212:0x05b7, B:213:0x05cb, B:214:0x05df, B:215:0x05f3, B:216:0x060b, B:217:0x0620, B:218:0x0635, B:219:0x064a, B:220:0x065f, B:222:0x066f, B:225:0x0676, B:226:0x067c, B:227:0x0687, B:228:0x069c, B:229:0x06b1, B:230:0x06c9, B:231:0x06d7, B:232:0x06ec, B:233:0x0701, B:234:0x0716, B:235:0x072b, B:236:0x0740, B:237:0x0755, B:238:0x076a), top: B:35:0x0058 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x07ae  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x078f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x07bc A[LOOP:1: B:26:0x07b8->B:28:0x07bc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x07cf  */
    @Override // com.google.android.gms.internal.measurement.zzly
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r18, com.google.android.gms.internal.measurement.zzlv r19, com.google.android.gms.internal.measurement.zzjg r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlk.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzlv, com.google.android.gms.internal.measurement.zzjg):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final void zza(T t6, byte[] bArr, int i2, int i7, zzie zzieVar) throws IOException {
        zza((zzlk<T>) t6, bArr, i2, i7, 0, zzieVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zza(T t6, T t7, int i2) {
        if (zzc((zzlk<T>) t7, i2)) {
            long zzc = zzc(i2) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t7, zzc);
            if (object != null) {
                zzly zze = zze(i2);
                if (!zzc((zzlk<T>) t6, i2)) {
                    if (!zzg(object)) {
                        unsafe.putObject(t6, zzc, object);
                    } else {
                        Object zza2 = zze.zza();
                        zze.zza(zza2, object);
                        unsafe.putObject(t6, zzc, zza2);
                    }
                    zzb((zzlk<T>) t6, i2);
                    return;
                }
                Object object2 = unsafe.getObject(t6, zzc);
                if (!zzg(object2)) {
                    Object zza3 = zze.zza();
                    zze.zza(zza3, object2);
                    unsafe.putObject(t6, zzc, zza3);
                    object2 = zza3;
                }
                zze.zza(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + this.zzc[i2] + " is present but null: " + String.valueOf(t7));
        }
    }

    private final void zza(Object obj, int i2, zzlv zzlvVar) throws IOException {
        if (zzg(i2)) {
            zzmz.zza(obj, i2 & 1048575, zzlvVar.zzr());
        } else if (this.zzi) {
            zzmz.zza(obj, i2 & 1048575, zzlvVar.zzq());
        } else {
            zzmz.zza(obj, i2 & 1048575, zzlvVar.zzp());
        }
    }

    private final void zza(T t6, int i2, Object obj) {
        zzb.putObject(t6, zzc(i2) & 1048575, obj);
        zzb((zzlk<T>) t6, i2);
    }

    private final void zza(T t6, int i2, int i7, Object obj) {
        zzb.putObject(t6, zzc(i7) & 1048575, obj);
        zzb((zzlk<T>) t6, i2, i7);
    }

    private final <K, V> void zza(zznt zzntVar, int i2, Object obj, int i7) throws IOException {
        if (obj != null) {
            zzntVar.zza(i2, this.zzs.zza(zzf(i7)), this.zzs.zzd(obj));
        }
    }

    private static void zza(int i2, Object obj, zznt zzntVar) throws IOException {
        if (obj instanceof String) {
            zzntVar.zza(i2, (String) obj);
        } else {
            zzntVar.zza(i2, (zzij) obj);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0558  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x0a61  */
    @Override // com.google.android.gms.internal.measurement.zzly
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r21, com.google.android.gms.internal.measurement.zznt r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2968
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlk.zza(java.lang.Object, com.google.android.gms.internal.measurement.zznt):void");
    }

    private static <UT, UB> void zza(zzmt<UT, UB> zzmtVar, T t6, zznt zzntVar) throws IOException {
        zzmtVar.zzb((zzmt<UT, UB>) zzmtVar.zzd(t6), zzntVar);
    }

    private final boolean zza(T t6, int i2, int i7, int i8, int i9) {
        if (i7 == 1048575) {
            return zzc((zzlk<T>) t6, i2);
        }
        return (i8 & i9) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i2, zzly zzlyVar) {
        return zzlyVar.zzd(zzmz.zze(obj, i2 & 1048575));
    }
}
