package z;

import android.content.Context;
import android.os.Build;

/* renamed from: z.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1973t {
    public static I.o getApplicationLocales(Context context) {
        if (Build.VERSION.SDK_INT < 33) {
            return I.o.forLanguageTags(AbstractC1966l.readLocales(context));
        }
        Object systemService = context.getSystemService("locale");
        return systemService != null ? I.o.wrap(AbstractC1972s.a(systemService)) : I.o.getEmptyLocaleList();
    }
}
