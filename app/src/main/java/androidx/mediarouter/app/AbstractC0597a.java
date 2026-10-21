package androidx.mediarouter.app;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;

/* renamed from: androidx.mediarouter.app.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0597a {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f7756a;

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f7757b;

    /* renamed from: c, reason: collision with root package name */
    public static Boolean f7758c;

    /* renamed from: d, reason: collision with root package name */
    public static Boolean f7759d;

    /* renamed from: e, reason: collision with root package name */
    public static Boolean f7760e;

    /* renamed from: f, reason: collision with root package name */
    public static Boolean f7761f;

    /* renamed from: g, reason: collision with root package name */
    public static Boolean f7762g;

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f7761f == null) {
            f7761f = Boolean.valueOf(Build.VERSION.SDK_INT >= 26 && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        return f7761f.booleanValue();
    }

    public static boolean b(Resources resources) {
        boolean z6 = false;
        if (resources == null) {
            return false;
        }
        if (f7759d == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z6 = true;
            }
            f7759d = Boolean.valueOf(z6);
        }
        return f7759d.booleanValue();
    }

    public static boolean c(Context context) {
        Resources resources = context.getResources();
        if (resources == null) {
            return false;
        }
        if (f7757b == null) {
            f7757b = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || b(resources));
        }
        return f7757b.booleanValue();
    }

    public static boolean d(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f7762g == null) {
            f7762g = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.tv") || packageManager.hasSystemFeature("android.hardware.type.television") || packageManager.hasSystemFeature("android.software.leanback"));
        }
        return f7762g.booleanValue();
    }
}
