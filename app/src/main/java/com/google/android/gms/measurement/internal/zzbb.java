package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzbb {

    /* renamed from: a, reason: collision with root package name */
    public final String f11245a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11246b;

    /* renamed from: c, reason: collision with root package name */
    public final long f11247c;

    /* renamed from: d, reason: collision with root package name */
    public final long f11248d;

    /* renamed from: e, reason: collision with root package name */
    public final long f11249e;

    /* renamed from: f, reason: collision with root package name */
    public final long f11250f;

    /* renamed from: g, reason: collision with root package name */
    public final long f11251g;

    /* renamed from: h, reason: collision with root package name */
    public final Long f11252h;

    /* renamed from: i, reason: collision with root package name */
    public final Long f11253i;

    /* renamed from: j, reason: collision with root package name */
    public final Long f11254j;

    /* renamed from: k, reason: collision with root package name */
    public final Boolean f11255k;

    public zzbb(String str, String str2, long j7) {
        this(str, str2, 0L, 0L, 0L, j7, 0L, null, null, null, null);
    }

    public final zzbb a(long j7) {
        return new zzbb(this.f11245a, this.f11246b, this.f11247c, this.f11248d, this.f11249e, j7, this.f11251g, this.f11252h, this.f11253i, this.f11254j, this.f11255k);
    }

    public final zzbb b(Long l7, Long l8, Boolean bool) {
        return new zzbb(this.f11245a, this.f11246b, this.f11247c, this.f11248d, this.f11249e, this.f11250f, this.f11251g, this.f11252h, l7, l8, (bool == null || bool.booleanValue()) ? bool : null);
    }

    public zzbb(String str, String str2, long j7, long j8, long j9, long j10, long j11, Long l7, Long l8, Long l9, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkArgument(j7 >= 0);
        Preconditions.checkArgument(j8 >= 0);
        Preconditions.checkArgument(j9 >= 0);
        Preconditions.checkArgument(j11 >= 0);
        this.f11245a = str;
        this.f11246b = str2;
        this.f11247c = j7;
        this.f11248d = j8;
        this.f11249e = j9;
        this.f11250f = j10;
        this.f11251g = j11;
        this.f11252h = l7;
        this.f11253i = l8;
        this.f11254j = l9;
        this.f11255k = bool;
    }
}
