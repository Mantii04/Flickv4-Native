package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
public final class zzci {
    private static zzch zza = new zzck();

    public static synchronized zzch zza() {
        zzch zzchVar;
        synchronized (zzci.class) {
            zzchVar = zza;
        }
        return zzchVar;
    }
}
