package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzfn;

/* loaded from: classes2.dex */
final /* synthetic */ class zzhf {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f11674a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f11675b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int[] f11676c;

    static {
        int[] iArr = new int[zzfn.zza.zzd.values().length];
        f11676c = iArr;
        try {
            iArr[zzfn.zza.zzd.DENIED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f11676c[zzfn.zza.zzd.GRANTED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        int[] iArr2 = new int[zzfn.zza.zze.values().length];
        f11675b = iArr2;
        try {
            iArr2[zzfn.zza.zze.AD_STORAGE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f11675b[zzfn.zza.zze.ANALYTICS_STORAGE.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f11675b[zzfn.zza.zze.AD_USER_DATA.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f11675b[zzfn.zza.zze.AD_PERSONALIZATION.ordinal()] = 4;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr3 = new int[com.google.android.gms.internal.measurement.zzs.values().length];
        f11674a = iArr3;
        try {
            iArr3[com.google.android.gms.internal.measurement.zzs.DEBUG.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f11674a[com.google.android.gms.internal.measurement.zzs.ERROR.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f11674a[com.google.android.gms.internal.measurement.zzs.WARN.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f11674a[com.google.android.gms.internal.measurement.zzs.VERBOSE.ordinal()] = 4;
        } catch (NoSuchFieldError unused10) {
        }
    }
}
