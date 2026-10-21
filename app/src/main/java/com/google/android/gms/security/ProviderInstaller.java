package com.google.android.gms.security;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.DynamiteModule;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class ProviderInstaller {

    /* renamed from: a, reason: collision with root package name */
    public static final GoogleApiAvailabilityLight f12274a = GoogleApiAvailabilityLight.getInstance();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f12275b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static Method f12276c = null;

    /* renamed from: d, reason: collision with root package name */
    public static Method f12277d = null;

    public interface ProviderInstallListener {
    }

    public static void a(Context context, String str) {
        try {
            if (f12276c == null) {
                f12276c = context.getClassLoader().loadClass(str).getMethod("insertProvider", Context.class);
            }
            f12276c.invoke(null, context);
        } catch (Exception e3) {
            Throwable cause = e3.getCause();
            if (Log.isLoggable("ProviderInstaller", 6)) {
                Log.e("ProviderInstaller", "Failed to install provider: ".concat(String.valueOf(cause == null ? e3.getMessage() : cause.getMessage())));
            }
            throw new GooglePlayServicesNotAvailableException(8);
        }
    }

    public static void installIfNeeded(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        Context context2;
        Preconditions.checkNotNull(context, "Context must not be null");
        f12274a.verifyGooglePlayServicesIsAvailable(context, 11925000);
        synchronized (f12275b) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                context2 = DynamiteModule.load(context, DynamiteModule.f11106d, "com.google.android.gms.providerinstaller.dynamite").getModuleContext();
            } catch (DynamiteModule.LoadingException e3) {
                Log.w("ProviderInstaller", "Failed to load providerinstaller module: ".concat(String.valueOf(e3.getMessage())));
                context2 = null;
            }
            if (context2 != null) {
                a(context2, "com.google.android.gms.providerinstaller.ProviderInstallerImpl");
                return;
            }
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    if (f12277d == null) {
                        Class<?> cls = Long.TYPE;
                        f12277d = remoteContext.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("reportRequestStats", Context.class, cls, cls);
                    }
                    f12277d.invoke(null, context, Long.valueOf(elapsedRealtime), Long.valueOf(elapsedRealtime2));
                } catch (Exception e7) {
                    Log.w("ProviderInstaller", "Failed to report request stats: ".concat(String.valueOf(e7.getMessage())));
                }
            }
            if (remoteContext != null) {
                a(remoteContext, "com.google.android.gms.common.security.ProviderInstallerImpl");
            } else {
                Log.e("ProviderInstaller", "Failed to get remote context");
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }
}
