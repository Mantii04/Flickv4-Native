package x3;

import android.os.Build;
import java.util.Locale;

/* renamed from: x3.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1836j {
    public static boolean isMeizuDevice() {
        String str = Build.MANUFACTURER;
        return (str != null ? str.toLowerCase(Locale.ENGLISH) : "").equals("meizu");
    }
}
