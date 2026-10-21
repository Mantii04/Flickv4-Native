package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;

/* loaded from: classes2.dex */
public class zzgp {
    private static UserManager zza;
    private static volatile boolean zzb = !zza();
    private static boolean zzc = false;

    private zzgp() {
    }

    public static boolean zza(Context context) {
        return zza() && !zzc(context);
    }

    public static boolean zzb(Context context) {
        return !zza() || zzc(context);
    }

    @TargetApi(24)
    private static boolean zzc(Context context) {
        if (zzb) {
            return true;
        }
        synchronized (zzgp.class) {
            try {
                if (zzb) {
                    return true;
                }
                boolean zzd = zzd(context);
                if (zzd) {
                    zzb = zzd;
                }
                return zzd;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @TargetApi(24)
    private static boolean zzd(Context context) {
        boolean z6;
        boolean isUserUnlocked;
        boolean z7 = true;
        int i2 = 1;
        while (true) {
            z6 = false;
            if (i2 > 2) {
                break;
            }
            if (zza == null) {
                zza = (UserManager) context.getSystemService(UserManager.class);
            }
            UserManager userManager = zza;
            if (userManager == null) {
                return true;
            }
            try {
                isUserUnlocked = userManager.isUserUnlocked();
                if (isUserUnlocked) {
                    break;
                }
                if (userManager.isUserRunning(Process.myUserHandle())) {
                    z7 = false;
                }
            } catch (NullPointerException e3) {
                Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e3);
                zza = null;
                i2++;
            }
        }
        z6 = z7;
        if (z6) {
            zza = null;
        }
        return z6;
    }

    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
