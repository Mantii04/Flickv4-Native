package com.ax.altpop.fg;

import Q1.c;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.lifecycle.J;
import androidx.lifecycle.Lifecycle$State;
import java.util.List;

/* loaded from: classes.dex */
public abstract class b {
    public static boolean a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        StringBuilder sb = new StringBuilder("isAppOnFG ");
        int i2 = Build.VERSION.SDK_INT;
        sb.append(i2);
        String sb2 = sb.toString();
        if (Q1.a.a(context)) {
            Log.v("com.ax.altpop.fg.b", sb2);
        }
        if (i2 >= 29) {
            return J.get().getLifecycle().getCurrentState().isAtLeast(Lifecycle$State.f6970j);
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null || runningAppProcesses.isEmpty()) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equalsIgnoreCase(context.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(Context context) {
        Q1.b a7 = Q1.b.a(context);
        String str = c.f2812e;
        a7.getClass();
        return Q1.b.f2805a.getBoolean(str, false) && Build.VERSION.SDK_INT >= 26;
    }
}
