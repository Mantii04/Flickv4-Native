package W2;

import A.i;
import android.os.Build;
import android.util.Log;

/* loaded from: classes.dex */
public abstract class a {
    public static String a(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return i.k("TRuntime.", str);
        }
        String k7 = i.k("TRuntime.", str);
        return k7.length() > 23 ? k7.substring(0, 23) : k7;
    }

    public static void d(String str, String str2, Object obj) {
        String a7 = a(str);
        if (Log.isLoggable(a7, 3)) {
            Log.d(a7, String.format(str2, obj));
        }
    }

    public static void e(String str, String str2, Throwable th) {
        String a7 = a(str);
        if (Log.isLoggable(a7, 6)) {
            Log.e(a7, str2, th);
        }
    }

    public static void i(String str, String str2, Object obj) {
        String a7 = a(str);
        if (Log.isLoggable(a7, 4)) {
            Log.i(a7, String.format(str2, obj));
        }
    }

    public static void w(String str, String str2, Object obj) {
        String a7 = a(str);
        if (Log.isLoggable(a7, 5)) {
            Log.w(a7, String.format(str2, obj));
        }
    }

    public static void d(String str, String str2, Object... objArr) {
        String a7 = a(str);
        if (Log.isLoggable(a7, 3)) {
            Log.d(a7, String.format(str2, objArr));
        }
    }
}
