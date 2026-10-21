package I;

import android.content.res.Configuration;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class h {
    public static o getLocales(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? o.wrap(g.a(configuration)) : o.create(configuration.locale);
    }

    public static void setLocales(Configuration configuration, o oVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            g.b(configuration, oVar);
        } else {
            if (oVar.isEmpty()) {
                return;
            }
            configuration.setLocale(oVar.get(0));
        }
    }
}
