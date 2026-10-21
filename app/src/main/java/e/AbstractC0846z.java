package e;

import android.app.LocaleManager;
import android.os.LocaleList;

/* renamed from: e.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0846z {
    public static LocaleList a(Object obj) {
        return ((LocaleManager) obj).getApplicationLocales();
    }

    public static void b(Object obj, LocaleList localeList) {
        ((LocaleManager) obj).setApplicationLocales(localeList);
    }
}
