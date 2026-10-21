package C;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class t {
    public static void rebase(Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 29) {
            s.a(theme);
            return;
        }
        synchronized (b.f307e) {
            if (!b.f309g) {
                try {
                    Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                    b.f308f = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException e3) {
                    Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e3);
                }
                b.f309g = true;
            }
            Method method = b.f308f;
            if (method != null) {
                try {
                    method.invoke(theme, new Object[0]);
                } catch (IllegalAccessException | InvocationTargetException e7) {
                    Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e7);
                    b.f308f = null;
                }
            }
        }
    }
}
