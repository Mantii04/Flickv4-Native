package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zza implements Callable<Boolean> {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f11127b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11128e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Boolean f11129f;

    public zza(SharedPreferences sharedPreferences, String str, Boolean bool) {
        this.f11127b = sharedPreferences;
        this.f11128e = str;
        this.f11129f = bool;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() throws Exception {
        return Boolean.valueOf(this.f11127b.getBoolean(this.f11128e, this.f11129f.booleanValue()));
    }
}
