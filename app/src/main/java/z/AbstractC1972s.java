package z;

import android.app.LocaleManager;
import android.os.LocaleList;

/* renamed from: z.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1972s {
    public static LocaleList a(Object obj) {
        return ((LocaleManager) obj).getApplicationLocales();
    }

    public static LocaleList b(Object obj) {
        return ((LocaleManager) obj).getSystemLocales();
    }
}
