package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzlm<T> implements zzly<T> {
    private final zzlg zza;
    private final zzmt<?, ?> zzb;
    private final boolean zzc;
    private final zzji<?> zzd;

    private zzlm(zzmt<?, ?> zzmtVar, zzji<?> zzjiVar, zzlg zzlgVar) {
        this.zzb = zzmtVar;
        this.zzc = zzjiVar.zza(zzlgVar);
        this.zzd = zzjiVar;
        this.zza = zzlgVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final int zza(T t6) {
        zzmt<?, ?> zzmtVar = this.zzb;
        int zzb = zzmtVar.zzb(zzmtVar.zzd(t6));
        return this.zzc ? zzb + this.zzd.zza(t6).zza() : zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final int zzb(T t6) {
        int hashCode = this.zzb.zzd(t6).hashCode();
        return this.zzc ? (hashCode * 53) + this.zzd.zza(t6).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final void zzc(T t6) {
        this.zzb.zzf(t6);
        this.zzd.zzc(t6);
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final boolean zzd(T t6) {
        return this.zzd.zza(t6).zzg();
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final boolean zzb(T t6, T t7) {
        if (!this.zzb.zzd(t6).equals(this.zzb.zzd(t7))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zza(t6).equals(this.zzd.zza(t7));
        }
        return true;
    }

    public static <T> zzlm<T> zza(zzmt<?, ?> zzmtVar, zzji<?> zzjiVar, zzlg zzlgVar) {
        return new zzlm<>(zzmtVar, zzjiVar, zzlgVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final T zza() {
        zzlg zzlgVar = this.zza;
        if (zzlgVar instanceof zzjt) {
            return (T) ((zzjt) zzlgVar).zzbz();
        }
        return (T) zzlgVar.zzcd().zzai();
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final void zza(T t6, T t7) {
        zzma.zza(this.zzb, t6, t7);
        if (this.zzc) {
            zzma.zza(this.zzd, t6, t7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[LOOP:0: B:2:0x000c->B:20:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzly
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r11, com.google.android.gms.internal.measurement.zzlv r12, com.google.android.gms.internal.measurement.zzjg r13) throws java.io.IOException {
        /*
            r10 = this;
            com.google.android.gms.internal.measurement.zzmt<?, ?> r0 = r10.zzb
            com.google.android.gms.internal.measurement.zzji<?> r1 = r10.zzd
            java.lang.Object r2 = r0.zzc(r11)
            com.google.android.gms.internal.measurement.zzjj r3 = r1.zzb(r11)
        Lc:
            int r4 = r12.zzc()     // Catch: java.lang.Throwable -> L34
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != r5) goto L19
            r0.zzb(r11, r2)
            return
        L19:
            int r4 = r12.zzd()     // Catch: java.lang.Throwable -> L34
            r6 = 11
            if (r4 == r6) goto L40
            r5 = r4 & 7
            r6 = 2
            if (r5 != r6) goto L3b
            com.google.android.gms.internal.measurement.zzlg r5 = r10.zza     // Catch: java.lang.Throwable -> L34
            int r4 = r4 >>> 3
            java.lang.Object r4 = r1.zza(r13, r5, r4)     // Catch: java.lang.Throwable -> L34
            if (r4 == 0) goto L36
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L34
            goto L85
        L34:
            r12 = move-exception
            goto L91
        L36:
            boolean r4 = r0.zza(r2, r12)     // Catch: java.lang.Throwable -> L34
            goto L86
        L3b:
            boolean r4 = r12.zzt()     // Catch: java.lang.Throwable -> L34
            goto L86
        L40:
            r4 = 0
            r6 = 0
            r7 = r6
            r6 = r4
        L44:
            int r8 = r12.zzc()     // Catch: java.lang.Throwable -> L34
            if (r8 == r5) goto L72
            int r8 = r12.zzd()     // Catch: java.lang.Throwable -> L34
            r9 = 16
            if (r8 != r9) goto L5d
            int r7 = r12.zzj()     // Catch: java.lang.Throwable -> L34
            com.google.android.gms.internal.measurement.zzlg r4 = r10.zza     // Catch: java.lang.Throwable -> L34
            java.lang.Object r4 = r1.zza(r13, r4, r7)     // Catch: java.lang.Throwable -> L34
            goto L44
        L5d:
            r9 = 26
            if (r8 != r9) goto L6c
            if (r4 == 0) goto L67
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L34
            goto L44
        L67:
            com.google.android.gms.internal.measurement.zzij r6 = r12.zzp()     // Catch: java.lang.Throwable -> L34
            goto L44
        L6c:
            boolean r8 = r12.zzt()     // Catch: java.lang.Throwable -> L34
            if (r8 != 0) goto L44
        L72:
            int r5 = r12.zzd()     // Catch: java.lang.Throwable -> L34
            r8 = 12
            if (r5 != r8) goto L8c
            if (r6 == 0) goto L85
            if (r4 == 0) goto L82
            r1.zza(r6, r4, r13, r3)     // Catch: java.lang.Throwable -> L34
            goto L85
        L82:
            r0.zza(r2, r7, r6)     // Catch: java.lang.Throwable -> L34
        L85:
            r4 = 1
        L86:
            if (r4 != 0) goto Lc
            r0.zzb(r11, r2)
            return
        L8c:
            com.google.android.gms.internal.measurement.zzkb r12 = com.google.android.gms.internal.measurement.zzkb.zzb()     // Catch: java.lang.Throwable -> L34
            throw r12     // Catch: java.lang.Throwable -> L34
        L91:
            r0.zzb(r11, r2)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlm.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzlv, com.google.android.gms.internal.measurement.zzjg):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a1 A[EDGE_INSN: B:24:0x00a1->B:25:0x00a1 BREAK  A[LOOP:1: B:10:0x0059->B:18:0x0059], SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzly
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.measurement.zzie r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.measurement.zzjt r0 = (com.google.android.gms.internal.measurement.zzjt) r0
            com.google.android.gms.internal.measurement.zzmw r1 = r0.zzb
            com.google.android.gms.internal.measurement.zzmw r2 = com.google.android.gms.internal.measurement.zzmw.zzc()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.measurement.zzmw r1 = com.google.android.gms.internal.measurement.zzmw.zzd()
            r0.zzb = r1
        L11:
            r6 = r1
            com.google.android.gms.internal.measurement.zzjt$zzb r10 = (com.google.android.gms.internal.measurement.zzjt.zzb) r10
            r10.zza()
            r10 = 0
            r0 = r10
        L19:
            if (r12 >= r13) goto Laf
            int r4 = com.google.android.gms.internal.measurement.zzif.zzc(r11, r12, r14)
            int r2 = r14.zza
            r12 = 11
            r1 = 2
            if (r2 == r12) goto L54
            r12 = r2 & 7
            if (r12 != r1) goto L4c
            com.google.android.gms.internal.measurement.zzji<?> r12 = r9.zzd
            com.google.android.gms.internal.measurement.zzjg r0 = r14.zzd
            com.google.android.gms.internal.measurement.zzlg r1 = r9.zza
            int r3 = r2 >>> 3
            java.lang.Object r12 = r12.zza(r0, r1, r3)
            r0 = r12
            com.google.android.gms.internal.measurement.zzjt$zzd r0 = (com.google.android.gms.internal.measurement.zzjt.zzd) r0
            if (r0 != 0) goto L43
            r3 = r11
            r5 = r13
            r7 = r14
            int r12 = com.google.android.gms.internal.measurement.zzif.zza(r2, r3, r4, r5, r6, r7)
            goto L19
        L43:
            com.google.android.gms.internal.measurement.zzlu.zza()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L4c:
            r3 = r11
            r5 = r13
            r7 = r14
            int r12 = com.google.android.gms.internal.measurement.zzif.zza(r2, r3, r4, r5, r7)
            goto L19
        L54:
            r3 = r11
            r5 = r13
            r7 = r14
            r11 = 0
            r12 = r10
        L59:
            if (r4 >= r5) goto La0
            int r13 = com.google.android.gms.internal.measurement.zzif.zzc(r3, r4, r7)
            int r14 = r7.zza
            int r2 = r14 >>> 3
            r4 = r14 & 7
            if (r2 == r1) goto L81
            r8 = 3
            if (r2 == r8) goto L6b
            goto L97
        L6b:
            if (r0 != 0) goto L78
            if (r4 != r1) goto L97
            int r4 = com.google.android.gms.internal.measurement.zzif.zza(r3, r13, r7)
            java.lang.Object r12 = r7.zzc
            com.google.android.gms.internal.measurement.zzij r12 = (com.google.android.gms.internal.measurement.zzij) r12
            goto L59
        L78:
            com.google.android.gms.internal.measurement.zzlu.zza()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L81:
            if (r4 != 0) goto L97
            int r4 = com.google.android.gms.internal.measurement.zzif.zzc(r3, r13, r7)
            int r11 = r7.zza
            com.google.android.gms.internal.measurement.zzji<?> r13 = r9.zzd
            com.google.android.gms.internal.measurement.zzjg r14 = r7.zzd
            com.google.android.gms.internal.measurement.zzlg r0 = r9.zza
            java.lang.Object r13 = r13.zza(r14, r0, r11)
            r0 = r13
            com.google.android.gms.internal.measurement.zzjt$zzd r0 = (com.google.android.gms.internal.measurement.zzjt.zzd) r0
            goto L59
        L97:
            r2 = 12
            if (r14 == r2) goto La1
            int r4 = com.google.android.gms.internal.measurement.zzif.zza(r14, r3, r13, r5, r7)
            goto L59
        La0:
            r13 = r4
        La1:
            if (r12 == 0) goto La9
            int r11 = r11 << 3
            r11 = r11 | r1
            r6.zza(r11, r12)
        La9:
            r12 = r13
            r11 = r3
            r13 = r5
            r14 = r7
            goto L19
        Laf:
            r5 = r13
            if (r12 != r5) goto Lb3
            return
        Lb3:
            com.google.android.gms.internal.measurement.zzkb r10 = com.google.android.gms.internal.measurement.zzkb.zzg()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlm.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzie):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final void zza(T t6, zznt zzntVar) throws IOException {
        Iterator<Map.Entry<?, Object>> zzd = this.zzd.zza(t6).zzd();
        while (zzd.hasNext()) {
            Map.Entry<?, Object> next = zzd.next();
            zzjl zzjlVar = (zzjl) next.getKey();
            if (zzjlVar.zzc() == zznq.MESSAGE && !zzjlVar.zze() && !zzjlVar.zzd()) {
                if (next instanceof zzkf) {
                    zzntVar.zza(zzjlVar.zza(), (Object) ((zzkf) next).zza().zzc());
                } else {
                    zzntVar.zza(zzjlVar.zza(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        zzmt<?, ?> zzmtVar = this.zzb;
        zzmtVar.zza((zzmt<?, ?>) zzmtVar.zzd(t6), zzntVar);
    }
}
