package j0;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import androidx.leanback.widget.j1;
import java.util.Iterator;

/* renamed from: j0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1037b {

    /* renamed from: c, reason: collision with root package name */
    public static C1037b f16940c;

    /* renamed from: a, reason: collision with root package name */
    public boolean f16941a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16942b;

    public static C1037b getInstance(Context context) {
        if (f16940c == null) {
            C1037b c1037b = new C1037b();
            PackageManager packageManager = context.getPackageManager();
            Iterator<ResolveInfo> it = packageManager.queryBroadcastReceivers(new Intent("android.support.v17.leanback.action.PARTNER_CUSTOMIZATION"), 0).iterator();
            Resources resources = null;
            String str = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ActivityInfo activityInfo = it.next().activityInfo;
                String str2 = activityInfo.packageName;
                if (str2 != null && (activityInfo.applicationInfo.flags & 1) != 0) {
                    try {
                        resources = packageManager.getResourcesForApplication(str2);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                if (resources != null) {
                    str = str2;
                    break;
                }
                str = str2;
            }
            C1036a c1036a = resources != null ? new C1036a(resources, str) : null;
            if (j1.supportsDynamicShadow()) {
                c1037b.f16941a = false;
                if (c1036a != null) {
                    c1037b.f16941a = c1036a.getBoolean("leanback_prefer_static_shadows", false);
                }
            } else {
                c1037b.f16941a = true;
            }
            boolean isLowRamDevice = ((ActivityManager) context.getSystemService("activity")).isLowRamDevice();
            c1037b.f16942b = isLowRamDevice;
            if (c1036a != null) {
                c1037b.f16942b = c1036a.getBoolean("leanback_outline_clipping_disabled", isLowRamDevice);
            }
            f16940c = c1037b;
        }
        return f16940c;
    }

    public boolean isOutlineClippingDisabled() {
        return this.f16942b;
    }

    public boolean preferStaticShadows() {
        return this.f16941a;
    }
}
