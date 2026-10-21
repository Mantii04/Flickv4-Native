package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzft;
import com.google.android.gms.internal.measurement.zzou;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.math.BigDecimal;

/* loaded from: classes2.dex */
final class zzaa extends zzab {

    /* renamed from: g, reason: collision with root package name */
    public final zzfh.zze f11156g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ zzs f11157h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaa(zzs zzsVar, String str, int i2, zzfh.zze zzeVar) {
        super(str, i2);
        this.f11157h = zzsVar;
        this.f11156g = zzeVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final int a() {
        return this.f11156g.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final boolean f() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final boolean g() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean h(Long l7, Long l8, zzft.zzn zznVar, boolean z6) {
        boolean zza = zzou.zza();
        zzs zzsVar = this.f11157h;
        Object[] objArr = zza && zzsVar.zze().zzf(this.f11158a, zzbh.f11329g0);
        zzfh.zze zzeVar = this.f11156g;
        boolean zzf = zzeVar.zzf();
        boolean zzg = zzeVar.zzg();
        boolean zzh = zzeVar.zzh();
        Object[] objArr2 = zzf || zzg || zzh;
        Boolean bool = null;
        r6 = null;
        Boolean bool2 = null;
        bool = null;
        bool = null;
        bool = null;
        Boolean e3 = null;
        bool = null;
        if (z6 && objArr2 != true) {
            zzsVar.zzj().zzp().zza("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.f11159b), zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null);
            return true;
        }
        zzfh.zzc zzb = zzeVar.zzb();
        boolean zzf2 = zzb.zzf();
        if (zznVar.zzk()) {
            if (zzb.zzh()) {
                bool = zzab.c(zzab.b(zznVar.zzc(), zzb.zzc()), zzf2);
            } else {
                zzsVar.zzj().zzu().zza("No number filter for long property. property", zzsVar.zzi().zzc(zznVar.zzg()));
            }
        } else if (zznVar.zzi()) {
            if (zzb.zzh()) {
                double zza2 = zznVar.zza();
                try {
                    bool2 = zzab.e(new BigDecimal(zza2), zzb.zzc(), Math.ulp(zza2));
                } catch (NumberFormatException unused) {
                }
                bool = zzab.c(bool2, zzf2);
            } else {
                zzsVar.zzj().zzu().zza("No number filter for double property. property", zzsVar.zzi().zzc(zznVar.zzg()));
            }
        } else if (!zznVar.zzm()) {
            zzsVar.zzj().zzu().zza("User property has no value, property", zzsVar.zzi().zzc(zznVar.zzg()));
        } else if (zzb.zzj()) {
            bool = zzab.c(zzab.d(zznVar.zzh(), zzb.zzd(), zzsVar.zzj()), zzf2);
        } else if (!zzb.zzh()) {
            zzsVar.zzj().zzu().zza("No string or number filter defined. property", zzsVar.zzi().zzc(zznVar.zzg()));
        } else if (zznm.F(zznVar.zzh())) {
            String zzh2 = zznVar.zzh();
            zzfh.zzd zzc = zzb.zzc();
            if (zznm.F(zzh2)) {
                try {
                    e3 = zzab.e(new BigDecimal(zzh2), zzc, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                } catch (NumberFormatException unused2) {
                }
            }
            bool = zzab.c(e3, zzf2);
        } else {
            zzsVar.zzj().zzu().zza("Invalid user property value for Numeric number filter. property, value", zzsVar.zzi().zzc(zznVar.zzg()), zznVar.zzh());
        }
        zzsVar.zzj().zzp().zza("Property filter result", bool == null ? "null" : bool);
        if (bool == null) {
            return false;
        }
        this.f11160c = Boolean.TRUE;
        if (!zzh || bool.booleanValue()) {
            if (!z6 || zzeVar.zzf()) {
                this.f11161d = bool;
            }
            if (bool.booleanValue() && objArr2 != false && zznVar.zzl()) {
                long zzd = zznVar.zzd();
                if (l7 != null) {
                    zzd = l7.longValue();
                }
                if (objArr != false && zzeVar.zzf() && !zzeVar.zzg() && l8 != null) {
                    zzd = l8.longValue();
                }
                if (zzeVar.zzg()) {
                    this.f11163f = Long.valueOf(zzd);
                } else {
                    this.f11162e = Long.valueOf(zzd);
                }
            }
        }
        return true;
    }
}
