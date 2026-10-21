package r1;

import android.app.ActivityManager;

/* loaded from: classes.dex */
public abstract class d {
    public static final boolean isLowRamDevice(ActivityManager activityManager) {
        kotlin.jvm.internal.j.checkNotNullParameter(activityManager, "activityManager");
        return activityManager.isLowRamDevice();
    }
}
