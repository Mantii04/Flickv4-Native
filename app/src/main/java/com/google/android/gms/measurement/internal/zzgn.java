package com.google.android.gms.measurement.internal;

import android.text.TextUtils;

/* loaded from: classes2.dex */
final class zzgn {

    /* renamed from: a, reason: collision with root package name */
    public final zzip f11622a;

    public zzgn(zzip zzipVar) {
        this.f11622a = zzipVar;
    }

    public static zzgn a(String str) {
        return new zzgn((TextUtils.isEmpty(str) || str.length() > 1) ? zzip.f11805b : zziq.b(str.charAt(0)));
    }
}
