package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import b.c;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.measurement.internal.zziq;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import p.g;
import p.p;

/* loaded from: classes2.dex */
public final class zzgy extends zzmy implements zzag {

    /* renamed from: d, reason: collision with root package name */
    public final g f11652d;

    /* renamed from: e, reason: collision with root package name */
    public final g f11653e;

    /* renamed from: f, reason: collision with root package name */
    public final g f11654f;

    /* renamed from: g, reason: collision with root package name */
    public final g f11655g;

    /* renamed from: h, reason: collision with root package name */
    public final g f11656h;

    /* renamed from: i, reason: collision with root package name */
    public final g f11657i;

    /* renamed from: j, reason: collision with root package name */
    public final p f11658j;

    /* renamed from: k, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.zzv f11659k;

    /* renamed from: l, reason: collision with root package name */
    public final g f11660l;

    /* renamed from: m, reason: collision with root package name */
    public final g f11661m;

    /* renamed from: n, reason: collision with root package name */
    public final g f11662n;

    public zzgy(zznd zzndVar) {
        super(zzndVar);
        this.f11652d = new g();
        this.f11653e = new g();
        this.f11654f = new g();
        this.f11655g = new g();
        this.f11656h = new g();
        this.f11660l = new g();
        this.f11661m = new g();
        this.f11662n = new g();
        this.f11657i = new g();
        this.f11658j = new zzhe(this);
        this.f11659k = new zzhd(this);
    }

    public static zziq.zza c(zzfn.zza.zze zzeVar) {
        int i2 = zzhf.f11675b[zzeVar.ordinal()];
        if (i2 == 1) {
            return zziq.zza.AD_STORAGE;
        }
        if (i2 == 2) {
            return zziq.zza.ANALYTICS_STORAGE;
        }
        if (i2 == 3) {
            return zziq.zza.AD_USER_DATA;
        }
        if (i2 != 4) {
            return null;
        }
        return zziq.zza.AD_PERSONALIZATION;
    }

    public static g d(zzfn.zzd zzdVar) {
        g gVar = new g();
        if (zzdVar != null) {
            for (zzfn.zzg zzgVar : zzdVar.zzn()) {
                gVar.put(zzgVar.zzb(), zzgVar.zzc());
            }
        }
        return gVar;
    }

    public final zzfn.zzd a(String str, byte[] bArr) {
        if (bArr == null) {
            return zzfn.zzd.zzg();
        }
        try {
            zzfn.zzd zzdVar = (zzfn.zzd) ((com.google.android.gms.internal.measurement.zzjt) ((zzfn.zzd.zza) zznm.g(zzfn.zzd.zze(), bArr)).zzah());
            zzj().zzp().zza("Parsed config. version, gmp_app_id", zzdVar.zzs() ? Long.valueOf(zzdVar.zzc()) : null, zzdVar.zzq() ? zzdVar.zzi() : null);
            return zzdVar;
        } catch (com.google.android.gms.internal.measurement.zzkb e3) {
            zzj().zzu().zza("Unable to merge remote config. appId", zzgb.zza(str), e3);
            return zzfn.zzd.zzg();
        } catch (RuntimeException e7) {
            zzj().zzu().zza("Unable to merge remote config. appId", zzgb.zza(str), e7);
            return zzfn.zzd.zzg();
        }
    }

    public final zzip b(String str, zziq.zza zzaVar) {
        zzt();
        o(str);
        zzfn.zza h7 = h(str);
        zzip zzipVar = zzip.f11805b;
        if (h7 != null) {
            Iterator<zzfn.zza.zzb> it = h7.zzf().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                zzfn.zza.zzb next = it.next();
                if (c(next.zzc()) == zzaVar) {
                    int i2 = zzhf.f11676c[next.zzb().ordinal()];
                    if (i2 == 1) {
                        return zzip.f11807f;
                    }
                    if (i2 == 2) {
                        return zzip.f11808j;
                    }
                }
            }
        }
        return zzipVar;
    }

    public final void e(String str, zzfn.zzd.zza zzaVar) {
        HashSet hashSet = new HashSet();
        g gVar = new g();
        g gVar2 = new g();
        g gVar3 = new g();
        if (zzaVar != null) {
            Iterator<zzfn.zzb> it = zzaVar.zze().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().zzb());
            }
            for (int i2 = 0; i2 < zzaVar.zza(); i2++) {
                zzfn.zzc.zza zzby = zzaVar.zza(i2).zzby();
                if (zzby.zzb().isEmpty()) {
                    zzj().zzu().zza("EventConfig contained null event name");
                } else {
                    String zzb = zzby.zzb();
                    String zzb2 = zzit.zzb(zzby.zzb());
                    if (!TextUtils.isEmpty(zzb2)) {
                        zzby = zzby.zza(zzb2);
                        zzaVar.zza(i2, zzby);
                    }
                    if (zzby.zze() && zzby.zzc()) {
                        gVar.put(zzb, Boolean.TRUE);
                    }
                    if (zzby.zzf() && zzby.zzd()) {
                        gVar2.put(zzby.zzb(), Boolean.TRUE);
                    }
                    if (zzby.zzg()) {
                        if (zzby.zza() < 2 || zzby.zza() > 65535) {
                            zzj().zzu().zza("Invalid sampling rate. Event name, sample rate", zzby.zzb(), Integer.valueOf(zzby.zza()));
                        } else {
                            gVar3.put(zzby.zzb(), Integer.valueOf(zzby.zza()));
                        }
                    }
                }
            }
        }
        this.f11653e.put(str, hashSet);
        this.f11654f.put(str, gVar);
        this.f11655g.put(str, gVar2);
        this.f11657i.put(str, gVar3);
    }

    public final void f(final String str, zzfn.zzd zzdVar) {
        int zza = zzdVar.zza();
        p pVar = this.f11658j;
        if (zza == 0) {
            pVar.remove(str);
            return;
        }
        zzj().zzp().zza("EES programs found", Integer.valueOf(zzdVar.zza()));
        zzgb.zzc zzcVar = zzdVar.zzm().get(0);
        try {
            com.google.android.gms.internal.measurement.zzb zzbVar = new com.google.android.gms.internal.measurement.zzb();
            zzbVar.zza("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzgz
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new com.google.android.gms.internal.measurement.zzm("internal.remoteConfig", new zzhg(zzgy.this, str));
                }
            });
            zzbVar.zza("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhc
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    final zzgy zzgyVar = zzgy.this;
                    final String str2 = str;
                    return new com.google.android.gms.internal.measurement.zzx("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzha
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            zzan zzh = zzgy.this.zzh();
                            String str3 = str2;
                            zzf zze = zzh.zze(str3);
                            HashMap q6 = c.q("platform", "android", "package_name", str3);
                            q6.put("gmp_version", 87000L);
                            if (zze != null) {
                                String zzad = zze.zzad();
                                if (zzad != null) {
                                    q6.put("app_version", zzad);
                                }
                                q6.put("app_version_int", Long.valueOf(zze.zze()));
                                q6.put("dynamite_version", Long.valueOf(zze.zzo()));
                            }
                            return q6;
                        }
                    });
                }
            });
            zzbVar.zza("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhb
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new com.google.android.gms.internal.measurement.zzr(zzgy.this.f11659k);
                }
            });
            zzbVar.zza(zzcVar);
            pVar.put(str, zzbVar);
            zzj().zzp().zza("EES program loaded for appId, activities", str, Integer.valueOf(zzcVar.zza().zza()));
            Iterator<zzgb.zzb> it = zzcVar.zza().zzd().iterator();
            while (it.hasNext()) {
                zzj().zzp().zza("EES program activity", it.next().zzb());
            }
        } catch (com.google.android.gms.internal.measurement.zzc unused) {
            zzj().zzg().zza("Failed to load EES program. appId", str);
        }
    }

    public final int g(String str, String str2) {
        Integer num;
        zzt();
        o(str);
        Map map = (Map) this.f11657i.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zznm g_() {
        return super.g_();
    }

    public final zzfn.zza h(String str) {
        zzt();
        o(str);
        zzfn.zzd zzc = zzc(str);
        if (zzc == null || !zzc.zzp()) {
            return null;
        }
        return zzc.zzd();
    }

    public final zziq.zza i(String str) {
        zziq.zza zzaVar = zziq.zza.AD_USER_DATA;
        zzt();
        o(str);
        zzfn.zza h7 = h(str);
        if (h7 == null) {
            return null;
        }
        for (zzfn.zza.zzc zzcVar : h7.zze()) {
            if (zzaVar == c(zzcVar.zzc())) {
                return c(zzcVar.zzb());
            }
        }
        return null;
    }

    public final boolean j(String str, zziq.zza zzaVar) {
        zzt();
        o(str);
        zzfn.zza h7 = h(str);
        if (h7 == null) {
            return false;
        }
        for (zzfn.zza.zzb zzbVar : h7.zzd()) {
            if (zzaVar == c(zzbVar.zzc())) {
                return zzbVar.zzb() == zzfn.zza.zzd.GRANTED;
            }
        }
        return false;
    }

    public final boolean k(String str, String str2) {
        Boolean bool;
        zzt();
        o(str);
        if ("ecommerce_purchase".equals(str2) || FirebaseAnalytics.Event.PURCHASE.equals(str2) || FirebaseAnalytics.Event.REFUND.equals(str2)) {
            return true;
        }
        Map map = (Map) this.f11655g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean l(String str, String str2) {
        Boolean bool;
        zzt();
        o(str);
        if ("1".equals(zza(str, "measurement.upload.blacklist_internal")) && zznt.M(str2)) {
            return true;
        }
        if ("1".equals(zza(str, "measurement.upload.blacklist_public")) && zznt.N(str2)) {
            return true;
        }
        Map map = (Map) this.f11654f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean m(String str) {
        zzt();
        o(str);
        g gVar = this.f11653e;
        return gVar.get(str) != null && ((Set) gVar.get(str)).contains("app_instance_id");
    }

    public final boolean n(String str) {
        zzt();
        o(str);
        g gVar = this.f11653e;
        if (gVar.get(str) != null) {
            return ((Set) gVar.get(str)).contains("os_version") || ((Set) gVar.get(str)).contains("device_info");
        }
        return false;
    }

    public final void o(String str) {
        zzak();
        zzt();
        Preconditions.checkNotEmpty(str);
        g gVar = this.f11656h;
        if (gVar.get(str) == null) {
            zzap zzf = zzh().zzf(str);
            g gVar2 = this.f11662n;
            g gVar3 = this.f11661m;
            g gVar4 = this.f11660l;
            g gVar5 = this.f11652d;
            if (zzf != null) {
                zzfn.zzd.zza zzby = a(str, zzf.f11213a).zzby();
                e(str, zzby);
                gVar5.put(str, d((zzfn.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzby.zzah())));
                gVar.put(str, (zzfn.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzby.zzah()));
                f(str, (zzfn.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzby.zzah()));
                gVar4.put(str, zzby.zzc());
                gVar3.put(str, zzf.f11214b);
                gVar2.put(str, zzf.f11215c);
                return;
            }
            gVar5.put(str, null);
            this.f11654f.put(str, null);
            this.f11653e.put(str, null);
            this.f11655g.put(str, null);
            gVar.put(str, null);
            gVar4.put(str, null);
            gVar3.put(str, null);
            gVar2.put(str, null);
            this.f11657i.put(str, null);
        }
    }

    public final long zza(String str) {
        String zza = zza(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(zza)) {
            return 0L;
        }
        try {
            return Long.parseLong(zza);
        } catch (NumberFormatException e3) {
            zzj().zzu().zza("Unable to parse timezone offset. appId", zzgb.zza(str), e3);
            return 0L;
        }
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

    public final zzfn.zzd zzc(String str) {
        zzak();
        zzt();
        Preconditions.checkNotEmpty(str);
        o(str);
        return (zzfn.zzd) this.f11656h.get(str);
    }

    public final String zzd(String str) {
        zzt();
        return (String) this.f11662n.get(str);
    }

    public final String zze(String str) {
        zzt();
        return (String) this.f11661m.get(str);
    }

    public final void zzi(String str) {
        zzt();
        this.f11661m.put(str, null);
    }

    public final boolean zzl(String str) {
        zzfn.zzd zzdVar;
        return (TextUtils.isEmpty(str) || (zzdVar = (zzfn.zzd) this.f11656h.get(str)) == null || zzdVar.zza() == 0) ? false : true;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    public final String zza(String str, String str2) {
        zzt();
        o(str);
        Map map = (Map) this.f11652d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    public final boolean zza(String str, byte[] bArr, String str2, String str3) {
        byte[] bArr2;
        boolean z6;
        boolean z7;
        zzfh.zzb.zza zzaVar;
        zzak();
        zzt();
        Preconditions.checkNotEmpty(str);
        zzfn.zzd.zza zzby = a(str, bArr).zzby();
        int i2 = 0;
        if (zzby == null) {
            return false;
        }
        e(str, zzby);
        f(str, (zzfn.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzby.zzah()));
        g gVar = this.f11656h;
        gVar.put(str, (zzfn.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzby.zzah()));
        this.f11660l.put(str, zzby.zzc());
        this.f11661m.put(str, str2);
        this.f11662n.put(str, str3);
        this.f11652d.put(str, d((zzfn.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzby.zzah())));
        zzan zzh = zzh();
        ArrayList arrayList = new ArrayList(zzby.zzd());
        zzh.getClass();
        Preconditions.checkNotNull(arrayList);
        int i7 = 0;
        while (i7 < arrayList.size()) {
            zzfh.zza.C0004zza zzby2 = ((zzfh.zza) arrayList.get(i7)).zzby();
            if (zzby2.zza() != 0) {
                while (i2 < zzby2.zza()) {
                    zzfh.zzb.zza zzby3 = zzby2.zza(i2).zzby();
                    zzfh.zzb.zza zzaVar2 = (zzfh.zzb.zza) ((zzjt.zza) zzby3.clone());
                    zzfn.zzd.zza zzaVar3 = zzby;
                    String zzb = zzit.zzb(zzby3.zzb());
                    if (zzb != null) {
                        zzaVar2.zza(zzb);
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    boolean z8 = z7;
                    g gVar2 = gVar;
                    int i8 = 0;
                    while (i8 < zzby3.zza()) {
                        zzfh.zzc zza = zzby3.zza(i8);
                        String zza2 = zzis.zza(zza.zze());
                        if (zza2 != null) {
                            zzaVar = zzby3;
                            zzaVar2.zza(i8, (zzfh.zzc) ((com.google.android.gms.internal.measurement.zzjt) zza.zzby().zza(zza2).zzah()));
                            z8 = true;
                        } else {
                            zzaVar = zzby3;
                        }
                        i8++;
                        zzby3 = zzaVar;
                    }
                    if (z8) {
                        zzfh.zza.C0004zza zza3 = zzby2.zza(i2, zzaVar2);
                        arrayList.set(i7, (zzfh.zza) ((com.google.android.gms.internal.measurement.zzjt) zza3.zzah()));
                        zzby2 = zza3;
                    }
                    i2++;
                    zzby = zzaVar3;
                    gVar = gVar2;
                }
            }
            zzfn.zzd.zza zzaVar4 = zzby;
            g gVar3 = gVar;
            if (zzby2.zzb() != 0) {
                for (int i9 = 0; i9 < zzby2.zzb(); i9++) {
                    zzfh.zze zzb2 = zzby2.zzb(i9);
                    String zza4 = zziv.zza(zzb2.zze());
                    if (zza4 != null) {
                        zzfh.zza.C0004zza zza5 = zzby2.zza(i9, zzb2.zzby().zza(zza4));
                        arrayList.set(i7, (zzfh.zza) ((com.google.android.gms.internal.measurement.zzjt) zza5.zzah()));
                        zzby2 = zza5;
                    }
                }
            }
            i7++;
            zzby = zzaVar4;
            gVar = gVar3;
            i2 = 0;
        }
        zzfn.zzd.zza zzaVar5 = zzby;
        g gVar4 = gVar;
        zzh.zzak();
        zzh.zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(arrayList);
        SQLiteDatabase a7 = zzh.a();
        a7.beginTransaction();
        try {
            zzh.zzak();
            zzh.zzt();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase a8 = zzh.a();
            a8.delete("property_filters", "app_id=?", new String[]{str});
            a8.delete("event_filters", "app_id=?", new String[]{str});
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                zzfh.zza zzaVar6 = (zzfh.zza) it.next();
                zzh.zzak();
                zzh.zzt();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzaVar6);
                if (!zzaVar6.zzg()) {
                    zzh.zzj().zzu().zza("Audience with no ID. appId", zzgb.zza(str));
                } else {
                    int zza6 = zzaVar6.zza();
                    Iterator<zzfh.zzb> it2 = zzaVar6.zze().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (!it2.next().zzl()) {
                                zzh.zzj().zzu().zza("Event filter with no ID. Audience definition ignored. appId, audienceId", zzgb.zza(str), Integer.valueOf(zza6));
                                break;
                            }
                        } else {
                            Iterator<zzfh.zze> it3 = zzaVar6.zzf().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (!it3.next().zzi()) {
                                        zzh.zzj().zzu().zza("Property filter with no ID. Audience definition ignored. appId, audienceId", zzgb.zza(str), Integer.valueOf(zza6));
                                        break;
                                    }
                                } else {
                                    Iterator<zzfh.zzb> it4 = zzaVar6.zze().iterator();
                                    while (true) {
                                        if (!it4.hasNext()) {
                                            z6 = true;
                                            break;
                                        }
                                        if (!zzh.h(str, zza6, it4.next())) {
                                            z6 = false;
                                            break;
                                        }
                                    }
                                    if (z6) {
                                        Iterator<zzfh.zze> it5 = zzaVar6.zzf().iterator();
                                        while (true) {
                                            if (!it5.hasNext()) {
                                                break;
                                            }
                                            if (!zzh.i(str, zza6, it5.next())) {
                                                z6 = false;
                                                break;
                                            }
                                        }
                                    }
                                    if (!z6) {
                                        zzh.zzak();
                                        zzh.zzt();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase a9 = zzh.a();
                                        a9.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(zza6)});
                                        a9.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(zza6)});
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it6 = arrayList.iterator();
            while (it6.hasNext()) {
                zzfh.zza zzaVar7 = (zzfh.zza) it6.next();
                arrayList2.add(zzaVar7.zzg() ? Integer.valueOf(zzaVar7.zza()) : null);
            }
            zzh.k(str, arrayList2);
            a7.setTransactionSuccessful();
            a7.endTransaction();
            try {
                zzaVar5.zzb();
                bArr2 = ((zzfn.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzaVar5.zzah())).zzbv();
            } catch (RuntimeException e3) {
                zzj().zzu().zza("Unable to serialize reduced-size config. Storing full config instead. appId", zzgb.zza(str), e3);
                bArr2 = bArr;
            }
            zzan zzh2 = zzh();
            Preconditions.checkNotEmpty(str);
            zzh2.zzt();
            zzh2.zzak();
            ContentValues contentValues = new ContentValues();
            contentValues.put("remote_config", bArr2);
            contentValues.put("config_last_modified_time", str2);
            contentValues.put("e_tag", str3);
            try {
                if (zzh2.a().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                    zzh2.zzj().zzg().zza("Failed to update remote config (got 0). appId", zzgb.zza(str));
                }
            } catch (SQLiteException e7) {
                zzh2.zzj().zzg().zza("Error storing remote config. appId", zzgb.zza(str), e7);
            }
            gVar4.put(str, (zzfn.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzaVar5.zzah()));
            return true;
        } catch (Throwable th) {
            a7.endTransaction();
            throw th;
        }
    }
}
