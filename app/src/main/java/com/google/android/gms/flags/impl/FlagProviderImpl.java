package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

@DynamiteApi
/* loaded from: classes.dex */
public class FlagProviderImpl extends com.google.android.gms.flags.zzd {

    /* renamed from: a, reason: collision with root package name */
    public boolean f11125a = false;

    /* renamed from: b, reason: collision with root package name */
    public SharedPreferences f11126b;

    @Override // com.google.android.gms.flags.zze
    public boolean getBooleanFlagValue(String str, boolean z6, int i2) {
        if (!this.f11125a) {
            return z6;
        }
        SharedPreferences sharedPreferences = this.f11126b;
        Boolean valueOf = Boolean.valueOf(z6);
        try {
            valueOf = (Boolean) com.google.android.gms.internal.flags.zzd.zza(new zza(sharedPreferences, str, valueOf));
        } catch (Exception e3) {
            String valueOf2 = String.valueOf(e3.getMessage());
            Log.w("FlagDataUtils", valueOf2.length() != 0 ? "Flag value not available, returning default: ".concat(valueOf2) : new String("Flag value not available, returning default: "));
        }
        return valueOf.booleanValue();
    }

    @Override // com.google.android.gms.flags.zze
    public int getIntFlagValue(String str, int i2, int i7) {
        if (!this.f11125a) {
            return i2;
        }
        SharedPreferences sharedPreferences = this.f11126b;
        Integer valueOf = Integer.valueOf(i2);
        try {
            valueOf = (Integer) com.google.android.gms.internal.flags.zzd.zza(new zzb(sharedPreferences, str, valueOf));
        } catch (Exception e3) {
            String valueOf2 = String.valueOf(e3.getMessage());
            Log.w("FlagDataUtils", valueOf2.length() != 0 ? "Flag value not available, returning default: ".concat(valueOf2) : new String("Flag value not available, returning default: "));
        }
        return valueOf.intValue();
    }

    @Override // com.google.android.gms.flags.zze
    public long getLongFlagValue(String str, long j7, int i2) {
        if (!this.f11125a) {
            return j7;
        }
        SharedPreferences sharedPreferences = this.f11126b;
        Long valueOf = Long.valueOf(j7);
        try {
            valueOf = (Long) com.google.android.gms.internal.flags.zzd.zza(new zzc(sharedPreferences, str, valueOf));
        } catch (Exception e3) {
            String valueOf2 = String.valueOf(e3.getMessage());
            Log.w("FlagDataUtils", valueOf2.length() != 0 ? "Flag value not available, returning default: ".concat(valueOf2) : new String("Flag value not available, returning default: "));
        }
        return valueOf.longValue();
    }

    @Override // com.google.android.gms.flags.zze
    public String getStringFlagValue(String str, String str2, int i2) {
        if (this.f11125a) {
            try {
                return (String) com.google.android.gms.internal.flags.zzd.zza(new zzd(this.f11126b, str, str2));
            } catch (Exception e3) {
                String valueOf = String.valueOf(e3.getMessage());
                Log.w("FlagDataUtils", valueOf.length() != 0 ? "Flag value not available, returning default: ".concat(valueOf) : new String("Flag value not available, returning default: "));
            }
        }
        return str2;
    }

    @Override // com.google.android.gms.flags.zze
    public void init(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.f11125a) {
            return;
        }
        try {
            this.f11126b = zzf.zza(context.createPackageContext("com.google.android.gms", 0));
            this.f11125a = true;
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e3) {
            String valueOf = String.valueOf(e3.getMessage());
            Log.w("FlagProviderImpl", valueOf.length() != 0 ? "Could not retrieve sdk flags, continuing with defaults: ".concat(valueOf) : new String("Could not retrieve sdk flags, continuing with defaults: "));
        }
    }
}
