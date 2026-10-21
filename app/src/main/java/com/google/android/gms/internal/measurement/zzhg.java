package com.google.android.gms.internal.measurement;

import A.i;
import P3.p;
import P3.v;
import com.google.common.base.Optional;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class zzhg<T> {
    private static volatile zzhr zzb = null;
    private static volatile boolean zzc = false;
    private final zzho zzg;
    private final String zzh;
    private final T zzi;
    private volatile int zzj;
    private volatile T zzk;
    private final boolean zzl;
    private static final Object zza = new Object();
    private static final AtomicReference<Collection<zzhg<?>>> zzd = new AtomicReference<>();
    private static zzhv zze = new zzhv(new zzhu() { // from class: com.google.android.gms.internal.measurement.zzhl
        @Override // com.google.android.gms.internal.measurement.zzhu
        public final boolean zza() {
            return zzhg.zzd();
        }
    });
    private static final AtomicInteger zzf = new AtomicInteger();

    public static /* synthetic */ zzhg zza(zzho zzhoVar, String str, Boolean bool, boolean z6) {
        return new zzhn(zzhoVar, str, bool, true);
    }

    private final T zzb(zzhr zzhrVar) {
        Object zza2;
        zzgy zza3 = this.zzg.zzb != null ? zzhf.zza(zzhrVar.zza(), this.zzg.zzb) ? this.zzg.zzg ? zzgr.zza(zzhrVar.zza().getContentResolver(), zzhh.zza(zzhh.zza(zzhrVar.zza(), this.zzg.zzb.getLastPathSegment())), new Runnable() { // from class: com.google.android.gms.internal.measurement.zzhj
            @Override // java.lang.Runnable
            public final void run() {
                zzhg.zzc();
            }
        }) : zzgr.zza(zzhrVar.zza().getContentResolver(), this.zzg.zzb, new Runnable() { // from class: com.google.android.gms.internal.measurement.zzhj
            @Override // java.lang.Runnable
            public final void run() {
                zzhg.zzc();
            }
        }) : null : zzht.zza(zzhrVar.zza(), this.zzg.zza, new Runnable() { // from class: com.google.android.gms.internal.measurement.zzhj
            @Override // java.lang.Runnable
            public final void run() {
                zzhg.zzc();
            }
        });
        if (zza3 == null || (zza2 = zza3.zza(zzb())) == null) {
            return null;
        }
        return zza(zza2);
    }

    public static void zzc() {
        zzf.incrementAndGet();
    }

    public static /* synthetic */ boolean zzd() {
        return true;
    }

    public abstract T zza(Object obj);

    private zzhg(zzho zzhoVar, String str, T t6, boolean z6) {
        this.zzj = -1;
        String str2 = zzhoVar.zza;
        if (str2 == null && zzhoVar.zzb == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (str2 != null && zzhoVar.zzb != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.zzg = zzhoVar;
        this.zzh = str;
        this.zzi = t6;
        this.zzl = z6;
    }

    public static /* synthetic */ zzhg zza(zzho zzhoVar, String str, Double d7, boolean z6) {
        return new zzhm(zzhoVar, str, d7, true);
    }

    public static /* synthetic */ zzhg zza(zzho zzhoVar, String str, Long l7, boolean z6) {
        return new zzhk(zzhoVar, str, l7, true);
    }

    public static /* synthetic */ zzhg zza(zzho zzhoVar, String str, String str2, boolean z6) {
        return new zzhp(zzhoVar, str, str2, true);
    }

    public final T zza() {
        T zzb2;
        if (!this.zzl) {
            v.checkState(zze.zza(this.zzh), "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error.");
        }
        int i2 = zzf.get();
        if (this.zzj < i2) {
            synchronized (this) {
                try {
                    if (this.zzj < i2) {
                        zzhr zzhrVar = zzb;
                        Optional absent = Optional.absent();
                        String str = null;
                        if (zzhrVar != null) {
                            absent = (Optional) zzhrVar.zzb().get();
                            if (absent.isPresent()) {
                                zzhe zzheVar = (zzhe) absent.get();
                                zzho zzhoVar = this.zzg;
                                str = zzheVar.zza(zzhoVar.zzb, zzhoVar.zza, zzhoVar.zzd, this.zzh);
                            }
                        }
                        v.checkState(zzhrVar != null, "Must call PhenotypeFlagInitializer.maybeInit() first");
                        if (!this.zzg.zzf ? (zzb2 = zzb(zzhrVar)) == null && (zzb2 = zza(zzhrVar)) == null : (zzb2 = zza(zzhrVar)) == null && (zzb2 = zzb(zzhrVar)) == null) {
                            zzb2 = this.zzi;
                        }
                        if (absent.isPresent()) {
                            zzb2 = str == null ? this.zzi : zza((Object) str);
                        }
                        this.zzk = zzb2;
                        this.zzj = i2;
                    }
                } finally {
                }
            }
        }
        return this.zzk;
    }

    public final String zzb() {
        return zza(this.zzg.zzd);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0048, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004d, code lost:
    
        throw r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void zzb(final android.content.Context r3) {
        /*
            com.google.android.gms.internal.measurement.zzhr r0 = com.google.android.gms.internal.measurement.zzhg.zzb
            if (r0 != 0) goto L4e
            if (r3 != 0) goto L7
            goto L4e
        L7:
            java.lang.Object r0 = com.google.android.gms.internal.measurement.zzhg.zza
            monitor-enter(r0)
            com.google.android.gms.internal.measurement.zzhr r1 = com.google.android.gms.internal.measurement.zzhg.zzb     // Catch: java.lang.Throwable -> L48
            if (r1 != 0) goto L4a
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.internal.measurement.zzhr r1 = com.google.android.gms.internal.measurement.zzhg.zzb     // Catch: java.lang.Throwable -> L22
            android.content.Context r2 = r3.getApplicationContext()     // Catch: java.lang.Throwable -> L22
            if (r2 != 0) goto L18
            goto L19
        L18:
            r3 = r2
        L19:
            if (r1 == 0) goto L24
            android.content.Context r2 = r1.zza()     // Catch: java.lang.Throwable -> L22
            if (r2 == r3) goto L44
            goto L24
        L22:
            r3 = move-exception
            goto L46
        L24:
            if (r1 == 0) goto L2f
            com.google.android.gms.internal.measurement.zzgr.zzc()     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.internal.measurement.zzht.zza()     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.internal.measurement.zzgz.zza()     // Catch: java.lang.Throwable -> L22
        L2f:
            com.google.android.gms.internal.measurement.zzhi r1 = new com.google.android.gms.internal.measurement.zzhi     // Catch: java.lang.Throwable -> L22
            r1.<init>()     // Catch: java.lang.Throwable -> L22
            P3.C r1 = com.google.common.base.c.memoize(r1)     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.internal.measurement.zzgs r2 = new com.google.android.gms.internal.measurement.zzgs     // Catch: java.lang.Throwable -> L22
            r2.<init>(r3, r1)     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.internal.measurement.zzhg.zzb = r2     // Catch: java.lang.Throwable -> L22
            java.util.concurrent.atomic.AtomicInteger r3 = com.google.android.gms.internal.measurement.zzhg.zzf     // Catch: java.lang.Throwable -> L22
            r3.incrementAndGet()     // Catch: java.lang.Throwable -> L22
        L44:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L22
            goto L4a
        L46:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L22
            throw r3     // Catch: java.lang.Throwable -> L48
        L48:
            r3 = move-exception
            goto L4c
        L4a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L48
            return
        L4c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L48
            throw r3
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhg.zzb(android.content.Context):void");
    }

    private final T zza(zzhr zzhrVar) {
        p pVar;
        zzho zzhoVar = this.zzg;
        if (!zzhoVar.zze && ((pVar = zzhoVar.zzh) == null || ((Boolean) pVar.apply(zzhrVar.zza())).booleanValue())) {
            zzgz zza2 = zzgz.zza(zzhrVar.zza());
            zzho zzhoVar2 = this.zzg;
            Object zza3 = zza2.zza(zzhoVar2.zze ? null : zza(zzhoVar2.zzc));
            if (zza3 != null) {
                return zza(zza3);
            }
        }
        return null;
    }

    private final String zza(String str) {
        return (str == null || !str.isEmpty()) ? i.B(str, this.zzh) : this.zzh;
    }
}
