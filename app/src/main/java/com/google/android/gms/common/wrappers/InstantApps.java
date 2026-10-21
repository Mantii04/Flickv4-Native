package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;

@KeepForSdk
/* loaded from: classes.dex */
public class InstantApps {

    /* renamed from: a, reason: collision with root package name */
    public static Context f11054a;

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f11055b;

    @KeepForSdk
    public static synchronized boolean isInstantApp(Context context) {
        boolean isInstantApp;
        Boolean bool;
        synchronized (InstantApps.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = f11054a;
            if (context2 != null && (bool = f11055b) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            f11055b = null;
            if (PlatformVersion.isAtLeastO()) {
                isInstantApp = applicationContext.getPackageManager().isInstantApp();
                f11055b = Boolean.valueOf(isInstantApp);
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f11055b = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    f11055b = Boolean.FALSE;
                }
            }
            f11054a = applicationContext;
            return f11055b.booleanValue();
        }
    }
}
