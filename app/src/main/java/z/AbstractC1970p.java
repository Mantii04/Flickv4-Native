package z;

import android.os.Bundle;
import android.os.IBinder;

/* renamed from: z.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1970p {
    public static IBinder getBinder(Bundle bundle, String str) {
        return bundle.getBinder(str);
    }

    public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
        bundle.putBinder(str, iBinder);
    }
}
