package com.google.android.gms.cast.internal;

import A.i;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Locale;

@KeepForSdk
/* loaded from: classes.dex */
public class Logger {

    /* renamed from: a, reason: collision with root package name */
    public final String f10334a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10335b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10336c;

    @KeepForSdk
    public Logger(String str) {
        this(str, null);
    }

    @KeepForSdk
    public void d(String str, Object... objArr) {
        if (zzc()) {
            Log.d(this.f10334a, zza(str, objArr));
        }
    }

    @KeepForSdk
    public void e(String str, Object... objArr) {
        Log.e(this.f10334a, zza(str, objArr));
    }

    @KeepForSdk
    public void i(String str, Object... objArr) {
        Log.i(this.f10334a, zza(str, objArr));
    }

    @KeepForSdk
    public void w(String str, Object... objArr) {
        Log.w(this.f10334a, zza(str, objArr));
    }

    public final String zza(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(Locale.ROOT, str, objArr);
        }
        String str2 = this.f10336c;
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        return String.valueOf(str2).concat(String.valueOf(str));
    }

    public final boolean zzc() {
        return !Build.TYPE.equals("user") && this.f10335b && Log.isLoggable(this.f10334a, 3);
    }

    public Logger(String str, String str2) {
        Preconditions.checkNotEmpty(str, "The log tag cannot be null or empty.");
        this.f10334a = str;
        this.f10335b = str.length() <= 23;
        this.f10336c = TextUtils.isEmpty(str2) ? null : i.l("[", str2, "] ");
    }

    @KeepForSdk
    public void e(Throwable th, String str, Object... objArr) {
        Log.e(this.f10334a, zza(str, objArr), th);
    }

    @KeepForSdk
    public void w(Throwable th, String str, Object... objArr) {
        Log.w(this.f10334a, zza(str, objArr), th);
    }

    @KeepForSdk
    public void d(Throwable th, String str, Object... objArr) {
        if (zzc()) {
            Log.d(this.f10334a, zza(str, objArr), th);
        }
    }
}
