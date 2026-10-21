package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzgm extends zzil {

    /* renamed from: A, reason: collision with root package name */
    public static final Pair f11597A = new Pair("", 0L);

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences f11598c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f11599d;

    /* renamed from: e, reason: collision with root package name */
    public SharedPreferences f11600e;

    /* renamed from: f, reason: collision with root package name */
    public zzgq f11601f;

    /* renamed from: g, reason: collision with root package name */
    public final zzgr f11602g;

    /* renamed from: h, reason: collision with root package name */
    public final zzgs f11603h;

    /* renamed from: i, reason: collision with root package name */
    public String f11604i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f11605j;

    /* renamed from: k, reason: collision with root package name */
    public long f11606k;

    /* renamed from: l, reason: collision with root package name */
    public final zzgr f11607l;

    /* renamed from: m, reason: collision with root package name */
    public final zzgp f11608m;

    /* renamed from: n, reason: collision with root package name */
    public final zzgs f11609n;

    /* renamed from: o, reason: collision with root package name */
    public final zzgo f11610o;

    /* renamed from: p, reason: collision with root package name */
    public final zzgp f11611p;

    /* renamed from: q, reason: collision with root package name */
    public final zzgr f11612q;

    /* renamed from: r, reason: collision with root package name */
    public final zzgr f11613r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f11614s;

    /* renamed from: t, reason: collision with root package name */
    public final zzgp f11615t;

    /* renamed from: u, reason: collision with root package name */
    public final zzgp f11616u;

    /* renamed from: v, reason: collision with root package name */
    public final zzgr f11617v;

    /* renamed from: w, reason: collision with root package name */
    public final zzgs f11618w;

    /* renamed from: x, reason: collision with root package name */
    public final zzgs f11619x;

    /* renamed from: y, reason: collision with root package name */
    public final zzgr f11620y;

    /* renamed from: z, reason: collision with root package name */
    public final zzgo f11621z;

    public zzgm(zzho zzhoVar) {
        super(zzhoVar);
        this.f11599d = new Object();
        this.f11607l = new zzgr(this, "session_timeout", 1800000L);
        this.f11608m = new zzgp(this, "start_new_session", true);
        this.f11612q = new zzgr(this, "last_pause_time", 0L);
        this.f11613r = new zzgr(this, "session_id", 0L);
        this.f11609n = new zzgs(this, "non_personalized_ads", null);
        this.f11610o = new zzgo(this, "last_received_uri_timestamps_by_source", null);
        this.f11611p = new zzgp(this, "allow_remote_dynamite", false);
        this.f11602g = new zzgr(this, "first_open_time", 0L);
        new zzgr(this, "app_install_time", 0L);
        this.f11603h = new zzgs(this, "app_instance_id", null);
        this.f11615t = new zzgp(this, "app_backgrounded", false);
        this.f11616u = new zzgp(this, "deep_link_retrieval_complete", false);
        this.f11617v = new zzgr(this, "deep_link_retrieval_attempts", 0L);
        this.f11618w = new zzgs(this, "firebase_feature_rollouts", null);
        this.f11619x = new zzgs(this, "deferred_attribution_cache", null);
        this.f11620y = new zzgr(this, "deferred_attribution_cache_timestamp", 0L);
        this.f11621z = new zzgo(this, "default_event_parameters", null);
    }

    public final boolean a(long j7) {
        return j7 - this.f11607l.zza() > this.f11612q.zza();
    }

    public final void b(boolean z6) {
        zzt();
        zzj().zzp().zza("App measurement setting deferred collection", Boolean.valueOf(z6));
        SharedPreferences.Editor edit = zzg().edit();
        edit.putBoolean("deferred_analytics_collection", z6);
        edit.apply();
    }

    public final SparseArray c() {
        Bundle zza = this.f11610o.zza();
        if (zza == null) {
            return new SparseArray();
        }
        int[] intArray = zza.getIntArray("uriSources");
        long[] longArray = zza.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray();
        }
        if (intArray.length != longArray.length) {
            zzj().zzg().zza("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray();
        }
        SparseArray sparseArray = new SparseArray();
        for (int i2 = 0; i2 < intArray.length; i2++) {
            sparseArray.put(intArray[i2], Long.valueOf(longArray[i2]));
        }
        return sparseArray;
    }

    public final zziq d() {
        zzt();
        return zziq.zza(zzg().getString("consent_settings", "G1"), zzg().getInt("consent_source", 100));
    }

    public final boolean zza(int i2) {
        return zziq.zza(i2, zzg().getInt("consent_source", 100));
    }

    @Override // com.google.android.gms.measurement.internal.zzil
    public final void zzaa() {
        SharedPreferences sharedPreferences = zza().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f11598c = sharedPreferences;
        boolean z6 = sharedPreferences.getBoolean("has_been_opened", false);
        this.f11614s = z6;
        if (!z6) {
            SharedPreferences.Editor edit = this.f11598c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f11601f = new zzgq(this, Math.max(0L, ((Long) zzbh.f11322d.zza(null)).longValue()));
    }

    public final SharedPreferences zzc() {
        zzt();
        zzac();
        if (this.f11600e == null) {
            synchronized (this.f11599d) {
                try {
                    if (this.f11600e == null) {
                        String str = zza().getPackageName() + "_preferences";
                        zzj().zzp().zza("Default prefs file", str);
                        this.f11600e = zza().getSharedPreferences(str, 0);
                    }
                } finally {
                }
            }
        }
        return this.f11600e;
    }

    public final SharedPreferences zzg() {
        zzt();
        zzac();
        Preconditions.checkNotNull(this.f11598c);
        return this.f11598c;
    }

    @Override // com.google.android.gms.measurement.internal.zzil
    public final boolean zzo() {
        return true;
    }

    public final String zzw() {
        zzt();
        String string = zzg().getString("previous_os_version", null);
        zzf().zzac();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = zzg().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    public final boolean zza(zzmt zzmtVar) {
        zzt();
        String string = zzg().getString("stored_tcf_param", "");
        String a7 = zzmtVar.a();
        if (a7.equals(string)) {
            return false;
        }
        SharedPreferences.Editor edit = zzg().edit();
        edit.putString("stored_tcf_param", a7);
        edit.apply();
        return true;
    }
}
