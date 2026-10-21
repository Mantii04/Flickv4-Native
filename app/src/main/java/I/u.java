package I;

import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class u {
    public static boolean isUserUnlocked(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return t.a(context);
        }
        return true;
    }
}
