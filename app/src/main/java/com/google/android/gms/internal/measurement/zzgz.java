package com.google.android.gms.internal.measurement;

import A.n;
import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;

/* loaded from: classes2.dex */
final class zzgz implements zzgy {
    private static zzgz zza;
    private final Context zzb;
    private final ContentObserver zzc;

    private zzgz() {
        this.zzb = null;
        this.zzc = null;
    }

    public static zzgz zza(Context context) {
        zzgz zzgzVar;
        synchronized (zzgz.class) {
            try {
                if (zza == null) {
                    zza = n.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzgz(context) : new zzgz();
                }
                zzgzVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzgzVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzgy
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final String zza(final String str) {
        Context context = this.zzb;
        if (context != null && !zzgp.zza(context)) {
            try {
                return (String) zzgx.zza(new zzha() { // from class: com.google.android.gms.internal.measurement.zzhc
                    @Override // com.google.android.gms.internal.measurement.zzha
                    public final Object zza() {
                        return zzgz.this.zzb(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e3) {
                Log.e("GservicesLoader", "Unable to read GServices for: " + str, e3);
            }
        }
        return null;
    }

    public final /* synthetic */ String zzb(String str) {
        return zzgg.zza(this.zzb.getContentResolver(), str, null);
    }

    private zzgz(Context context) {
        this.zzb = context;
        zzhb zzhbVar = new zzhb(this, null);
        this.zzc = zzhbVar;
        context.getContentResolver().registerContentObserver(zzgf.zza, true, zzhbVar);
    }

    public static synchronized void zza() {
        Context context;
        synchronized (zzgz.class) {
            try {
                zzgz zzgzVar = zza;
                if (zzgzVar != null && (context = zzgzVar.zzb) != null && zzgzVar.zzc != null) {
                    context.getContentResolver().unregisterContentObserver(zza.zzc);
                }
                zza = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
