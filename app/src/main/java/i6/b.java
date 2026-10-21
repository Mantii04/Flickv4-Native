package i6;

import java.util.Locale;

/* loaded from: classes2.dex */
public abstract class b {
    public static String lowerCase(String str) {
        return str != null ? str.toLowerCase(Locale.ENGLISH) : "";
    }

    public static String normalize(String str) {
        return lowerCase(str).trim();
    }
}
