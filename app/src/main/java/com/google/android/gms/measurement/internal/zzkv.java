package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class zzkv extends zzg {

    /* renamed from: c, reason: collision with root package name */
    public volatile zzks f11977c;

    /* renamed from: d, reason: collision with root package name */
    public volatile zzks f11978d;

    /* renamed from: e, reason: collision with root package name */
    public zzks f11979e;

    /* renamed from: f, reason: collision with root package name */
    public final ConcurrentHashMap f11980f;

    /* renamed from: g, reason: collision with root package name */
    public Activity f11981g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f11982h;

    /* renamed from: i, reason: collision with root package name */
    public volatile zzks f11983i;

    /* renamed from: j, reason: collision with root package name */
    public zzks f11984j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f11985k;

    /* renamed from: l, reason: collision with root package name */
    public final Object f11986l;

    public zzkv(zzho zzhoVar) {
        super(zzhoVar);
        this.f11986l = new Object();
        this.f11980f = new ConcurrentHashMap();
    }

    public final String a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        String str = split.length > 0 ? split[split.length - 1] : "";
        return str.length() > zze().a(null, false) ? str.substring(0, zze().a(null, false)) : str;
    }

    public final void b(Activity activity, zzks zzksVar, boolean z6) {
        zzks zzksVar2;
        zzks zzksVar3 = this.f11977c == null ? this.f11978d : this.f11977c;
        if (zzksVar.f11967b == null) {
            zzksVar2 = new zzks(zzksVar.f11966a, activity != null ? a(activity.getClass()) : null, zzksVar.f11968c, zzksVar.f11970e, zzksVar.f11971f);
        } else {
            zzksVar2 = zzksVar;
        }
        this.f11978d = this.f11977c;
        this.f11977c = zzksVar2;
        zzl().zzb(new zzkx(this, zzksVar2, zzksVar3, zzb().elapsedRealtime(), z6));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(com.google.android.gms.measurement.internal.zzks r17, com.google.android.gms.measurement.internal.zzks r18, long r19, boolean r21, android.os.Bundle r22) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            r3 = r19
            r5 = r22
            r0.zzt()
            r6 = 0
            r7 = 1
            if (r2 == 0) goto L30
            long r8 = r1.f11968c
            long r10 = r2.f11968c
            int r8 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r8 != 0) goto L30
            java.lang.String r8 = r2.f11967b
            java.lang.String r9 = r1.f11967b
            boolean r8 = java.util.Objects.equals(r8, r9)
            if (r8 == 0) goto L30
            java.lang.String r8 = r2.f11966a
            java.lang.String r9 = r1.f11966a
            boolean r8 = java.util.Objects.equals(r8, r9)
            if (r8 != 0) goto L2e
            goto L30
        L2e:
            r8 = r6
            goto L31
        L30:
            r8 = r7
        L31:
            if (r21 == 0) goto L38
            com.google.android.gms.measurement.internal.zzks r9 = r0.f11979e
            if (r9 == 0) goto L38
            r6 = r7
        L38:
            boolean r9 = r1.f11970e
            if (r8 == 0) goto Lb7
            android.os.Bundle r8 = new android.os.Bundle
            if (r5 == 0) goto L45
            r8.<init>(r5)
        L43:
            r13 = r8
            goto L49
        L45:
            r8.<init>()
            goto L43
        L49:
            com.google.android.gms.measurement.internal.zznt.zza(r1, r13, r7)
            if (r2 == 0) goto L67
            java.lang.String r5 = r2.f11966a
            if (r5 == 0) goto L57
            java.lang.String r8 = "_pn"
            r13.putString(r8, r5)
        L57:
            java.lang.String r5 = r2.f11967b
            if (r5 == 0) goto L60
            java.lang.String r8 = "_pc"
            r13.putString(r8, r5)
        L60:
            java.lang.String r5 = "_pi"
            long r10 = r2.f11968c
            r13.putLong(r5, r10)
        L67:
            r10 = 0
            if (r6 == 0) goto L82
            com.google.android.gms.measurement.internal.zzmi r2 = r0.zzp()
            com.google.android.gms.measurement.internal.zzmo r2 = r2.f12108f
            long r14 = r2.f12120b
            long r14 = r3 - r14
            r2.f12120b = r3
            int r2 = (r14 > r10 ? 1 : (r14 == r10 ? 0 : -1))
            if (r2 <= 0) goto L82
            com.google.android.gms.measurement.internal.zznt r2 = r0.zzq()
            r2.zza(r13, r14)
        L82:
            com.google.android.gms.measurement.internal.zzae r2 = r0.zze()
            boolean r2 = r2.zzv()
            if (r2 != 0) goto L93
            java.lang.String r2 = "_mst"
            r14 = 1
            r13.putLong(r2, r14)
        L93:
            if (r9 == 0) goto L98
            java.lang.String r2 = "app"
            goto L9a
        L98:
            java.lang.String r2 = "auto"
        L9a:
            com.google.android.gms.common.util.Clock r5 = r0.zzb()
            long r14 = r5.currentTimeMillis()
            if (r9 == 0) goto Lad
            r21 = r10
            long r10 = r1.f11971f
            int r5 = (r10 > r21 ? 1 : (r10 == r21 ? 0 : -1))
            if (r5 == 0) goto Lad
            r14 = r10
        Lad:
            com.google.android.gms.measurement.internal.zziy r10 = r0.zzm()
            java.lang.String r12 = "_vs"
            r11 = r2
            r10.j(r11, r12, r13, r14)
        Lb7:
            if (r6 == 0) goto Lbe
            com.google.android.gms.measurement.internal.zzks r2 = r0.f11979e
            r0.d(r2, r7, r3)
        Lbe:
            r0.f11979e = r1
            if (r9 == 0) goto Lc4
            r0.f11984j = r1
        Lc4:
            com.google.android.gms.measurement.internal.zzla r2 = r0.zzo()
            r2.zza(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkv.c(com.google.android.gms.measurement.internal.zzks, com.google.android.gms.measurement.internal.zzks, long, boolean, android.os.Bundle):void");
    }

    public final void d(zzks zzksVar, boolean z6, long j7) {
        zzc().zza(zzb().elapsedRealtime());
        if (!zzp().zza(zzksVar != null && zzksVar.f11969d, z6, j7) || zzksVar == null) {
            return;
        }
        zzksVar.f11969d = false;
    }

    public final zzks e(Activity activity) {
        Preconditions.checkNotNull(activity);
        zzks zzksVar = (zzks) this.f11980f.get(activity);
        if (zzksVar == null) {
            zzks zzksVar2 = new zzks(null, a(activity.getClass()), zzq().zzm());
            this.f11980f.put(activity, zzksVar2);
            zzksVar = zzksVar2;
        }
        return this.f11983i != null ? this.f11983i : zzksVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final zzks zzaa() {
        return this.f11977c;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zza zzc() {
        return super.zzc();
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

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zziy zzm() {
        return super.zzm();
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

    @Override // com.google.android.gms.measurement.internal.zzd, com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean zzz() {
        return false;
    }

    public final zzks zza(boolean z6) {
        zzu();
        zzt();
        if (!z6) {
            return this.f11979e;
        }
        zzks zzksVar = this.f11979e;
        return zzksVar != null ? zzksVar : this.f11984j;
    }

    public final void zzb(Activity activity) {
        synchronized (this.f11986l) {
            this.f11985k = false;
            this.f11982h = true;
        }
        long elapsedRealtime = zzb().elapsedRealtime();
        if (!zze().zzv()) {
            this.f11977c = null;
            zzl().zzb(new zzkz(this, elapsedRealtime));
        } else {
            zzks e3 = e(activity);
            this.f11978d = this.f11977c;
            this.f11977c = null;
            zzl().zzb(new zzky(this, e3, elapsedRealtime));
        }
    }

    public final void zzc(Activity activity) {
        synchronized (this.f11986l) {
            this.f11985k = true;
            if (activity != this.f11981g) {
                synchronized (this.f11986l) {
                    this.f11981g = activity;
                    this.f11982h = false;
                }
                if (zze().zzv()) {
                    this.f11983i = null;
                    zzl().zzb(new zzlb(this));
                }
            }
        }
        if (!zze().zzv()) {
            this.f11977c = this.f11983i;
            zzl().zzb(new zzkw(this));
        } else {
            b(activity, e(activity), false);
            zza zzc = zzc();
            zzc.zzl().zzb(new zze(zzc, zzc.zzb().elapsedRealtime()));
        }
    }

    public final void zza(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!zze().zzv() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f11980f.put(activity, new zzks(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void zza(Activity activity) {
        synchronized (this.f11986l) {
            try {
                if (activity == this.f11981g) {
                    this.f11981g = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zze().zzv()) {
            this.f11980f.remove(activity);
        }
    }

    public final void zzb(Activity activity, Bundle bundle) {
        zzks zzksVar;
        if (!zze().zzv() || bundle == null || (zzksVar = (zzks) this.f11980f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzksVar.f11968c);
        bundle2.putString("name", zzksVar.f11966a);
        bundle2.putString("referrer_name", zzksVar.f11967b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Deprecated
    public final void zza(Activity activity, String str, String str2) {
        if (!zze().zzv()) {
            zzj().zzv().zza("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        zzks zzksVar = this.f11977c;
        if (zzksVar == null) {
            zzj().zzv().zza("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.f11980f.get(activity) == null) {
            zzj().zzv().zza("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = a(activity.getClass());
        }
        boolean equals = Objects.equals(zzksVar.f11967b, str2);
        boolean equals2 = Objects.equals(zzksVar.f11966a, str);
        if (equals && equals2) {
            zzj().zzv().zza("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > zze().a(null, false))) {
            zzj().zzv().zza("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > zze().a(null, false))) {
            zzj().zzv().zza("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        zzj().zzp().zza("Setting current screen to name, class", str == null ? "null" : str, str2);
        zzks zzksVar2 = new zzks(str, str2, zzq().zzm());
        this.f11980f.put(activity, zzksVar2);
        b(activity, zzksVar2, true);
    }

    public final void zza(Bundle bundle, long j7) {
        String str;
        synchronized (this.f11986l) {
            try {
                if (!this.f11985k) {
                    zzj().zzv().zza("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String str2 = null;
                if (bundle != null) {
                    String string = bundle.getString(FirebaseAnalytics.Param.SCREEN_NAME);
                    if (string != null && (string.length() <= 0 || string.length() > zze().a(null, false))) {
                        zzj().zzv().zza("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                        return;
                    }
                    String string2 = bundle.getString(FirebaseAnalytics.Param.SCREEN_CLASS);
                    if (string2 != null && (string2.length() <= 0 || string2.length() > zze().a(null, false))) {
                        zzj().zzv().zza("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                        return;
                    } else {
                        str2 = string2;
                        str = string;
                    }
                } else {
                    str = null;
                }
                if (str2 == null) {
                    Activity activity = this.f11981g;
                    if (activity != null) {
                        str2 = a(activity.getClass());
                    } else {
                        str2 = "Activity";
                    }
                }
                String str3 = str2;
                zzks zzksVar = this.f11977c;
                if (this.f11982h && zzksVar != null) {
                    this.f11982h = false;
                    boolean equals = Objects.equals(zzksVar.f11967b, str3);
                    boolean equals2 = Objects.equals(zzksVar.f11966a, str);
                    if (equals && equals2) {
                        zzj().zzv().zza("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                zzj().zzp().zza("Logging screen view with name, class", str == null ? "null" : str, str3 == null ? "null" : str3);
                zzks zzksVar2 = this.f11977c == null ? this.f11978d : this.f11977c;
                zzks zzksVar3 = new zzks(str, str3, zzq().zzm(), true, j7);
                this.f11977c = zzksVar3;
                this.f11978d = zzksVar2;
                this.f11983i = zzksVar3;
                zzl().zzb(new zzku(this, bundle, zzksVar3, zzksVar2, zzb().elapsedRealtime()));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
