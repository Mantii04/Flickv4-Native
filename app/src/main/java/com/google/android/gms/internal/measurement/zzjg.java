package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjt;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.Settings;

/* loaded from: classes2.dex */
public class zzjg {
    static final zzjg zza = new zzjg(true);
    private static volatile boolean zzb = false;
    private static boolean zzc = true;
    private static volatile zzjg zzd;
    private final Map<zza, zzjt.zzd<?, ?>> zze;

    public static final class zza {
        private final Object zza;
        private final int zzb;

        public zza(Object obj, int i2) {
            this.zza = obj;
            this.zzb = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.zza == zzaVar.zza && this.zzb == zzaVar.zzb;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.zza) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.zzb;
        }
    }

    public zzjg() {
        this.zze = new HashMap();
    }

    public static zzjg zza() {
        zzjg zzjgVar = zzd;
        if (zzjgVar != null) {
            return zzjgVar;
        }
        synchronized (zzjg.class) {
            try {
                zzjg zzjgVar2 = zzd;
                if (zzjgVar2 != null) {
                    return zzjgVar2;
                }
                zzjg zza2 = zzjs.zza(zzjg.class);
                zzd = zza2;
                return zza2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private zzjg(boolean z6) {
        this.zze = Collections.EMPTY_MAP;
    }

    public final <ContainingType extends zzlg> zzjt.zzd<ContainingType, ?> zza(ContainingType containingtype, int i2) {
        return (zzjt.zzd) this.zze.get(new zza(containingtype, i2));
    }
}
