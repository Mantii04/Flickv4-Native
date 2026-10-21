package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import b.c;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzqv;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zznb extends zzmz {
    public final Uri.Builder a(String str) {
        zzgy zzm = zzm();
        zzm.zzt();
        zzm.o(str);
        String str2 = (String) zzm.f11660l.get(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(zze().zzd(str, zzbh.f11310Y));
        if (TextUtils.isEmpty(str2)) {
            builder.authority(zze().zzd(str, zzbh.f11312Z));
        } else {
            builder.authority(str2 + "." + zze().zzd(str, zzbh.f11312Z));
        }
        builder.path(zze().zzd(str, zzbh.f11315a0));
        return builder;
    }

    public final String b(String str) {
        zzgy zzm = zzm();
        zzm.zzt();
        zzm.o(str);
        String str2 = (String) zzm.f11660l.get(str);
        if (TextUtils.isEmpty(str2)) {
            return (String) zzbh.f11350r.zza(null);
        }
        Uri parse = Uri.parse((String) zzbh.f11350r.zza(null));
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.authority(str2 + "." + parse.getAuthority());
        return buildUpon.build().toString();
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zznm g_() {
        return super.g_();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final Pair<zzna, Boolean> zzb(String str) {
        zzf zze;
        if (zzqv.zza() && zze().zza(zzbh.f11355t0)) {
            zzq();
            if (zznt.L(str)) {
                zzj().zzp().zza("sgtm feature flag enabled.");
                zzf zze2 = zzh().zze(str);
                if (zze2 == null) {
                    return Pair.create(new zzna(b(str)), Boolean.TRUE);
                }
                String zzab = zze2.zzab();
                zzfn.zzd zzc = zzm().zzc(str);
                if (zzc == null || (zze = zzh().zze(str)) == null || ((!zzc.zzr() || zzc.zzh().zza() != 100) && !zzq().J(str, zze.zzak()) && (TextUtils.isEmpty(zzab) || zzab.hashCode() % 100 >= zzc.zzh().zza()))) {
                    return Pair.create(new zzna(b(str)), Boolean.TRUE);
                }
                zzna zznaVar = null;
                if (zze2.zzar()) {
                    zzj().zzp().zza("sgtm upload enabled in manifest.");
                    zzfn.zzd zzc2 = zzm().zzc(zze2.zzaa());
                    if (zzc2 != null && zzc2.zzr()) {
                        String zze3 = zzc2.zzh().zze();
                        if (!TextUtils.isEmpty(zze3)) {
                            String zzd = zzc2.zzh().zzd();
                            zzj().zzp().zza("sgtm configured with upload_url, server_info", zze3, TextUtils.isEmpty(zzd) ? "Y" : "N");
                            if (TextUtils.isEmpty(zzd)) {
                                zznaVar = new zzna(zze3);
                            } else {
                                HashMap p6 = c.p("x-sgtm-server-info", zzd);
                                if (!TextUtils.isEmpty(zze2.zzak())) {
                                    p6.put("x-gtm-server-preview", zze2.zzak());
                                }
                                zznaVar = new zzna();
                                zznaVar.f12171a = zze3;
                                zznaVar.f12172b = p6;
                            }
                        }
                    }
                }
                if (zznaVar != null) {
                    return Pair.create(zznaVar, Boolean.FALSE);
                }
            }
        }
        return Pair.create(new zzna(b(str)), Boolean.TRUE);
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
    public final /* bridge */ /* synthetic */ zzgy zzm() {
        return super.zzm();
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

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }
}
