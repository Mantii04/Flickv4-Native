package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.Clock;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class zzmd extends zzmy {

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f12089d;

    /* renamed from: e, reason: collision with root package name */
    public final zzgr f12090e;

    /* renamed from: f, reason: collision with root package name */
    public final zzgr f12091f;

    /* renamed from: g, reason: collision with root package name */
    public final zzgr f12092g;

    /* renamed from: h, reason: collision with root package name */
    public final zzgr f12093h;

    /* renamed from: i, reason: collision with root package name */
    public final zzgr f12094i;

    public zzmd(zznd zzndVar) {
        super(zzndVar);
        this.f12089d = new HashMap();
        zzgm zzk = zzk();
        Objects.requireNonNull(zzk);
        this.f12090e = new zzgr(zzk, "last_delete_stale", 0L);
        zzgm zzk2 = zzk();
        Objects.requireNonNull(zzk2);
        this.f12091f = new zzgr(zzk2, "backoff", 0L);
        zzgm zzk3 = zzk();
        Objects.requireNonNull(zzk3);
        this.f12092g = new zzgr(zzk3, "last_upload", 0L);
        zzgm zzk4 = zzk();
        Objects.requireNonNull(zzk4);
        this.f12093h = new zzgr(zzk4, "last_upload_attempt", 0L);
        zzgm zzk5 = zzk();
        Objects.requireNonNull(zzk5);
        this.f12094i = new zzgr(zzk5, "midnight_offset", 0L);
    }

    public final String a(String str, boolean z6) {
        zzt();
        String str2 = z6 ? (String) b(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest P6 = zznt.P();
        if (P6 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, P6.digest(str2.getBytes())));
    }

    public final Pair b(String str) {
        zzmc zzmcVar;
        AdvertisingIdClient.Info info;
        zzt();
        long elapsedRealtime = zzb().elapsedRealtime();
        HashMap hashMap = this.f12089d;
        zzmc zzmcVar2 = (zzmc) hashMap.get(str);
        if (zzmcVar2 != null && elapsedRealtime < zzmcVar2.f12088c) {
            return new Pair(zzmcVar2.f12086a, Boolean.valueOf(zzmcVar2.f12087b));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        zzae zze = zze();
        zze.getClass();
        long zzc = zze.zzc(str, zzbh.f11317b) + elapsedRealtime;
        try {
            long zzc2 = zze().zzc(str, zzbh.f11320c);
            if (zzc2 > 0) {
                try {
                    info = AdvertisingIdClient.getAdvertisingIdInfo(zza());
                } catch (PackageManager.NameNotFoundException unused) {
                    if (zzmcVar2 != null && elapsedRealtime < zzmcVar2.f12088c + zzc2) {
                        return new Pair(zzmcVar2.f12086a, Boolean.valueOf(zzmcVar2.f12087b));
                    }
                    info = null;
                }
            } else {
                info = AdvertisingIdClient.getAdvertisingIdInfo(zza());
            }
        } catch (Exception e3) {
            zzj().zzc().zza("Unable to get advertising id", e3);
            zzmcVar = new zzmc(zzc, "", false);
        }
        if (info == null) {
            return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String id = info.getId();
        zzmcVar = id != null ? new zzmc(zzc, id, info.isLimitAdTrackingEnabled()) : new zzmc(zzc, "", info.isLimitAdTrackingEnabled());
        hashMap.put(str, zzmcVar);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair(zzmcVar.f12086a, Boolean.valueOf(zzmcVar.f12087b));
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zznm g_() {
        return super.g_();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzmy
    public final boolean zzc() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzad zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzae zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zzan zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzfw zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzgb zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzgm zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzhh zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zzmd zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }
}
