package b4;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Locale;
import java.util.UUID;

/* renamed from: b4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0653c {

    /* renamed from: a, reason: collision with root package name */
    public static String f8474a;

    public static synchronized String a(Context context) {
        boolean isDeviceProtectedStorage;
        synchronized (AbstractC0653c.class) {
            try {
                String str = f8474a;
                if (str != null) {
                    return str;
                }
                while (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    isDeviceProtectedStorage = context.isDeviceProtectedStorage();
                    if (isDeviceProtectedStorage) {
                        context = context.createDeviceProtectedStorageContext();
                    }
                }
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("imsdk_device_info", 0);
                String string = sharedPreferences.getString("device_id", null);
                f8474a = string;
                if (string != null) {
                    return string;
                }
                f8474a = UUID.randomUUID().toString().toUpperCase(Locale.US);
                sharedPreferences.edit().putString("device_id", f8474a).apply();
                return f8474a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
