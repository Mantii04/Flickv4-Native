package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: a, reason: collision with root package name */
    public static SharedPreferences f11140a;

    public static SharedPreferences zza(Context context) throws Exception {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            try {
                if (f11140a == null) {
                    f11140a = (SharedPreferences) com.google.android.gms.internal.flags.zzd.zza(new zze(context));
                }
                sharedPreferences = f11140a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }
}
