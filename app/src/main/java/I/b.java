package I;

import android.os.Build;
import androidx.media3.common.PlaybackException;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class b {
    static {
        int i2 = Build.VERSION.SDK_INT;
        a aVar = a.f1218a;
        if (i2 >= 30) {
            aVar.getExtensionVersion(30);
        }
        if (i2 >= 30) {
            aVar.getExtensionVersion(31);
        }
        if (i2 >= 30) {
            aVar.getExtensionVersion(33);
        }
        if (i2 >= 30) {
            aVar.getExtensionVersion(PlaybackException.CUSTOM_ERROR_CODE_BASE);
        }
    }

    public static final boolean isAtLeastPreReleaseCodename(String codename, String buildCodename) {
        kotlin.jvm.internal.j.checkNotNullParameter(codename, "codename");
        kotlin.jvm.internal.j.checkNotNullParameter(buildCodename, "buildCodename");
        if (kotlin.jvm.internal.j.areEqual("REL", buildCodename)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String upperCase = buildCodename.toUpperCase(locale);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        String upperCase2 = codename.toUpperCase(locale);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase.compareTo(upperCase2) >= 0;
    }

    public static final boolean isAtLeastT() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33) {
            return true;
        }
        if (i2 < 32) {
            return false;
        }
        String CODENAME = Build.VERSION.CODENAME;
        kotlin.jvm.internal.j.checkNotNullExpressionValue(CODENAME, "CODENAME");
        return isAtLeastPreReleaseCodename("Tiramisu", CODENAME);
    }
}
