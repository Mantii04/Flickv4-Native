package com.google.android.gms.measurement.internal;

import V3.A;
import V3.F;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.media3.exoplayer.audio.n;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zznw;
import com.google.android.gms.internal.measurement.zzon;
import com.google.android.gms.internal.measurement.zzpa;
import com.google.android.gms.internal.measurement.zzpy;
import com.google.android.gms.internal.measurement.zzqk;
import com.google.android.gms.measurement.internal.zziq;
import com.google.firebase.analytics.FirebaseAnalytics;
import j1.AbstractC1039b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import p.g;

/* loaded from: classes2.dex */
public final class zziy extends zzg {

    /* renamed from: c, reason: collision with root package name */
    public zzkl f11843c;

    /* renamed from: d, reason: collision with root package name */
    public zziu f11844d;

    /* renamed from: e, reason: collision with root package name */
    public final CopyOnWriteArraySet f11845e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f11846f;

    /* renamed from: g, reason: collision with root package name */
    public final AtomicReference f11847g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f11848h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f11849i;

    /* renamed from: j, reason: collision with root package name */
    public PriorityQueue f11850j;

    /* renamed from: k, reason: collision with root package name */
    public zziq f11851k;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicLong f11852l;

    /* renamed from: m, reason: collision with root package name */
    public long f11853m;

    /* renamed from: n, reason: collision with root package name */
    public final zzt f11854n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f11855o;

    /* renamed from: p, reason: collision with root package name */
    public zzjv f11856p;

    /* renamed from: q, reason: collision with root package name */
    public zzjg f11857q;

    /* renamed from: r, reason: collision with root package name */
    public zzjr f11858r;

    /* renamed from: s, reason: collision with root package name */
    public final zzkd f11859s;

    public zziy(zzho zzhoVar) {
        super(zzhoVar);
        this.f11845e = new CopyOnWriteArraySet();
        this.f11848h = new Object();
        this.f11849i = false;
        this.f11855o = true;
        this.f11859s = new zzkd(this);
        this.f11847g = new AtomicReference();
        this.f11851k = zziq.f11810c;
        this.f11853m = -1L;
        this.f11852l = new AtomicLong(0L);
        this.f11854n = new zzt(zzhoVar);
    }

    public static void f(zziy zziyVar, zziq zziqVar, long j7, boolean z6, boolean z7) {
        zziyVar.zzt();
        zziyVar.zzu();
        zziq d7 = zziyVar.zzk().d();
        if (j7 <= zziyVar.f11853m && zziq.zza(d7.zza(), zziqVar.zza())) {
            zziyVar.zzj().zzn().zza("Dropped out-of-date consent setting, proposed settings", zziqVar);
            return;
        }
        zzgm zzk = zziyVar.zzk();
        zzk.zzt();
        int zza = zziqVar.zza();
        if (!zzk.zza(zza)) {
            zziyVar.zzj().zzn().zza("Lower precedence consent source ignored, proposed source", Integer.valueOf(zziqVar.zza()));
            return;
        }
        SharedPreferences.Editor edit = zzk.zzg().edit();
        edit.putString("consent_settings", zziqVar.zzh());
        edit.putInt("consent_source", zza);
        edit.apply();
        zziyVar.f11853m = j7;
        zziyVar.zzo().zza(z6);
        if (z7) {
            zziyVar.zzo().zza(new AtomicReference<>());
        }
    }

    public static /* synthetic */ void g(zziy zziyVar, zziq zziqVar, zziq zziqVar2) {
        zziq.zza zzaVar = zziq.zza.ANALYTICS_STORAGE;
        zziq.zza zzaVar2 = zziq.zza.AD_STORAGE;
        boolean zza = zziqVar.zza(zziqVar2, zzaVar, zzaVar2);
        boolean zzb = zziqVar.zzb(zziqVar2, zzaVar, zzaVar2);
        if (zza || zzb) {
            zziyVar.zzg().zzag();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r9, java.lang.Object r11, java.lang.String r12, java.lang.String r13) {
        /*
            r8 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r12)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            r8.zzt()
            r8.zzu()
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r13)
            if (r0 == 0) goto L5b
            boolean r0 = r11 instanceof java.lang.String
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L4d
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L4d
            java.util.Locale r11 = java.util.Locale.ENGLISH
            java.lang.String r11 = r0.toLowerCase(r11)
            java.lang.String r13 = "false"
            boolean r11 = r13.equals(r11)
            r2 = 1
            if (r11 == 0) goto L35
            r4 = r2
            goto L37
        L35:
            r4 = 0
        L37:
            java.lang.Long r11 = java.lang.Long.valueOf(r4)
            com.google.android.gms.measurement.internal.zzgm r0 = r8.zzk()
            com.google.android.gms.measurement.internal.zzgs r0 = r0.f11609n
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 != 0) goto L47
            java.lang.String r13 = "true"
        L47:
            r0.zza(r13)
        L4a:
            r5 = r11
            r6 = r1
            goto L5d
        L4d:
            if (r11 != 0) goto L5b
            com.google.android.gms.measurement.internal.zzgm r13 = r8.zzk()
            com.google.android.gms.measurement.internal.zzgs r13 = r13.f11609n
            java.lang.String r0 = "unset"
            r13.zza(r0)
            goto L4a
        L5b:
            r5 = r11
            r6 = r13
        L5d:
            com.google.android.gms.measurement.internal.zzho r11 = r8.f11804a
            boolean r13 = r11.zzac()
            if (r13 != 0) goto L73
            com.google.android.gms.measurement.internal.zzgb r9 = r8.zzj()
            com.google.android.gms.measurement.internal.zzgd r9 = r9.zzp()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.zza(r10)
            return
        L73:
            boolean r11 = r11.zzaf()
            if (r11 != 0) goto L7a
            return
        L7a:
            com.google.android.gms.measurement.internal.zzno r2 = new com.google.android.gms.measurement.internal.zzno
            r3 = r9
            r7 = r12
            r2.<init>(r3, r5, r6, r7)
            com.google.android.gms.measurement.internal.zzla r9 = r8.zzo()
            r9.zza(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zziy.a(long, java.lang.Object, java.lang.String, java.lang.String):void");
    }

    public final void b(long j7, boolean z6) {
        zzt();
        zzu();
        zzj().zzc().zza("Resetting analytics data (FE)");
        zzmi zzp = zzp();
        zzp.zzt();
        zzmo zzmoVar = zzp.f12108f;
        zzmoVar.f12121c.a();
        zzmoVar.f12119a = 0L;
        zzmoVar.f12120b = 0L;
        if (zzqk.zza() && zze().zza(zzbh.f11351r0)) {
            zzg().zzag();
        }
        boolean zzac = this.f11804a.zzac();
        zzgm zzk = zzk();
        zzk.f11602g.zza(j7);
        if (!TextUtils.isEmpty(zzk.zzk().f11618w.zza())) {
            zzk.f11618w.zza(null);
        }
        if (zzpa.zza() && zzk.zze().zza(zzbh.f11341m0)) {
            zzk.f11612q.zza(0L);
        }
        zzk.f11613r.zza(0L);
        if (!zzk.zze().zzw()) {
            zzk.b(!zzac);
        }
        zzk.f11619x.zza(null);
        zzk.f11620y.zza(0L);
        zzk.f11621z.zza(null);
        if (z6) {
            zzo().zzaf();
        }
        if (zzpa.zza() && zze().zza(zzbh.f11341m0)) {
            zzp().f12107e.a();
        }
        this.f11855o = !zzac;
    }

    public final void c(Bundle bundle, int i2, long j7) {
        zzu();
        String zza = zziq.zza(bundle);
        if (zza != null) {
            zzj().zzv().zza("Ignoring invalid consent setting", zza);
            zzj().zzv().zza("Valid consent values are 'granted', 'denied'");
        }
        zziq zza2 = zziq.zza(bundle, i2);
        if (!zzon.zza() || !zze().zza(zzbh.f11285L0)) {
            zza(zza2, j7, false);
            return;
        }
        if (zza2.zzk()) {
            zza(zza2, j7, false);
        }
        zzax zza3 = zzax.zza(bundle, i2);
        if (zza3.zzg()) {
            d(zza3, false);
        }
        Boolean zza4 = zzax.zza(bundle);
        if (zza4 != null) {
            zza(i2 == -30 ? "tcf" : "app", FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS, (Object) zza4.toString(), false);
        }
    }

    public final void d(zzax zzaxVar, boolean z6) {
        zzkg zzkgVar = new zzkg(this, zzaxVar);
        if (!z6) {
            zzl().zzb(zzkgVar);
        } else {
            zzt();
            zzkgVar.run();
        }
    }

    public final void e(zziq zziqVar) {
        zzt();
        boolean z6 = (zziqVar.zzj() && zziqVar.zzi()) || zzo().c();
        zzho zzhoVar = this.f11804a;
        if (z6 != zzhoVar.zzad()) {
            zzhoVar.zzb(z6);
            zzgm zzk = zzk();
            zzk.zzt();
            Boolean valueOf = zzk.zzg().contains("measurement_enabled_from_api") ? Boolean.valueOf(zzk.zzg().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z6 || valueOf == null || valueOf.booleanValue()) {
                h(Boolean.valueOf(z6), false);
            }
        }
    }

    public final void h(Boolean bool, boolean z6) {
        zzt();
        zzu();
        zzj().zzc().zza("Setting app measurement enabled (FE)", bool);
        zzgm zzk = zzk();
        zzk.zzt();
        SharedPreferences.Editor edit = zzk.zzg().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
        if (z6) {
            zzgm zzk2 = zzk();
            zzk2.zzt();
            SharedPreferences.Editor edit2 = zzk2.zzg().edit();
            if (bool != null) {
                edit2.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit2.remove("measurement_enabled_from_api");
            }
            edit2.apply();
        }
        if (this.f11804a.zzad() || !(bool == null || bool.booleanValue())) {
            m();
        }
    }

    public final void i(String str) {
        this.f11847g.set(str);
    }

    public final void j(String str, String str2, Bundle bundle, long j7) {
        zzt();
        zza(str, str2, j7, bundle, true, this.f11844d == null || zznt.M(str2), true, null);
    }

    public final void k() {
        zzmv zzmvVar;
        zzt();
        if (l().isEmpty() || this.f11849i || (zzmvVar = (zzmv) l().poll()) == null) {
            return;
        }
        zznt zzq = zzq();
        if (zzq.f12243f == null) {
            zzq.f12243f = AbstractC1039b.from(zzq.zza());
        }
        AbstractC1039b abstractC1039b = zzq.f12243f;
        if (abstractC1039b == null) {
            return;
        }
        this.f11849i = true;
        zzgd zzp = zzj().zzp();
        String str = zzmvVar.f12130b;
        zzp.zza("Registering trigger URI", str);
        F registerTriggerAsync = abstractC1039b.registerTriggerAsync(Uri.parse(str));
        if (registerTriggerAsync == null) {
            this.f11849i = false;
            l().add(zzmvVar);
            return;
        }
        SparseArray c7 = zzk().c();
        c7.put(zzmvVar.f12132f, Long.valueOf(zzmvVar.f12131e));
        zzgm zzk = zzk();
        int[] iArr = new int[c7.size()];
        long[] jArr = new long[c7.size()];
        for (int i2 = 0; i2 < c7.size(); i2++) {
            iArr[i2] = c7.keyAt(i2);
            jArr[i2] = ((Long) c7.valueAt(i2)).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        zzk.f11610o.zza(bundle);
        A.addCallback(registerTriggerAsync, new zzjn(this, zzmvVar), new zzjk(this));
    }

    public final PriorityQueue l() {
        Comparator comparing;
        if (this.f11850j == null) {
            comparing = Comparator.comparing(new Function() { // from class: com.google.android.gms.measurement.internal.zzjb
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(((zzmv) obj).f12131e);
                }
            }, new Comparator() { // from class: com.google.android.gms.measurement.internal.zzja
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Long.compare(((Long) obj).longValue(), ((Long) obj2).longValue());
                }
            });
            this.f11850j = n.o(comparing);
        }
        return this.f11850j;
    }

    public final void m() {
        zziy zziyVar;
        zzt();
        String zza = zzk().f11609n.zza();
        if (zza == null) {
            zziyVar = this;
        } else if ("unset".equals(zza)) {
            zziyVar = this;
            zziyVar.a(zzb().currentTimeMillis(), null, "app", "_npa");
        } else {
            a(zzb().currentTimeMillis(), Long.valueOf("true".equals(zza) ? 1L : 0L), "app", "_npa");
            zziyVar = this;
        }
        if (!zziyVar.f11804a.zzac() || !zziyVar.f11855o) {
            zzj().zzc().zza("Updating Scion state (FE)");
            zzo().zzag();
            return;
        }
        zzj().zzc().zza("Recording app launch after enabling measurement for the first time (FE)");
        zzaj();
        if (zzpa.zza() && zze().zza(zzbh.f11341m0)) {
            zzp().f12107e.a();
        }
        zzl().zzb(new zzjp(this));
    }

    public final void n(String str, String str2, Bundle bundle) {
        zzt();
        j(str, str2, bundle, zzb().currentTimeMillis());
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final Boolean zzaa() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) zzl().a(atomicReference, 15000L, "boolean test flag value", new zzjl(this, atomicReference));
    }

    public final Double zzab() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) zzl().a(atomicReference, 15000L, "double test flag value", new zzke(this, atomicReference));
    }

    public final Integer zzac() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) zzl().a(atomicReference, 15000L, "int test flag value", new zzkf(this, atomicReference));
    }

    public final Long zzad() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) zzl().a(atomicReference, 15000L, "long test flag value", new zzkc(this, atomicReference));
    }

    public final String zzae() {
        return (String) this.f11847g.get();
    }

    public final String zzaf() {
        zzks zzaa = this.f11804a.zzq().zzaa();
        if (zzaa != null) {
            return zzaa.f11967b;
        }
        return null;
    }

    public final String zzag() {
        zzks zzaa = this.f11804a.zzq().zzaa();
        if (zzaa != null) {
            return zzaa.f11966a;
        }
        return null;
    }

    public final String zzah() {
        zzho zzhoVar = this.f11804a;
        if (zzhoVar.zzu() != null) {
            return zzhoVar.zzu();
        }
        try {
            return new zzhi(zza(), zzhoVar.zzx()).zza("google_app_id");
        } catch (IllegalStateException e3) {
            zzhoVar.zzj().zzg().zza("getGoogleAppId failed with exception", e3);
            return null;
        }
    }

    public final String zzai() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) zzl().a(atomicReference, 15000L, "String test flag value", new zzju(this, atomicReference));
    }

    public final void zzaj() {
        zzt();
        zzu();
        if (this.f11804a.zzaf()) {
            Boolean c7 = zze().c("google_analytics_deferred_deep_link_enabled");
            if (c7 != null && c7.booleanValue()) {
                zzj().zzc().zza("Deferred Deep Link feature enabled.");
                zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjh
                    @Override // java.lang.Runnable
                    public final void run() {
                        zziy.this.zzam();
                    }
                });
            }
            zzo().zzac();
            this.f11855o = false;
            String zzw = zzk().zzw();
            if (TextUtils.isEmpty(zzw)) {
                return;
            }
            zzf().zzac();
            if (zzw.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", zzw);
            n("auto", "_ou", bundle);
        }
    }

    public final void zzak() {
        if (!(zza().getApplicationContext() instanceof Application) || this.f11843c == null) {
            return;
        }
        ((Application) zza().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f11843c);
    }

    public final void zzal() {
        if (zzpy.zza() && zze().zza(zzbh.f11273F0)) {
            if (zzl().zzg()) {
                zzj().zzg().zza("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            if (zzad.zza()) {
                zzj().zzg().zza("Cannot get trigger URIs from main thread");
                return;
            }
            zzu();
            zzj().zzp().zza("Getting trigger URIs (FE)");
            final AtomicReference atomicReference = new AtomicReference();
            zzl().a(atomicReference, 5000L, "get trigger URIs", new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjd
                @Override // java.lang.Runnable
                public final void run() {
                    zziy zziyVar = zziy.this;
                    Bundle zza = zziyVar.zzk().f11610o.zza();
                    zzla zzo = zziyVar.zzo();
                    if (zza == null) {
                        zza = new Bundle();
                    }
                    zzo.zza(atomicReference, zza);
                }
            });
            final List list = (List) atomicReference.get();
            if (list == null) {
                zzj().zzg().zza("Timed out waiting for get trigger URIs");
            } else {
                zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjc
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean contains;
                        zziy zziyVar = zziy.this;
                        zziyVar.zzt();
                        if (Build.VERSION.SDK_INT >= 30) {
                            SparseArray c7 = zziyVar.zzk().c();
                            for (zzmv zzmvVar : list) {
                                contains = c7.contains(zzmvVar.f12132f);
                                if (!contains || ((Long) c7.get(zzmvVar.f12132f)).longValue() < zzmvVar.f12131e) {
                                    zziyVar.l().add(zzmvVar);
                                }
                            }
                            zziyVar.k();
                        }
                    }
                });
            }
        }
    }

    public final void zzam() {
        zzt();
        if (zzk().f11616u.zza()) {
            zzj().zzc().zza("Deferred Deep Link already retrieved. Not fetching again.");
            return;
        }
        long zza = zzk().f11617v.zza();
        zzk().f11617v.zza(1 + zza);
        if (zza >= 5) {
            zzj().zzu().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
            zzk().f11616u.zza(true);
            return;
        }
        boolean zza2 = zzon.zza();
        zzho zzhoVar = this.f11804a;
        if (!zza2 || !zze().zza(zzbh.f11289N0)) {
            zzhoVar.zzah();
            return;
        }
        if (this.f11856p == null) {
            this.f11856p = new zzjv(this, zzhoVar);
        }
        this.f11856p.zza(0L);
    }

    public final void zzan() {
        zzt();
        zzj().zzc().zza("Handle tcf update.");
        zzmt zza = zzmt.zza(zzk().zzc());
        zzj().zzp().zza("Tcf preferences read", zza);
        if (zzk().zza(zza)) {
            Bundle zza2 = zza.zza();
            zzj().zzp().zza("Consent generated from Tcf", zza2);
            if (zza2 != Bundle.EMPTY) {
                c(zza2, -30, zzb().currentTimeMillis());
            }
            Bundle bundle = new Bundle();
            bundle.putString("_tcfd", zza.zzb());
            n("auto", "_tcf", bundle);
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.measurement.internal.zzjg] */
    public final void zzap() {
        zzt();
        zzj().zzc().zza("Register tcfPrefChangeListener.");
        if (this.f11857q == null) {
            this.f11858r = new zzjr(this, this.f11804a);
            this.f11857q = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzjg
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    zziy zziyVar = zziy.this;
                    zziyVar.getClass();
                    if ("IABTCF_TCString".equals(str)) {
                        zziyVar.zzj().zzp().zza("IABTCF_TCString change picked up in listener.");
                        ((zzav) Preconditions.checkNotNull(zziyVar.f11858r)).zza(500L);
                    }
                }
            };
        }
        zzk().zzc().registerOnSharedPreferenceChangeListener(this.f11857q);
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

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zzfv zzg() {
        return super.zzg();
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

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zzkv zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zzla zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zzmi zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzd, com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean zzz() {
        return false;
    }

    public final ArrayList<Bundle> zza(String str, String str2) {
        if (zzl().zzg()) {
            zzj().zzg().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        }
        if (zzad.zza()) {
            zzj().zzg().zza("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f11804a.zzl().a(atomicReference, 5000L, "get conditional user properties", new zzjy(this, atomicReference, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return zznt.zzb((List<zzac>) list);
        }
        zzj().zzg().zza("Timed out waiting for get conditional user properties", null);
        return new ArrayList<>();
    }

    public final void zzb(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, zzb().currentTimeMillis());
    }

    public final void zzb(Bundle bundle) {
        zza(bundle, zzb().currentTimeMillis());
    }

    public final void zzb(zzix zzixVar) {
        zzu();
        Preconditions.checkNotNull(zzixVar);
        if (this.f11845e.remove(zzixVar)) {
            return;
        }
        zzj().zzu().zza("OnEventListener had not been registered");
    }

    public final Map<String, Object> zza(String str, String str2, boolean z6) {
        if (zzl().zzg()) {
            zzj().zzg().zza("Cannot get user properties from analytics worker thread");
            return Collections.EMPTY_MAP;
        }
        if (zzad.zza()) {
            zzj().zzg().zza("Cannot get user properties from main thread");
            return Collections.EMPTY_MAP;
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f11804a.zzl().a(atomicReference, 5000L, "get user properties", new zzkb(this, atomicReference, str, str2, z6));
        List<zzno> list = (List) atomicReference.get();
        if (list == null) {
            zzj().zzg().zza("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z6));
            return Collections.EMPTY_MAP;
        }
        g gVar = new g(list.size());
        for (zzno zznoVar : list) {
            Object zza = zznoVar.zza();
            if (zza != null) {
                gVar.put(zznoVar.f12227e, zza);
            }
        }
        return gVar;
    }

    public final void zza(String str, String str2, Bundle bundle) {
        long currentTimeMillis = zzb().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", currentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        zzl().zzb(new zzjz(this, bundle2));
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z6, boolean z7, long j7) {
        if (str == null) {
            str = "app";
        }
        String str3 = str;
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (Objects.equals(str2, FirebaseAnalytics.Event.SCREEN_VIEW)) {
            zzn().zza(bundle, j7);
        } else {
            zzl().zzb(new zzjq(this, str3, str2, j7, zznt.zza(bundle), z7, !z7 || this.f11844d == null || zznt.M(str2), z6, null));
        }
    }

    public final void zza(String str, String str2, Bundle bundle, String str3) {
        zzs();
        zzl().zzb(new zzjq(this, str, str2, zzb().currentTimeMillis(), zznt.zza(bundle), false, true, true, str3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:179:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d4  */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.String r19, java.lang.String r20, long r21, android.os.Bundle r23, boolean r24, boolean r25, boolean r26, java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 1151
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zziy.zza(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    public final void zza(zzix zzixVar) {
        zzu();
        Preconditions.checkNotNull(zzixVar);
        if (this.f11845e.add(zzixVar)) {
            return;
        }
        zzj().zzu().zza("OnEventListener already registered");
    }

    public final void zza(Bundle bundle, long j7) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            zzj().zzu().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        zzin.zza(bundle2, "app_id", String.class, null);
        zzin.zza(bundle2, FirebaseAnalytics.Param.ORIGIN, String.class, null);
        zzin.zza(bundle2, "name", String.class, null);
        zzin.zza(bundle2, FirebaseAnalytics.Param.VALUE, Object.class, null);
        zzin.zza(bundle2, "trigger_event_name", String.class, null);
        zzin.zza(bundle2, "trigger_timeout", Long.class, 0L);
        zzin.zza(bundle2, "timed_out_event_name", String.class, null);
        zzin.zza(bundle2, "timed_out_event_params", Bundle.class, null);
        zzin.zza(bundle2, "triggered_event_name", String.class, null);
        zzin.zza(bundle2, "triggered_event_params", Bundle.class, null);
        zzin.zza(bundle2, "time_to_live", Long.class, 0L);
        zzin.zza(bundle2, "expired_event_name", String.class, null);
        zzin.zza(bundle2, "expired_event_params", Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString("name"));
        Preconditions.checkNotEmpty(bundle2.getString(FirebaseAnalytics.Param.ORIGIN));
        Preconditions.checkNotNull(bundle2.get(FirebaseAnalytics.Param.VALUE));
        bundle2.putLong("creation_timestamp", j7);
        String string = bundle2.getString("name");
        Object obj = bundle2.get(FirebaseAnalytics.Param.VALUE);
        if (zzq().zzb(string) != 0) {
            zzj().zzg().zza("Invalid conditional user property name", zzi().zzc(string));
            return;
        }
        if (zzq().a(obj, string) != 0) {
            zzj().zzg().zza("Invalid conditional user property value", zzi().zzc(string), obj);
            return;
        }
        Object G6 = zzq().G(obj, string);
        if (G6 == null) {
            zzj().zzg().zza("Unable to normalize conditional user property value", zzi().zzc(string), obj);
            return;
        }
        zzin.zza(bundle2, G6);
        long j8 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name")) && (j8 > 15552000000L || j8 < 1)) {
            zzj().zzg().zza("Invalid conditional user property timeout", zzi().zzc(string), Long.valueOf(j8));
            return;
        }
        long j9 = bundle2.getLong("time_to_live");
        if (j9 <= 15552000000L && j9 >= 1) {
            zzl().zzb(new zzjw(this, bundle2));
        } else {
            zzj().zzg().zza("Invalid conditional user property time to live", zzi().zzc(string), Long.valueOf(j9));
        }
    }

    public final void zza(zziq zziqVar, long j7, boolean z6) {
        zziq zziqVar2;
        boolean z7;
        zziq zziqVar3;
        boolean z8;
        boolean z9;
        zzu();
        int zza = zziqVar.zza();
        if (zznw.zza() && zze().zza(zzbh.f11311Y0)) {
            if (zza != -10) {
                zzip zzc = zziqVar.zzc();
                zzip zzipVar = zzip.f11805b;
                if (zzc == zzipVar && zziqVar.zzd() == zzipVar) {
                    zzj().zzv().zza("Ignoring empty consent settings");
                    return;
                }
            }
        } else if (zza != -10 && zziqVar.zze() == null && zziqVar.zzf() == null) {
            zzj().zzv().zza("Discarding empty consent settings");
            return;
        }
        synchronized (this.f11848h) {
            try {
                zziqVar2 = this.f11851k;
                z7 = false;
                if (zziq.zza(zza, zziqVar2.zza())) {
                    z8 = zziqVar.zzc(this.f11851k);
                    if (zziqVar.zzj() && !this.f11851k.zzj()) {
                        z7 = true;
                    }
                    zziqVar3 = zziqVar.zzb(this.f11851k);
                    this.f11851k = zziqVar3;
                    z9 = z7;
                    z7 = true;
                } else {
                    zziqVar3 = zziqVar;
                    z8 = false;
                    z9 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z7) {
            zzj().zzn().zza("Ignoring lower-priority consent settings, proposed settings", zziqVar3);
            return;
        }
        long andIncrement = this.f11852l.getAndIncrement();
        if (z8) {
            i(null);
            zzkj zzkjVar = new zzkj(this, zziqVar3, j7, andIncrement, z9, zziqVar2);
            if (z6) {
                zzt();
                zzkjVar.run();
                return;
            } else {
                zzl().zzc(zzkjVar);
                return;
            }
        }
        zzki zzkiVar = new zzki(this, zziqVar3, andIncrement, z9, zziqVar2);
        if (z6) {
            zzt();
            zzkiVar.run();
        } else if (zza != 30 && zza != -10) {
            zzl().zzb(zzkiVar);
        } else {
            zzl().zzc(zzkiVar);
        }
    }

    public final void zza(zziu zziuVar) {
        zziu zziuVar2;
        zzt();
        zzu();
        if (zziuVar != null && zziuVar != (zziuVar2 = this.f11844d)) {
            Preconditions.checkState(zziuVar2 == null, "EventInterceptor already set.");
        }
        this.f11844d = zziuVar;
    }

    public final void zza(Boolean bool) {
        zzu();
        zzl().zzb(new zzkh(this, bool));
    }

    public final void zza(String str, String str2, Object obj, boolean z6) {
        zza(str, str2, obj, z6, zzb().currentTimeMillis());
    }

    public final void zza(String str, String str2, Object obj, boolean z6, long j7) {
        int i2;
        int length;
        if (str == null) {
            str = "app";
        }
        String str3 = str;
        if (z6) {
            i2 = zzq().zzb(str2);
        } else {
            zznt zzq = zzq();
            if (zzq.I("user property", str2)) {
                if (!zzq.y("user property", zziv.f11831a, null, str2)) {
                    i2 = 15;
                } else if (zzq.p(24, "user property", str2)) {
                    i2 = 0;
                }
            }
            i2 = 6;
        }
        zzkd zzkdVar = this.f11859s;
        zzho zzhoVar = this.f11804a;
        if (i2 != 0) {
            zzq();
            String zza = zznt.zza(str2, 24, true);
            length = str2 != null ? str2.length() : 0;
            zzhoVar.zzt();
            zznt.zza(zzkdVar, i2, "_ev", zza, length);
            return;
        }
        if (obj != null) {
            int a7 = zzq().a(obj, str2);
            if (a7 != 0) {
                zzq();
                String zza2 = zznt.zza(str2, 24, true);
                length = ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0;
                zzhoVar.zzt();
                zznt.zza(zzkdVar, a7, "_ev", zza2, length);
                return;
            }
            Object G6 = zzq().G(obj, str2);
            if (G6 != null) {
                zzl().zzb(new zzjt(this, str3, str2, G6, j7));
                return;
            }
            return;
        }
        zzl().zzb(new zzjt(this, str3, str2, null, j7));
    }
}
