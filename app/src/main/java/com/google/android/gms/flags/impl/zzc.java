package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzc implements Callable<Long> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f11133b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11134e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Long f11135f;

    public zzc(SharedPreferences sharedPreferences, String str, Long l7) {
        this.f11133b = sharedPreferences;
        this.f11134e = str;
        this.f11135f = l7;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Long call() throws Exception {
        return Long.valueOf(this.f11133b.getLong(this.f11134e, this.f11135f.longValue()));
    }
}
