package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public class Wrappers {

    /* renamed from: b, reason: collision with root package name */
    public static final Wrappers f11057b = new Wrappers();

    /* renamed from: a, reason: collision with root package name */
    public PackageManagerWrapper f11058a = null;

    @KeepForSdk
    public static PackageManagerWrapper packageManager(Context context) {
        return f11057b.zza(context);
    }

    public final synchronized PackageManagerWrapper zza(Context context) {
        try {
            if (this.f11058a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f11058a = new PackageManagerWrapper(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f11058a;
    }
}
