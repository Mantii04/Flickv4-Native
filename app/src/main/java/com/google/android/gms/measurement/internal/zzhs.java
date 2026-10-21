package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public final class zzhs extends zzft {

    /* renamed from: a, reason: collision with root package name */
    public final zznd f11742a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f11743b;

    /* renamed from: c, reason: collision with root package name */
    public String f11744c;

    public zzhs(zznd zzndVar) {
        Preconditions.checkNotNull(zzndVar);
        this.f11742a = zzndVar;
        this.f11744c = null;
    }

    public final void a(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        zznd zzndVar = this.f11742a;
        if (zzndVar.zzl().zzg()) {
            runnable.run();
        } else {
            zzndVar.zzl().zzb(runnable);
        }
    }

    public final void b(String str, boolean z6) {
        boolean z7;
        boolean isEmpty = TextUtils.isEmpty(str);
        zznd zzndVar = this.f11742a;
        if (isEmpty) {
            zzndVar.zzj().zzg().zza("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z6) {
            try {
                if (this.f11743b == null) {
                    if (!"com.google.android.gms".equals(this.f11744c) && !UidVerifier.isGooglePlayServicesUid(zzndVar.zza(), Binder.getCallingUid()) && !GoogleSignatureVerifier.getInstance(zzndVar.zza()).isUidGoogleSigned(Binder.getCallingUid())) {
                        z7 = false;
                        this.f11743b = Boolean.valueOf(z7);
                    }
                    z7 = true;
                    this.f11743b = Boolean.valueOf(z7);
                }
                if (this.f11743b.booleanValue()) {
                    return;
                }
            } catch (SecurityException e3) {
                zzndVar.zzj().zzg().zza("Measurement Service called with invalid calling package. appId", zzgb.zza(str));
                throw e3;
            }
        }
        if (this.f11744c == null && GooglePlayServicesUtilLight.uidHasPackageName(zzndVar.zza(), Binder.getCallingUid(), str)) {
            this.f11744c = str;
        }
        if (str.equals(this.f11744c)) {
            return;
        }
        throw new SecurityException("Unknown calling package name '" + str + "'.");
    }

    public final void c(zzn zznVar) {
        Preconditions.checkNotNull(zznVar);
        Preconditions.checkNotEmpty(zznVar.f12154b);
        b(zznVar.f12154b, false);
        this.f11742a.zzq().u(zznVar.f12155e, zznVar.f12170z);
    }

    public final void d(zzbf zzbfVar, zzn zznVar) {
        zznd zzndVar = this.f11742a;
        zzndVar.L();
        zzndVar.l(zzbfVar, zznVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final zzal zza(zzn zznVar) {
        c(zznVar);
        String str = zznVar.f12154b;
        Preconditions.checkNotEmpty(str);
        zznd zzndVar = this.f11742a;
        try {
            return (zzal) zzndVar.zzl().zzb(new zzid(this, zznVar)).get(Renderer.DEFAULT_DURATION_TO_PROGRESS_US, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e3) {
            zzndVar.zzj().zzg().zza("Failed to get consent. appId", zzgb.zza(str), e3);
            return new zzal(null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final String zzb(zzn zznVar) {
        c(zznVar);
        zznd zzndVar = this.f11742a;
        try {
            return (String) zzndVar.zzl().zza(new zznh(zzndVar, zznVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e3) {
            zzndVar.zzj().zzg().zza("Failed to get app instance id. appId", zzgb.zza(zznVar.f12154b), e3);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zzc(zzn zznVar) {
        c(zznVar);
        a(new zzht(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zzd(zzn zznVar) {
        Preconditions.checkNotEmpty(zznVar.f12154b);
        b(zznVar.f12154b, false);
        a(new zzib(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zze(zzn zznVar) {
        Preconditions.checkNotEmpty(zznVar.f12154b);
        Preconditions.checkNotNull(zznVar.f12143E);
        zzie zzieVar = new zzie(this, zznVar);
        Preconditions.checkNotNull(zzieVar);
        zznd zzndVar = this.f11742a;
        if (zzndVar.zzl().zzg()) {
            zzieVar.run();
        } else {
            zzndVar.zzl().zzc(zzieVar);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zzf(zzn zznVar) {
        c(zznVar);
        a(new zzhu(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzmv> zza(zzn zznVar, Bundle bundle) {
        c(zznVar);
        String str = zznVar.f12154b;
        Preconditions.checkNotNull(str);
        zznd zzndVar = this.f11742a;
        try {
            return (List) zzndVar.zzl().zza(new zzik(this, zznVar, bundle)).get();
        } catch (InterruptedException | ExecutionException e3) {
            zzndVar.zzj().zzg().zza("Failed to get trigger URIs. appId", zzgb.zza(str), e3);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzno> zza(zzn zznVar, boolean z6) {
        c(zznVar);
        String str = zznVar.f12154b;
        Preconditions.checkNotNull(str);
        zznd zzndVar = this.f11742a;
        try {
            List<zznq> list = (List) zzndVar.zzl().zza(new zzij(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zznq zznqVar : list) {
                if (!z6 && zznt.M(zznqVar.f12235c)) {
                }
                arrayList.add(new zzno(zznqVar));
            }
            return arrayList;
        } catch (InterruptedException e3) {
            e = e3;
            zzndVar.zzj().zzg().zza("Failed to get user properties. appId", zzgb.zza(str), e);
            return null;
        } catch (ExecutionException e7) {
            e = e7;
            zzndVar.zzj().zzg().zza("Failed to get user properties. appId", zzgb.zza(str), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzac> zza(String str, String str2, zzn zznVar) {
        c(zznVar);
        String str3 = zznVar.f12154b;
        Preconditions.checkNotNull(str3);
        zznd zzndVar = this.f11742a;
        try {
            return (List) zzndVar.zzl().zza(new zzhz(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e3) {
            zzndVar.zzj().zzg().zza("Failed to get conditional user properties", e3);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzac> zza(String str, String str2, String str3) {
        b(str, true);
        zznd zzndVar = this.f11742a;
        try {
            return (List) zzndVar.zzl().zza(new zzic(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e3) {
            zzndVar.zzj().zzg().zza("Failed to get conditional user properties as", e3);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzno> zza(String str, String str2, boolean z6, zzn zznVar) {
        c(zznVar);
        String str3 = zznVar.f12154b;
        Preconditions.checkNotNull(str3);
        zznd zzndVar = this.f11742a;
        try {
            List<zznq> list = (List) zzndVar.zzl().zza(new zzhx(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zznq zznqVar : list) {
                if (!z6 && zznt.M(zznqVar.f12235c)) {
                }
                arrayList.add(new zzno(zznqVar));
            }
            return arrayList;
        } catch (InterruptedException e3) {
            e = e3;
            zzndVar.zzj().zzg().zza("Failed to query user properties. appId", zzgb.zza(str3), e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e7) {
            e = e7;
            zzndVar.zzj().zzg().zza("Failed to query user properties. appId", zzgb.zza(str3), e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzno> zza(String str, String str2, String str3, boolean z6) {
        b(str, true);
        zznd zzndVar = this.f11742a;
        try {
            List<zznq> list = (List) zzndVar.zzl().zza(new zzia(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zznq zznqVar : list) {
                if (!z6 && zznt.M(zznqVar.f12235c)) {
                }
                arrayList.add(new zzno(zznqVar));
            }
            return arrayList;
        } catch (InterruptedException e3) {
            e = e3;
            zzndVar.zzj().zzg().zza("Failed to get user properties as. appId", zzgb.zza(str), e);
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e7) {
            e = e7;
            zzndVar.zzj().zzg().zza("Failed to get user properties as. appId", zzgb.zza(str), e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzbf zzbfVar, zzn zznVar) {
        Preconditions.checkNotNull(zzbfVar);
        c(zznVar);
        a(new zzig(this, zzbfVar, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzbf zzbfVar, String str, String str2) {
        Preconditions.checkNotNull(zzbfVar);
        Preconditions.checkNotEmpty(str);
        b(str, true);
        a(new zzif(this, zzbfVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzac zzacVar, zzn zznVar) {
        Preconditions.checkNotNull(zzacVar);
        Preconditions.checkNotNull(zzacVar.f11166f);
        c(zznVar);
        zzac zzacVar2 = new zzac(zzacVar);
        zzacVar2.f11164b = zznVar.f12154b;
        a(new zzhv(this, zzacVar2, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzac zzacVar) {
        Preconditions.checkNotNull(zzacVar);
        Preconditions.checkNotNull(zzacVar.f11166f);
        Preconditions.checkNotEmpty(zzacVar.f11164b);
        b(zzacVar.f11164b, true);
        a(new zzhy(this, new zzac(zzacVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(long j7, String str, String str2, String str3) {
        a(new zzhw(this, str2, str3, str, j7));
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(final Bundle bundle, zzn zznVar) {
        c(zznVar);
        final String str = zznVar.f12154b;
        Preconditions.checkNotNull(str);
        a(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhr
            @Override // java.lang.Runnable
            public final void run() {
                zzan zzf = zzhs.this.f11742a.zzf();
                zzf.zzt();
                zzf.zzak();
                String str2 = str;
                byte[] zzbv = zzf.g_().e(new zzay(zzf.f11804a, "", str2, "dep", 0L, bundle)).zzbv();
                zzf.zzj().zzp().zza("Saving default event parameters, appId, data size", zzf.zzi().zza(str2), Integer.valueOf(zzbv.length));
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str2);
                contentValues.put("parameters", zzbv);
                try {
                    if (zzf.a().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                        zzf.zzj().zzg().zza("Failed to insert default event parameters (got -1). appId", zzgb.zza(str2));
                    }
                } catch (SQLiteException e3) {
                    zzf.zzj().zzg().zza("Error storing default event parameters. appId", zzgb.zza(str2), e3);
                }
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzno zznoVar, zzn zznVar) {
        Preconditions.checkNotNull(zznoVar);
        c(zznVar);
        a(new zzih(this, zznoVar, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final byte[] zza(zzbf zzbfVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbfVar);
        b(str, true);
        zznd zzndVar = this.f11742a;
        zzgd zzc = zzndVar.zzj().zzc();
        zzfw zzg = zzndVar.zzg();
        String str2 = zzbfVar.f11257b;
        zzc.zza("Log and bundle. event", zzg.zza(str2));
        long nanoTime = zzndVar.zzb().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) zzndVar.zzl().zzb(new zzii(this, zzbfVar, str)).get();
            if (bArr == null) {
                zzndVar.zzj().zzg().zza("Log and bundle returned null. appId", zzgb.zza(str));
                bArr = new byte[0];
            }
            zzndVar.zzj().zzc().zza("Log and bundle processed. event, size, time_ms", zzndVar.zzg().zza(str2), Integer.valueOf(bArr.length), Long.valueOf((zzndVar.zzb().nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException e3) {
            e = e3;
            zzndVar.zzj().zzg().zza("Failed to log and bundle. appId, event, error", zzgb.zza(str), zzndVar.zzg().zza(str2), e);
            return null;
        } catch (ExecutionException e7) {
            e = e7;
            zzndVar.zzj().zzg().zza("Failed to log and bundle. appId, event, error", zzgb.zza(str), zzndVar.zzg().zza(str2), e);
            return null;
        }
    }
}
