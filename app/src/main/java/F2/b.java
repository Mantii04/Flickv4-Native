package F2;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import l2.m;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f989a = new ConcurrentHashMap();

    public static m obtain(Context context) {
        PackageInfo packageInfo;
        String packageName = context.getPackageName();
        ConcurrentHashMap concurrentHashMap = f989a;
        m mVar = (m) concurrentHashMap.get(packageName);
        if (mVar != null) {
            return mVar;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e3) {
            Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e3);
            packageInfo = null;
        }
        d dVar = new d(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
        m mVar2 = (m) concurrentHashMap.putIfAbsent(packageName, dVar);
        return mVar2 == null ? dVar : mVar2;
    }
}
