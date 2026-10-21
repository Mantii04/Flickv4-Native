package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.measurement.internal.zziq;
import java.math.BigInteger;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzfv extends zzg {

    /* renamed from: c, reason: collision with root package name */
    public String f11534c;

    /* renamed from: d, reason: collision with root package name */
    public String f11535d;

    /* renamed from: e, reason: collision with root package name */
    public int f11536e;

    /* renamed from: f, reason: collision with root package name */
    public String f11537f;

    /* renamed from: g, reason: collision with root package name */
    public long f11538g;

    /* renamed from: h, reason: collision with root package name */
    public long f11539h;

    /* renamed from: i, reason: collision with root package name */
    public List f11540i;

    /* renamed from: j, reason: collision with root package name */
    public String f11541j;

    /* renamed from: k, reason: collision with root package name */
    public int f11542k;

    /* renamed from: l, reason: collision with root package name */
    public String f11543l;

    /* renamed from: m, reason: collision with root package name */
    public String f11544m;

    /* renamed from: n, reason: collision with root package name */
    public String f11545n;

    /* renamed from: o, reason: collision with root package name */
    public long f11546o;

    /* renamed from: p, reason: collision with root package name */
    public String f11547p;

    public final String a() {
        zzu();
        Preconditions.checkNotNull(this.f11534c);
        return this.f11534c;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final String zzae() {
        zzt();
        zzu();
        Preconditions.checkNotNull(this.f11543l);
        return this.f11543l;
    }

    public final void zzag() {
        String format;
        zzt();
        if (zzk().d().zza(zziq.zza.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            zzq().Q().nextBytes(bArr);
            format = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            zzj().zzc().zza("Analytics Storage consent is not granted");
            format = null;
        }
        zzj().zzc().zza("Resetting session stitching token to ".concat(format == null ? "null" : "not null"));
        this.f11545n = format;
        this.f11546o = zzb().currentTimeMillis();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
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

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzd, com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0188 A[Catch: IllegalStateException -> 0x019e, TryCatch #1 {IllegalStateException -> 0x019e, blocks: (B:18:0x0165, B:21:0x0180, B:23:0x0188, B:25:0x01a2, B:27:0x01b6, B:28:0x01bb, B:30:0x01b9), top: B:17:0x0165 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01a2 A[Catch: IllegalStateException -> 0x019e, TryCatch #1 {IllegalStateException -> 0x019e, blocks: (B:18:0x0165, B:21:0x0180, B:23:0x0188, B:25:0x01a2, B:27:0x01b6, B:28:0x01bb, B:30:0x01b9), top: B:17:0x0165 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0206 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0148  */
    @Override // com.google.android.gms.measurement.internal.zzg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzx() {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfv.zzx():void");
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean zzz() {
        return true;
    }
}
