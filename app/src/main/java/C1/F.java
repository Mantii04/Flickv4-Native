package C1;

import android.content.Context;

/* loaded from: classes.dex */
public abstract class F {
    public static boolean a(Context context) {
        boolean isDeviceProtectedStorage;
        isDeviceProtectedStorage = context.isDeviceProtectedStorage();
        return isDeviceProtectedStorage;
    }
}
