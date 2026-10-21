package K;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f1560a;

    static {
        if (Build.VERSION.SDK_INT < 24) {
            try {
                f1560a = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e3) {
                throw new IllegalStateException(e3);
            }
        }
    }

    public static String maximizeAndGetScript(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return e.c(e.a(e.b(locale)));
        }
        try {
            return d.a((Locale) f1560a.invoke(null, locale));
        } catch (IllegalAccessException e3) {
            Log.w("ICUCompat", e3);
            return d.a(locale);
        } catch (InvocationTargetException e7) {
            Log.w("ICUCompat", e7);
            return d.a(locale);
        }
    }
}
