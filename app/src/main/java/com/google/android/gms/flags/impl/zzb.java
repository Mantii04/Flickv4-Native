package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzb implements Callable<Integer> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f11130b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11131e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Integer f11132f;

    public zzb(SharedPreferences sharedPreferences, String str, Integer num) {
        this.f11130b = sharedPreferences;
        this.f11131e = str;
        this.f11132f = num;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Integer call() throws Exception {
        return Integer.valueOf(this.f11130b.getInt(this.f11131e, this.f11132f.intValue()));
    }
}
