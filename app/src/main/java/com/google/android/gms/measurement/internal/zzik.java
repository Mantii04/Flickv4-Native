package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzpy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzik implements Callable<List<zzmv>> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzn f11800b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Bundle f11801e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzhs f11802f;

    public zzik(zzhs zzhsVar, zzn zznVar, Bundle bundle) {
        this.f11800b = zznVar;
        this.f11801e = bundle;
        this.f11802f = zzhsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzmv> call() throws Exception {
        String str;
        zzhs zzhsVar = this.f11802f;
        zzhsVar.f11742a.L();
        zznd zzndVar = zzhsVar.f11742a;
        zzndVar.zzl().zzt();
        if (zzpy.zza()) {
            zzae zze = zzndVar.zze();
            zzn zznVar = this.f11800b;
            if (zze.zze(zznVar.f12154b, zzbh.f11271E0) && (str = zznVar.f12154b) != null) {
                Bundle bundle = this.f11801e;
                if (bundle != null) {
                    int[] intArray = bundle.getIntArray("uriSources");
                    long[] longArray = bundle.getLongArray("uriTimestamps");
                    if (intArray != null) {
                        if (longArray == null || longArray.length != intArray.length) {
                            zzndVar.zzj().zzg().zza("Uri sources and timestamps do not match");
                        } else {
                            for (int i2 = 0; i2 < intArray.length; i2++) {
                                zzan zzf = zzndVar.zzf();
                                int i7 = intArray[i2];
                                long j7 = longArray[i2];
                                Preconditions.checkNotEmpty(str);
                                zzf.zzt();
                                zzf.zzak();
                                try {
                                    int delete = zzf.a().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i7), String.valueOf(j7)});
                                    zzf.zzj().zzp().zza("Pruned " + delete + " trigger URIs. appId, source, timestamp", str, Integer.valueOf(i7), Long.valueOf(j7));
                                } catch (SQLiteException e3) {
                                    zzf.zzj().zzg().zza("Error pruning trigger URIs. appId", zzgb.zza(str), e3);
                                }
                            }
                        }
                    }
                }
                return zzndVar.zzf().zzi(str);
            }
        }
        return new ArrayList();
    }
}
