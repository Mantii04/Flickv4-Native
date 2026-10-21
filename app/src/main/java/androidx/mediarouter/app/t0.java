package androidx.mediarouter.app;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class t0 {
    public static boolean a(Context context) {
        ApplicationInfo applicationInfo;
        Intent putExtra = new Intent().addFlags(268435456).setAction("com.android.settings.panel.action.MEDIA_OUTPUT").putExtra("com.android.settings.panel.extra.PACKAGE_NAME", context.getPackageName());
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(putExtra, 0).iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (activityInfo != null && (applicationInfo = activityInfo.applicationInfo) != null && (applicationInfo.flags & 129) != 0) {
                context.startActivity(putExtra);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0065, code lost:
    
        if (a(r5) != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean showDialog(android.content.Context r5) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 30
            r2 = 1
            r3 = 0
            r4 = 34
            if (r0 < r4) goto L17
            if (r0 < r1) goto L70
            android.media.MediaRouter2 r1 = androidx.mediarouter.app.r0.a(r5)
            if (r0 < r4) goto L70
            boolean r0 = androidx.mediarouter.app.s0.a(r1)
            goto L71
        L17:
            r4 = 31
            if (r0 < r4) goto L69
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            java.lang.String r1 = "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"
            android.content.Intent r0 = r0.setAction(r1)
            java.lang.String r1 = "com.android.systemui"
            android.content.Intent r0 = r0.setPackage(r1)
            java.lang.String r1 = r5.getPackageName()
            java.lang.String r4 = "package_name"
            android.content.Intent r0 = r0.putExtra(r4, r1)
            android.content.pm.PackageManager r1 = r5.getPackageManager()
            java.util.List r1 = r1.queryBroadcastReceivers(r0, r3)
            java.util.Iterator r1 = r1.iterator()
        L42:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L61
            java.lang.Object r4 = r1.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ActivityInfo r4 = r4.activityInfo
            if (r4 == 0) goto L42
            android.content.pm.ApplicationInfo r4 = r4.applicationInfo
            if (r4 != 0) goto L57
            goto L42
        L57:
            int r4 = r4.flags
            r4 = r4 & 129(0x81, float:1.81E-43)
            if (r4 == 0) goto L42
            r5.sendBroadcast(r0)
            goto L67
        L61:
            boolean r0 = a(r5)
            if (r0 == 0) goto L70
        L67:
            r0 = r2
            goto L71
        L69:
            if (r0 != r1) goto L70
            boolean r0 = a(r5)
            goto L71
        L70:
            r0 = r3
        L71:
            if (r0 == 0) goto L74
            return r2
        L74:
            android.content.pm.PackageManager r0 = r5.getPackageManager()
            java.lang.String r1 = "android.hardware.type.watch"
            boolean r0 = r0.hasSystemFeature(r1)
            if (r0 == 0) goto Lca
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r1 = "android.settings.BLUETOOTH_SETTINGS"
            r0.<init>(r1)
            r1 = 268468224(0x10008000, float:2.5342157E-29)
            android.content.Intent r0 = r0.addFlags(r1)
            java.lang.String r1 = "EXTRA_CONNECTION_ONLY"
            android.content.Intent r0 = r0.putExtra(r1, r2)
            java.lang.String r1 = "android.bluetooth.devicepicker.extra.FILTER_TYPE"
            android.content.Intent r0 = r0.putExtra(r1, r2)
            android.content.pm.PackageManager r1 = r5.getPackageManager()
            java.util.List r1 = r1.queryIntentActivities(r0, r3)
            java.util.Iterator r1 = r1.iterator()
        La6:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto Lc6
            java.lang.Object r4 = r1.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ActivityInfo r4 = r4.activityInfo
            if (r4 == 0) goto La6
            android.content.pm.ApplicationInfo r4 = r4.applicationInfo
            if (r4 != 0) goto Lbb
            goto La6
        Lbb:
            int r4 = r4.flags
            r4 = r4 & 129(0x81, float:1.81E-43)
            if (r4 == 0) goto La6
            r5.startActivity(r0)
            r5 = r2
            goto Lc7
        Lc6:
            r5 = r3
        Lc7:
            if (r5 == 0) goto Lca
            return r2
        Lca:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.t0.showDialog(android.content.Context):boolean");
    }
}
