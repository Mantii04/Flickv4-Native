package org.apache.commons.lang3;

/* loaded from: classes2.dex */
public class CharSetUtils {
    public static boolean containsAny(String str, String... strArr) {
        if (!StringUtils.isEmpty(str) && !deepEmpty(strArr)) {
            CharSet charSet = CharSet.getInstance(strArr);
            for (char c7 : str.toCharArray()) {
                if (charSet.contains(c7)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int count(String str, String... strArr) {
        if (StringUtils.isEmpty(str) || deepEmpty(strArr)) {
            return 0;
        }
        CharSet charSet = CharSet.getInstance(strArr);
        int i2 = 0;
        for (char c7 : str.toCharArray()) {
            if (charSet.contains(c7)) {
                i2++;
            }
        }
        return i2;
    }

    private static boolean deepEmpty(String[] strArr) {
        if (strArr == null) {
            return true;
        }
        for (String str : strArr) {
            if (StringUtils.isNotEmpty(str)) {
                return false;
            }
        }
        return true;
    }

    public static String delete(String str, String... strArr) {
        return (StringUtils.isEmpty(str) || deepEmpty(strArr)) ? str : modify(str, strArr, false);
    }

    public static String keep(String str, String... strArr) {
        if (str == null) {
            return null;
        }
        return (str.isEmpty() || deepEmpty(strArr)) ? "" : modify(str, strArr, true);
    }

    private static String modify(String str, String[] strArr, boolean z6) {
        CharSet charSet = CharSet.getInstance(strArr);
        StringBuilder sb = new StringBuilder(str.length());
        for (char c7 : str.toCharArray()) {
            if (charSet.contains(c7) == z6) {
                sb.append(c7);
            }
        }
        return sb.toString();
    }

    public static String squeeze(String str, String... strArr) {
        if (StringUtils.isEmpty(str) || deepEmpty(strArr)) {
            return str;
        }
        CharSet charSet = CharSet.getInstance(strArr);
        StringBuilder sb = new StringBuilder(str.length());
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        char c7 = charArray[0];
        sb.append(c7);
        Character ch = null;
        Character ch2 = null;
        for (int i2 = 1; i2 < length; i2++) {
            char c8 = charArray[i2];
            if (c8 == c7) {
                if (ch == null || c8 != ch.charValue()) {
                    if (ch2 == null || c8 != ch2.charValue()) {
                        if (charSet.contains(c8)) {
                            ch = Character.valueOf(c8);
                        } else {
                            ch2 = Character.valueOf(c8);
                        }
                    }
                }
            }
            sb.append(c8);
            c7 = c8;
        }
        return sb.toString();
    }
}
