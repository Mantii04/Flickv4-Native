package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
final class zzf {

    /* renamed from: A, reason: collision with root package name */
    public long f11469A;

    /* renamed from: B, reason: collision with root package name */
    public String f11470B;

    /* renamed from: C, reason: collision with root package name */
    public int f11471C;

    /* renamed from: D, reason: collision with root package name */
    public int f11472D;

    /* renamed from: E, reason: collision with root package name */
    public long f11473E;

    /* renamed from: F, reason: collision with root package name */
    public String f11474F;

    /* renamed from: G, reason: collision with root package name */
    public long f11475G;

    /* renamed from: H, reason: collision with root package name */
    public long f11476H;

    /* renamed from: I, reason: collision with root package name */
    public long f11477I;

    /* renamed from: J, reason: collision with root package name */
    public long f11478J;

    /* renamed from: K, reason: collision with root package name */
    public long f11479K;

    /* renamed from: L, reason: collision with root package name */
    public long f11480L;

    /* renamed from: M, reason: collision with root package name */
    public String f11481M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f11482N;

    /* renamed from: O, reason: collision with root package name */
    public long f11483O;

    /* renamed from: P, reason: collision with root package name */
    public long f11484P;

    /* renamed from: a, reason: collision with root package name */
    public final zzho f11485a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11486b;

    /* renamed from: c, reason: collision with root package name */
    public String f11487c;

    /* renamed from: d, reason: collision with root package name */
    public String f11488d;

    /* renamed from: e, reason: collision with root package name */
    public String f11489e;

    /* renamed from: f, reason: collision with root package name */
    public String f11490f;

    /* renamed from: g, reason: collision with root package name */
    public long f11491g;

    /* renamed from: h, reason: collision with root package name */
    public long f11492h;

    /* renamed from: i, reason: collision with root package name */
    public long f11493i;

    /* renamed from: j, reason: collision with root package name */
    public String f11494j;

    /* renamed from: k, reason: collision with root package name */
    public long f11495k;

    /* renamed from: l, reason: collision with root package name */
    public String f11496l;

    /* renamed from: m, reason: collision with root package name */
    public long f11497m;

    /* renamed from: n, reason: collision with root package name */
    public long f11498n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f11499o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f11500p;

    /* renamed from: q, reason: collision with root package name */
    public String f11501q;

    /* renamed from: r, reason: collision with root package name */
    public Boolean f11502r;

    /* renamed from: s, reason: collision with root package name */
    public long f11503s;

    /* renamed from: t, reason: collision with root package name */
    public ArrayList f11504t;

    /* renamed from: u, reason: collision with root package name */
    public String f11505u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f11506v;

    /* renamed from: w, reason: collision with root package name */
    public long f11507w;

    /* renamed from: x, reason: collision with root package name */
    public long f11508x;

    /* renamed from: y, reason: collision with root package name */
    public int f11509y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f11510z;

    public zzf(zzho zzhoVar, String str) {
        Preconditions.checkNotNull(zzhoVar);
        Preconditions.checkNotEmpty(str);
        this.f11485a = zzhoVar;
        this.f11486b = str;
        zzhoVar.zzl().zzt();
    }

    public final int zza() {
        this.f11485a.zzl().zzt();
        return this.f11509y;
    }

    public final String zzaa() {
        this.f11485a.zzl().zzt();
        return this.f11486b;
    }

    public final String zzab() {
        this.f11485a.zzl().zzt();
        return this.f11487c;
    }

    public final String zzac() {
        this.f11485a.zzl().zzt();
        return this.f11496l;
    }

    public final String zzad() {
        this.f11485a.zzl().zzt();
        return this.f11494j;
    }

    public final String zzae() {
        this.f11485a.zzl().zzt();
        return this.f11490f;
    }

    public final String zzaf() {
        this.f11485a.zzl().zzt();
        return this.f11488d;
    }

    public final String zzag() {
        this.f11485a.zzl().zzt();
        return this.f11481M;
    }

    public final String zzah() {
        this.f11485a.zzl().zzt();
        return this.f11489e;
    }

    public final String zzai() {
        this.f11485a.zzl().zzt();
        return this.f11474F;
    }

    public final String zzaj() {
        this.f11485a.zzl().zzt();
        return this.f11505u;
    }

    public final String zzak() {
        this.f11485a.zzl().zzt();
        return this.f11470B;
    }

    public final List<String> zzal() {
        this.f11485a.zzl().zzt();
        return this.f11504t;
    }

    public final void zzam() {
        this.f11485a.zzl().zzt();
        this.f11482N = false;
    }

    public final void zzan() {
        zzho zzhoVar = this.f11485a;
        zzhoVar.zzl().zzt();
        long j7 = this.f11491g + 1;
        if (j7 > 2147483647L) {
            zzhoVar.zzj().zzu().zza("Bundle index overflow. appId", zzgb.zza(this.f11486b));
            j7 = 0;
        }
        this.f11482N = true;
        this.f11491g = j7;
    }

    public final boolean zzao() {
        this.f11485a.zzl().zzt();
        return this.f11500p;
    }

    public final boolean zzap() {
        this.f11485a.zzl().zzt();
        return this.f11499o;
    }

    public final boolean zzaq() {
        this.f11485a.zzl().zzt();
        return this.f11482N;
    }

    public final boolean zzar() {
        this.f11485a.zzl().zzt();
        return this.f11506v;
    }

    public final boolean zzas() {
        this.f11485a.zzl().zzt();
        return this.f11510z;
    }

    public final int zzb() {
        this.f11485a.zzl().zzt();
        return this.f11472D;
    }

    public final int zzc() {
        this.f11485a.zzl().zzt();
        return this.f11471C;
    }

    public final long zzd() {
        this.f11485a.zzl().zzt();
        return 0L;
    }

    public final long zze() {
        this.f11485a.zzl().zzt();
        return this.f11495k;
    }

    public final long zzf() {
        this.f11485a.zzl().zzt();
        return this.f11469A;
    }

    public final long zzg() {
        this.f11485a.zzl().zzt();
        return this.f11483O;
    }

    public final long zzh() {
        this.f11485a.zzl().zzt();
        return this.f11478J;
    }

    public final long zzi() {
        this.f11485a.zzl().zzt();
        return this.f11479K;
    }

    public final long zzj() {
        this.f11485a.zzl().zzt();
        return this.f11477I;
    }

    public final long zzk() {
        this.f11485a.zzl().zzt();
        return this.f11476H;
    }

    public final long zzl() {
        this.f11485a.zzl().zzt();
        return this.f11480L;
    }

    public final long zzm() {
        this.f11485a.zzl().zzt();
        return this.f11475G;
    }

    public final long zzn() {
        this.f11485a.zzl().zzt();
        return this.f11498n;
    }

    public final long zzo() {
        this.f11485a.zzl().zzt();
        return this.f11503s;
    }

    public final long zzp() {
        this.f11485a.zzl().zzt();
        return this.f11484P;
    }

    public final long zzq() {
        this.f11485a.zzl().zzt();
        return this.f11497m;
    }

    public final long zzr() {
        this.f11485a.zzl().zzt();
        return this.f11473E;
    }

    public final long zzs() {
        this.f11485a.zzl().zzt();
        return this.f11493i;
    }

    public final long zzt() {
        this.f11485a.zzl().zzt();
        return this.f11491g;
    }

    public final long zzu() {
        this.f11485a.zzl().zzt();
        return this.f11492h;
    }

    public final long zzv() {
        this.f11485a.zzl().zzt();
        return this.f11508x;
    }

    public final long zzw() {
        this.f11485a.zzl().zzt();
        return this.f11507w;
    }

    public final Boolean zzx() {
        this.f11485a.zzl().zzt();
        return this.f11502r;
    }

    public final String zzy() {
        this.f11485a.zzl().zzt();
        return this.f11501q;
    }

    public final String zzz() {
        this.f11485a.zzl().zzt();
        String str = this.f11481M;
        zzg((String) null);
        return str;
    }

    public final void zzd(String str) {
        this.f11485a.zzl().zzt();
        this.f11482N |= !Objects.equals(this.f11494j, str);
        this.f11494j = str;
    }

    public final void zza(long j7) {
        zzho zzhoVar = this.f11485a;
        zzhoVar.zzl().zzt();
        long j8 = this.f11491g + j7;
        String str = this.f11486b;
        if (j8 > 2147483647L) {
            zzhoVar.zzj().zzu().zza("Bundle index overflow. appId", zzgb.zza(str));
            j8 = j7 - 1;
        }
        long j9 = this.f11473E + 1;
        if (j9 > 2147483647L) {
            zzhoVar.zzj().zzu().zza("Delivery index overflow. appId", zzgb.zza(str));
            j9 = 0;
        }
        this.f11482N = true;
        this.f11491g = j8;
        this.f11473E = j9;
    }

    public final void zzb(String str) {
        this.f11485a.zzl().zzt();
        this.f11482N |= !Objects.equals(this.f11487c, str);
        this.f11487c = str;
    }

    public final void zzc(String str) {
        this.f11485a.zzl().zzt();
        this.f11482N |= !Objects.equals(this.f11496l, str);
        this.f11496l = str;
    }

    public final void zze(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11478J != j7;
        this.f11478J = j7;
    }

    public final void zzf(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11479K != j7;
        this.f11479K = j7;
    }

    public final void zzg(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11477I != j7;
        this.f11477I = j7;
    }

    public final void zzh(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11476H != j7;
        this.f11476H = j7;
    }

    public final void zzi(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11480L != j7;
        this.f11480L = j7;
    }

    public final void zzj(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11475G != j7;
        this.f11475G = j7;
    }

    public final void zzk(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11498n != j7;
        this.f11498n = j7;
    }

    public final void zzl(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11503s != j7;
        this.f11503s = j7;
    }

    public final void zzm(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11484P != j7;
        this.f11484P = j7;
    }

    public final void zzn(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11497m != j7;
        this.f11497m = j7;
    }

    public final void zzo(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11473E != j7;
        this.f11473E = j7;
    }

    public final void zzp(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11493i != j7;
        this.f11493i = j7;
    }

    public final void zzq(long j7) {
        Preconditions.checkArgument(j7 >= 0);
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11491g != j7;
        this.f11491g = j7;
    }

    public final void zzr(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11492h != j7;
        this.f11492h = j7;
    }

    public final void zzs(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11508x != j7;
        this.f11508x = j7;
    }

    public final void zzt(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11507w != j7;
        this.f11507w = j7;
    }

    public final void zzd(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11483O != j7;
        this.f11483O = j7;
    }

    public final void zzb(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11495k != j7;
        this.f11495k = j7;
    }

    public final void zzc(long j7) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11469A != j7;
        this.f11469A = j7;
    }

    public final void zze(String str) {
        this.f11485a.zzl().zzt();
        this.f11482N |= !Objects.equals(this.f11490f, str);
        this.f11490f = str;
    }

    public final void zzf(String str) {
        this.f11485a.zzl().zzt();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.f11482N |= !Objects.equals(this.f11488d, str);
        this.f11488d = str;
    }

    public final void zzg(String str) {
        this.f11485a.zzl().zzt();
        this.f11482N |= !Objects.equals(this.f11481M, str);
        this.f11481M = str;
    }

    public final void zzh(String str) {
        this.f11485a.zzl().zzt();
        this.f11482N |= !Objects.equals(this.f11489e, str);
        this.f11489e = str;
    }

    public final void zzi(String str) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11474F != str;
        this.f11474F = str;
    }

    public final void zzj(String str) {
        this.f11485a.zzl().zzt();
        this.f11482N |= !Objects.equals(this.f11505u, str);
        this.f11505u = str;
    }

    public final void zzk(String str) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11470B != str;
        this.f11470B = str;
    }

    public final void zzd(boolean z6) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11510z != z6;
        this.f11510z = z6;
    }

    public final void zzb(int i2) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11472D != i2;
        this.f11472D = i2;
    }

    public final void zzc(int i2) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11471C != i2;
        this.f11471C = i2;
    }

    public final void zza(String str) {
        this.f11485a.zzl().zzt();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.f11482N |= !Objects.equals(this.f11501q, str);
        this.f11501q = str;
    }

    public final void zzb(boolean z6) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11499o != z6;
        this.f11499o = z6;
    }

    public final void zzc(boolean z6) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11506v != z6;
        this.f11506v = z6;
    }

    public final void zza(int i2) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11509y != i2;
        this.f11509y = i2;
    }

    public final void zza(boolean z6) {
        this.f11485a.zzl().zzt();
        this.f11482N |= this.f11500p != z6;
        this.f11500p = z6;
    }

    public final void zza(Boolean bool) {
        this.f11485a.zzl().zzt();
        this.f11482N |= !Objects.equals(this.f11502r, bool);
        this.f11502r = bool;
    }

    public final void zza(List<String> list) {
        this.f11485a.zzl().zzt();
        if (Objects.equals(this.f11504t, list)) {
            return;
        }
        this.f11482N = true;
        this.f11504t = list != null ? new ArrayList(list) : null;
    }
}
