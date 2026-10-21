package h6;

import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.message.TokenParser;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f16652a = {"", StringUtils.SPACE, "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};

    /* renamed from: b, reason: collision with root package name */
    public static final i f16653b = new i();

    public static void appendNormalisedWhitespace(StringBuilder sb, String str, boolean z6) {
        int length = str.length();
        int i2 = 0;
        boolean z7 = false;
        boolean z8 = false;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (isActuallyWhitespace(codePointAt)) {
                if ((!z6 || z7) && !z8) {
                    sb.append(TokenParser.SP);
                    z8 = true;
                }
            } else if (!isInvisibleChar(codePointAt)) {
                sb.appendCodePoint(codePointAt);
                z8 = false;
                z7 = true;
            }
            i2 += Character.charCount(codePointAt);
        }
    }

    public static boolean in(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean inSorted(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean isActuallyWhitespace(int i2) {
        return i2 == 32 || i2 == 9 || i2 == 10 || i2 == 12 || i2 == 13 || i2 == 160;
    }

    public static boolean isBlank(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (!isWhitespace(str.codePointAt(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isInvisibleChar(int i2) {
        if (Character.getType(i2) == 16) {
            return i2 == 8203 || i2 == 8204 || i2 == 8205 || i2 == 173;
        }
        return false;
    }

    public static boolean isNumeric(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isDigit(str.codePointAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhitespace(int i2) {
        return i2 == 32 || i2 == 9 || i2 == 10 || i2 == 12 || i2 == 13;
    }

    public static String join(Collection collection, String str) {
        return join(collection.iterator(), str);
    }

    public static String padding(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("width must be > 0");
        }
        if (i2 < 21) {
            return f16652a[i2];
        }
        char[] cArr = new char[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            cArr[i7] = TokenParser.SP;
        }
        return String.valueOf(cArr);
    }

    public static URL resolve(URL url, String str) throws MalformedURLException {
        if (str.startsWith("?")) {
            str = url.getPath() + str;
        }
        if (str.indexOf(46) == 0 && url.getFile().indexOf(47) != 0) {
            url = new URL(url.getProtocol(), url.getHost(), url.getPort(), RemoteSettings.FORWARD_SLASH_STRING + url.getFile());
        }
        return new URL(url, str);
    }

    public static StringBuilder stringBuilder() {
        i iVar = f16653b;
        StringBuilder sb = (StringBuilder) iVar.get();
        if (sb.length() <= 8192) {
            sb.delete(0, sb.length());
            return sb;
        }
        StringBuilder sb2 = new StringBuilder(8192);
        iVar.set(sb2);
        return sb2;
    }

    public static String join(Iterator it, String str) {
        if (!it.hasNext()) {
            return "";
        }
        String obj = it.next().toString();
        if (!it.hasNext()) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(64);
        sb.append(obj);
        while (it.hasNext()) {
            sb.append(str);
            sb.append(it.next());
        }
        return sb.toString();
    }

    public static String resolve(String str, String str2) {
        try {
            try {
                return resolve(new URL(str), str2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(str2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return "";
        }
    }
}
