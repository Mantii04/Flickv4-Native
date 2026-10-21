package h6;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f16626a = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");

    static {
        "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f16626a.matcher(str);
        if (matcher.find()) {
            return b(matcher.group(1).trim().replace("charset=", ""));
        }
        return null;
    }

    public static String b(String str) {
        if (str != null && str.length() != 0) {
            String replaceAll = str.trim().replaceAll("[\"']", "");
            try {
                if (Charset.isSupported(replaceAll)) {
                    return replaceAll;
                }
                String upperCase = replaceAll.toUpperCase(Locale.ENGLISH);
                if (Charset.isSupported(upperCase)) {
                    return upperCase;
                }
            } catch (IllegalCharsetNameException unused) {
            }
        }
        return null;
    }

    public static ByteBuffer readToByteBuffer(InputStream inputStream, int i2) throws IOException {
        k.isTrue(i2 >= 0, "maxSize must be 0 (unlimited) or larger");
        return i6.a.wrap(inputStream, 32768, i2).readToByteBuffer(i2);
    }
}
