package B;

import android.content.pm.PackageInfo;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class b {
    public static long getLongVersionCode(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? a.b(packageInfo) : packageInfo.versionCode;
    }
}
