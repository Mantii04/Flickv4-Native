package org.apache.commons.lang3;

/* loaded from: classes2.dex */
public class CharUtils {
    public static final char CR = '\r';
    public static final char LF = '\n';
    public static final char NUL = 0;
    private static final String[] CHAR_STRING_ARRAY = new String[128];
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    static {
        char c7 = 0;
        while (true) {
            String[] strArr = CHAR_STRING_ARRAY;
            if (c7 >= strArr.length) {
                return;
            }
            strArr[c7] = String.valueOf(c7);
            c7 = (char) (c7 + 1);
        }
    }

    public static int compare(char c7, char c8) {
        return c7 - c8;
    }

    public static boolean isAscii(char c7) {
        return c7 < 128;
    }

    public static boolean isAsciiAlpha(char c7) {
        return isAsciiAlphaUpper(c7) || isAsciiAlphaLower(c7);
    }

    public static boolean isAsciiAlphaLower(char c7) {
        return c7 >= 'a' && c7 <= 'z';
    }

    public static boolean isAsciiAlphaUpper(char c7) {
        return c7 >= 'A' && c7 <= 'Z';
    }

    public static boolean isAsciiAlphanumeric(char c7) {
        return isAsciiAlpha(c7) || isAsciiNumeric(c7);
    }

    public static boolean isAsciiControl(char c7) {
        return c7 < ' ' || c7 == 127;
    }

    public static boolean isAsciiNumeric(char c7) {
        return c7 >= '0' && c7 <= '9';
    }

    public static boolean isAsciiPrintable(char c7) {
        return c7 >= ' ' && c7 < 127;
    }

    public static char toChar(Character ch) {
        Validate.isTrue(ch != null, "The Character must not be null", new Object[0]);
        return ch.charValue();
    }

    @Deprecated
    public static Character toCharacterObject(char c7) {
        return Character.valueOf(c7);
    }

    public static int toIntValue(char c7) {
        if (isAsciiNumeric(c7)) {
            return c7 - '0';
        }
        throw new IllegalArgumentException("The character " + c7 + " is not in the range '0' - '9'");
    }

    public static String toString(char c7) {
        return c7 < 128 ? CHAR_STRING_ARRAY[c7] : new String(new char[]{c7});
    }

    public static String unicodeEscaped(char c7) {
        StringBuilder sb = new StringBuilder("\\u");
        char[] cArr = HEX_DIGITS;
        sb.append(cArr[(c7 >> '\f') & 15]);
        sb.append(cArr[(c7 >> '\b') & 15]);
        sb.append(cArr[(c7 >> 4) & 15]);
        sb.append(cArr[c7 & 15]);
        return sb.toString();
    }

    public static Character toCharacterObject(String str) {
        if (StringUtils.isEmpty(str)) {
            return null;
        }
        return Character.valueOf(str.charAt(0));
    }

    public static String unicodeEscaped(Character ch) {
        if (ch == null) {
            return null;
        }
        return unicodeEscaped(ch.charValue());
    }

    public static char toChar(Character ch, char c7) {
        return ch == null ? c7 : ch.charValue();
    }

    public static int toIntValue(char c7, int i2) {
        return !isAsciiNumeric(c7) ? i2 : c7 - '0';
    }

    public static String toString(Character ch) {
        if (ch == null) {
            return null;
        }
        return toString(ch.charValue());
    }

    public static char toChar(String str) {
        Validate.isTrue(StringUtils.isNotEmpty(str), "The String must not be empty", new Object[0]);
        return str.charAt(0);
    }

    public static int toIntValue(Character ch) {
        Validate.isTrue(ch != null, "The character must not be null", new Object[0]);
        return toIntValue(ch.charValue());
    }

    public static char toChar(String str, char c7) {
        return StringUtils.isEmpty(str) ? c7 : str.charAt(0);
    }

    public static int toIntValue(Character ch, int i2) {
        return ch == null ? i2 : toIntValue(ch.charValue(), i2);
    }
}
