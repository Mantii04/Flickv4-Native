package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
public final class zzgi {
    private static zzgh zza;

    public static synchronized zzgh zza() {
        zzgh zzghVar;
        synchronized (zzgi.class) {
            try {
                if (zza == null) {
                    zza(new zzgk());
                }
                zzghVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzghVar;
    }

    private static synchronized void zza(zzgh zzghVar) {
        synchronized (zzgi.class) {
            if (zza == null) {
                zza = zzghVar;
            } else {
                throw new IllegalStateException("init() already called");
            }
        }
    }
}
