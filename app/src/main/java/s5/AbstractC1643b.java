package s5;

import android.util.Log;
import io.hopmonsdk.Hopmn;

/* renamed from: s5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1643b {
    public static void d(String str, String str2, Object... objArr) {
        if (isLoggable(str, 3)) {
            Log.d(str, String.format(str2, objArr));
        }
    }

    public static void e(String str, String str2, Throwable th, Object... objArr) {
        if (isLoggable(str, 6)) {
            Log.e(str, String.format(str2, objArr), th);
        }
    }

    public static void i(String str, String str2, Object... objArr) {
        if (isLoggable(str, 4)) {
            Log.i(str, String.format(str2, objArr));
        }
    }

    public static boolean isLoggable(String str, int i2) {
        try {
            Hopmn hopmn = Hopmn.getInstance(true);
            if (hopmn != null) {
                if (!hopmn.isLoggable()) {
                }
            }
            return Log.isLoggable(str, i2);
        } catch (Exception e3) {
            Log.e(str, "Failed to getInstance on MoneytiserService onCreate: ", e3);
            return false;
        }
    }

    public static void w(String str, String str2, Object... objArr) {
        if (isLoggable(str, 5)) {
            Log.w(str, String.format(str2, objArr));
        }
    }

    public static void e(String str, String str2, Object... objArr) {
        if (Log.isLoggable(str, 6)) {
            Log.e(str, String.format(str2, objArr));
        }
    }
}
