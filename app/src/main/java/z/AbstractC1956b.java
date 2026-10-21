package z;

import android.app.Activity;
import android.app.SharedElementCallback;

/* renamed from: z.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1956b {
    public static void a(Object obj) {
        ((SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
    }

    public static void b(Activity activity, String[] strArr, int i2) {
        activity.requestPermissions(strArr, i2);
    }

    public static boolean c(Activity activity, String str) {
        return activity.shouldShowRequestPermissionRationale(str);
    }
}
