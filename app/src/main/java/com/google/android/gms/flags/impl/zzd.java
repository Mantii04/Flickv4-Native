package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzd implements Callable<String> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f11136b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11137e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11138f;

    public zzd(SharedPreferences sharedPreferences, String str, String str2) {
        this.f11136b = sharedPreferences;
        this.f11137e = str;
        this.f11138f = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() throws Exception {
        return this.f11136b.getString(this.f11137e, this.f11138f);
    }
}
