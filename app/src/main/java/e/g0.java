package e;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class g0 extends Service {
    public static ServiceInfo getServiceInfo(Context context) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) g0.class), Build.VERSION.SDK_INT >= 24 ? f0.a() | 128 : 640);
    }
}
