package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzjj<T extends zzjl<T>> {
    private static final zzjj zzb = new zzjj(true);
    final zzlz<T, Object> zza;
    private boolean zzc;
    private boolean zzd;

    private zzjj() {
        this.zza = zzlz.zza(16);
    }

    public static int zza(zzng zzngVar, int i2, Object obj) {
        int zzf = zzja.zzf(i2);
        if (zzngVar == zzng.zzj) {
            zzjw.zza((zzlg) obj);
            zzf <<= 1;
        }
        return zzf + zza(zzngVar, obj);
    }

    public static <T extends zzjl<T>> zzjj<T> zzb() {
        return zzb;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzjj zzjjVar = new zzjj();
        for (int i2 = 0; i2 < this.zza.zza(); i2++) {
            Map.Entry<T, Object> zzb2 = this.zza.zzb(i2);
            zzjjVar.zzb(zzb2.getKey(), zzb2.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zza.zzb()) {
            zzjjVar.zzb(entry.getKey(), entry.getValue());
        }
        zzjjVar.zzd = this.zzd;
        return zzjjVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzjj) {
            return this.zza.equals(((zzjj) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final Iterator<Map.Entry<T, Object>> zzc() {
        return this.zzd ? new zzkh(this.zza.zzc().iterator()) : this.zza.zzc().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zzd() {
        return this.zzd ? new zzkh(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final void zze() {
        if (this.zzc) {
            return;
        }
        for (int i2 = 0; i2 < this.zza.zza(); i2++) {
            Map.Entry<T, Object> zzb2 = this.zza.zzb(i2);
            if (zzb2.getValue() instanceof zzjt) {
                ((zzjt) zzb2.getValue()).zzcf();
            }
        }
        this.zza.zzd();
        this.zzc = true;
    }

    public final boolean zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        for (int i2 = 0; i2 < this.zza.zza(); i2++) {
            if (!zzc(this.zza.zzb(i2))) {
                return false;
            }
        }
        Iterator<Map.Entry<T, Object>> it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            if (!zzc(it.next())) {
                return false;
            }
        }
        return true;
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        boolean z6 = value instanceof zzkg;
        if (key.zze()) {
            if (z6) {
                throw new IllegalStateException("Lazy fields can not be repeated");
            }
            Object zza = zza((zzjj<T>) key);
            if (zza == null) {
                zza = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) zza).add(zza(it.next()));
            }
            this.zza.zza((zzlz<T, Object>) key, (T) zza);
            return;
        }
        if (key.zzc() != zznq.MESSAGE) {
            if (z6) {
                throw new IllegalStateException("Lazy fields must be message-valued");
            }
            this.zza.zza((zzlz<T, Object>) key, (T) zza(value));
            return;
        }
        Object zza2 = zza((zzjj<T>) key);
        if (zza2 != null) {
            if (z6) {
                value = zzkg.zza();
            }
            this.zza.zza((zzlz<T, Object>) key, (T) (zza2 instanceof zzll ? key.zza((zzll) zza2, (zzll) value) : key.zza(((zzlg) zza2).zzce(), (zzlg) value).zzah()));
        } else {
            this.zza.zza((zzlz<T, Object>) key, (T) zza(value));
            if (z6) {
                this.zzd = true;
            }
        }
    }

    private zzjj(zzlz<T, Object> zzlzVar) {
        this.zza = zzlzVar;
        zze();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        if ((r6 instanceof com.google.android.gms.internal.measurement.zzkg) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002a, code lost:
    
        if ((r6 instanceof com.google.android.gms.internal.measurement.zzjv) == false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0033, code lost:
    
        if ((r6 instanceof byte[]) == false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzc(T r5, java.lang.Object r6) {
        /*
            com.google.android.gms.internal.measurement.zzng r0 = r5.zzb()
            com.google.android.gms.internal.measurement.zzjw.zza(r6)
            int[] r1 = com.google.android.gms.internal.measurement.zzjm.zza
            com.google.android.gms.internal.measurement.zznq r0 = r0.zzb()
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            r2 = 0
            switch(r0) {
                case 1: goto L45;
                case 2: goto L42;
                case 3: goto L3f;
                case 4: goto L3c;
                case 5: goto L39;
                case 6: goto L36;
                case 7: goto L2d;
                case 8: goto L24;
                case 9: goto L1a;
                default: goto L18;
            }
        L18:
            r0 = r2
            goto L47
        L1a:
            boolean r0 = r6 instanceof com.google.android.gms.internal.measurement.zzlg
            if (r0 != 0) goto L22
            boolean r0 = r6 instanceof com.google.android.gms.internal.measurement.zzkg
            if (r0 == 0) goto L18
        L22:
            r0 = r1
            goto L47
        L24:
            boolean r0 = r6 instanceof java.lang.Integer
            if (r0 != 0) goto L22
            boolean r0 = r6 instanceof com.google.android.gms.internal.measurement.zzjv
            if (r0 == 0) goto L18
            goto L22
        L2d:
            boolean r0 = r6 instanceof com.google.android.gms.internal.measurement.zzij
            if (r0 != 0) goto L22
            boolean r0 = r6 instanceof byte[]
            if (r0 == 0) goto L18
            goto L22
        L36:
            boolean r0 = r6 instanceof java.lang.String
            goto L47
        L39:
            boolean r0 = r6 instanceof java.lang.Boolean
            goto L47
        L3c:
            boolean r0 = r6 instanceof java.lang.Double
            goto L47
        L3f:
            boolean r0 = r6 instanceof java.lang.Float
            goto L47
        L42:
            boolean r0 = r6 instanceof java.lang.Long
            goto L47
        L45:
            boolean r0 = r6 instanceof java.lang.Integer
        L47:
            if (r0 == 0) goto L4a
            return
        L4a:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r3 = r5.zza()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            com.google.android.gms.internal.measurement.zzng r5 = r5.zzb()
            com.google.android.gms.internal.measurement.zznq r5 = r5.zzb()
            java.lang.Class r6 = r6.getClass()
            java.lang.String r6 = r6.getName()
            r4 = 3
            java.lang.Object[] r4 = new java.lang.Object[r4]
            r4[r2] = r3
            r4[r1] = r5
            r5 = 2
            r4[r5] = r6
            java.lang.String r5 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r5 = java.lang.String.format(r5, r4)
            r0.<init>(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjj.zzc(com.google.android.gms.internal.measurement.zzjl, java.lang.Object):void");
    }

    private static int zza(zzng zzngVar, Object obj) {
        switch (zzjm.zzb[zzngVar.ordinal()]) {
            case 1:
                return zzja.zza(((Double) obj).doubleValue());
            case 2:
                return zzja.zza(((Float) obj).floatValue());
            case 3:
                return zzja.zzb(((Long) obj).longValue());
            case 4:
                return zzja.zze(((Long) obj).longValue());
            case 5:
                return zzja.zzc(((Integer) obj).intValue());
            case 6:
                return zzja.zza(((Long) obj).longValue());
            case 7:
                return zzja.zzb(((Integer) obj).intValue());
            case 8:
                return zzja.zza(((Boolean) obj).booleanValue());
            case 9:
                return zzja.zza((zzlg) obj);
            case 10:
                if (obj instanceof zzkg) {
                    return zzja.zza((zzkg) obj);
                }
                return zzja.zzb((zzlg) obj);
            case 11:
                if (obj instanceof zzij) {
                    return zzja.zza((zzij) obj);
                }
                return zzja.zza((String) obj);
            case 12:
                if (obj instanceof zzij) {
                    return zzja.zza((zzij) obj);
                }
                return zzja.zza((byte[]) obj);
            case 13:
                return zzja.zzg(((Integer) obj).intValue());
            case 14:
                return zzja.zzd(((Integer) obj).intValue());
            case 15:
                return zzja.zzc(((Long) obj).longValue());
            case 16:
                return zzja.zze(((Integer) obj).intValue());
            case 17:
                return zzja.zzd(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzjv) {
                    return zzja.zza(((zzjv) obj).zza());
                }
                return zzja.zza(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private zzjj(boolean z6) {
        this(zzlz.zza(0));
        zze();
    }

    private static <T extends zzjl<T>> boolean zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() != zznq.MESSAGE) {
            return true;
        }
        if (key.zze()) {
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                if (!zzb(it.next())) {
                    return false;
                }
            }
            return true;
        }
        return zzb(entry.getValue());
    }

    private final void zzb(T t6, Object obj) {
        if (t6.zze()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    zzc(t6, obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            zzc(t6, obj);
        }
        if (obj instanceof zzkg) {
            this.zzd = true;
        }
        this.zza.zza((zzlz<T, Object>) t6, (T) obj);
    }

    public static int zza(zzjl<?> zzjlVar, Object obj) {
        zzng zzb2 = zzjlVar.zzb();
        int zza = zzjlVar.zza();
        if (zzjlVar.zze()) {
            List list = (List) obj;
            int i2 = 0;
            if (zzjlVar.zzd()) {
                if (list.isEmpty()) {
                    return 0;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    i2 += zza(zzb2, it.next());
                }
                return zzja.zzg(i2) + zzja.zzf(zza) + i2;
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                i2 += zza(zzb2, zza, it2.next());
            }
            return i2;
        }
        return zza(zzb2, zza, obj);
    }

    private static boolean zzb(Object obj) {
        if (obj instanceof zzli) {
            return ((zzli) obj).i_();
        }
        if (obj instanceof zzkg) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public final int zza() {
        int i2 = 0;
        for (int i7 = 0; i7 < this.zza.zza(); i7++) {
            i2 += zza((Map.Entry) this.zza.zzb(i7));
        }
        Iterator<Map.Entry<T, Object>> it = this.zza.zzb().iterator();
        while (it.hasNext()) {
            i2 += zza((Map.Entry) it.next());
        }
        return i2;
    }

    private static int zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzc() == zznq.MESSAGE && !key.zze() && !key.zzd()) {
            if (value instanceof zzkg) {
                return zzja.zza(entry.getKey().zza(), (zzkg) value);
            }
            return zzja.zza(entry.getKey().zza(), (zzlg) value);
        }
        return zza((zzjl<?>) key, value);
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzll) {
            return ((zzll) obj).clone();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private final Object zza(T t6) {
        Object obj = this.zza.get(t6);
        return obj instanceof zzkg ? zzkg.zza() : obj;
    }

    public final void zza(zzjj<T> zzjjVar) {
        for (int i2 = 0; i2 < zzjjVar.zza.zza(); i2++) {
            zzb((Map.Entry) zzjjVar.zza.zzb(i2));
        }
        Iterator<Map.Entry<T, Object>> it = zzjjVar.zza.zzb().iterator();
        while (it.hasNext()) {
            zzb((Map.Entry) it.next());
        }
    }

    public static void zza(zzja zzjaVar, zzng zzngVar, int i2, Object obj) throws IOException {
        if (zzngVar == zzng.zzj) {
            zzlg zzlgVar = (zzlg) obj;
            zzjw.zza(zzlgVar);
            zzjaVar.zzj(i2, 3);
            zzlgVar.zza(zzjaVar);
            zzjaVar.zzj(i2, 4);
        }
        zzjaVar.zzj(i2, zzngVar.zza());
        switch (zzjm.zzb[zzngVar.ordinal()]) {
            case 1:
                zzjaVar.zzb(((Double) obj).doubleValue());
                break;
            case 2:
                zzjaVar.zzb(((Float) obj).floatValue());
                break;
            case 3:
                zzjaVar.zzh(((Long) obj).longValue());
                break;
            case 4:
                zzjaVar.zzh(((Long) obj).longValue());
                break;
            case 5:
                zzjaVar.zzi(((Integer) obj).intValue());
                break;
            case 6:
                zzjaVar.zzf(((Long) obj).longValue());
                break;
            case 7:
                zzjaVar.zzh(((Integer) obj).intValue());
                break;
            case 8:
                zzjaVar.zzb(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzlg) obj).zza(zzjaVar);
                break;
            case 10:
                zzjaVar.zzc((zzlg) obj);
                break;
            case 11:
                if (obj instanceof zzij) {
                    zzjaVar.zzb((zzij) obj);
                    break;
                } else {
                    zzjaVar.zzb((String) obj);
                    break;
                }
            case 12:
                if (obj instanceof zzij) {
                    zzjaVar.zzb((zzij) obj);
                    break;
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzjaVar.zzb(bArr, 0, bArr.length);
                    break;
                }
            case 13:
                zzjaVar.zzk(((Integer) obj).intValue());
                break;
            case 14:
                zzjaVar.zzh(((Integer) obj).intValue());
                break;
            case 15:
                zzjaVar.zzf(((Long) obj).longValue());
                break;
            case 16:
                zzjaVar.zzj(((Integer) obj).intValue());
                break;
            case 17:
                zzjaVar.zzg(((Long) obj).longValue());
                break;
            case 18:
                if (obj instanceof zzjv) {
                    zzjaVar.zzi(((zzjv) obj).zza());
                    break;
                } else {
                    zzjaVar.zzi(((Integer) obj).intValue());
                    break;
                }
        }
    }
}
