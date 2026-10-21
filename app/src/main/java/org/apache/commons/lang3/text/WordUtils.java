package org.apache.commons.lang3.text;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

@Deprecated
/* loaded from: classes2.dex */
public class WordUtils {
    public static String capitalize(String str) {
        return capitalize(str, null);
    }

    public static String capitalizeFully(String str) {
        return capitalizeFully(str, null);
    }

    public static boolean containsAllWords(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (StringUtils.isEmpty(charSequence) || ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence2 : charSequenceArr) {
            if (StringUtils.isBlank(charSequence2)) {
                return false;
            }
            if (!Pattern.compile(".*\\b" + ((Object) charSequence2) + "\\b.*").matcher(charSequence).matches()) {
                return false;
            }
        }
        return true;
    }

    public static String initials(String str) {
        return initials(str, null);
    }

    private static boolean isDelimiter(char c7, char[] cArr) {
        if (cArr == null) {
            return Character.isWhitespace(c7);
        }
        for (char c8 : cArr) {
            if (c7 == c8) {
                return true;
            }
        }
        return false;
    }

    public static String swapCase(String str) {
        if (StringUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        boolean z6 = true;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c7 = charArray[i2];
            if (Character.isUpperCase(c7)) {
                charArray[i2] = Character.toLowerCase(c7);
            } else if (Character.isTitleCase(c7)) {
                charArray[i2] = Character.toLowerCase(c7);
            } else {
                if (!Character.isLowerCase(c7)) {
                    z6 = Character.isWhitespace(c7);
                } else if (z6) {
                    charArray[i2] = Character.toTitleCase(c7);
                } else {
                    charArray[i2] = Character.toUpperCase(c7);
                }
            }
            z6 = false;
        }
        return new String(charArray);
    }

    public static String uncapitalize(String str) {
        return uncapitalize(str, null);
    }

    public static String wrap(String str, int i2) {
        return wrap(str, i2, null, false);
    }

    public static String capitalize(String str, char... cArr) {
        int length = cArr == null ? -1 : cArr.length;
        if (StringUtils.isEmpty(str) || length == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        boolean z6 = true;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c7 = charArray[i2];
            if (isDelimiter(c7, cArr)) {
                z6 = true;
            } else if (z6) {
                charArray[i2] = Character.toTitleCase(c7);
                z6 = false;
            }
        }
        return new String(charArray);
    }

    public static String capitalizeFully(String str, char... cArr) {
        return (StringUtils.isEmpty(str) || (cArr == null ? -1 : cArr.length) == 0) ? str : capitalize(str.toLowerCase(), cArr);
    }

    public static String initials(String str, char... cArr) {
        if (StringUtils.isEmpty(str)) {
            return str;
        }
        if (cArr != null && cArr.length == 0) {
            return "";
        }
        int length = str.length();
        char[] cArr2 = new char[(length / 2) + 1];
        boolean z6 = true;
        int i2 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            char charAt = str.charAt(i7);
            if (isDelimiter(charAt, cArr)) {
                z6 = true;
            } else if (z6) {
                cArr2[i2] = charAt;
                i2++;
                z6 = false;
            }
        }
        return new String(cArr2, 0, i2);
    }

    public static String uncapitalize(String str, char... cArr) {
        int length = cArr == null ? -1 : cArr.length;
        if (StringUtils.isEmpty(str) || length == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        boolean z6 = true;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c7 = charArray[i2];
            if (isDelimiter(c7, cArr)) {
                z6 = true;
            } else if (z6) {
                charArray[i2] = Character.toLowerCase(c7);
                z6 = false;
            }
        }
        return new String(charArray);
    }

    public static String wrap(String str, int i2, String str2, boolean z6) {
        return wrap(str, i2, str2, z6, StringUtils.SPACE);
    }

    public static String wrap(String str, int i2, String str2, boolean z6, String str3) {
        int i7;
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = System.lineSeparator();
        }
        if (i2 < 1) {
            i2 = 1;
        }
        if (StringUtils.isBlank(str3)) {
            str3 = StringUtils.SPACE;
        }
        Pattern compile = Pattern.compile(str3);
        int length = str.length();
        StringBuilder sb = new StringBuilder(length + 32);
        int i8 = 0;
        while (i8 < length) {
            int i9 = i8 + i2;
            Matcher matcher = compile.matcher(str.substring(i8, Math.min((int) Math.min(2147483647L, i9 + 1), length)));
            if (!matcher.find()) {
                i7 = -1;
            } else if (matcher.start() == 0) {
                i8 += matcher.end();
            } else {
                i7 = matcher.start() + i8;
            }
            if (length - i8 <= i2) {
                break;
            }
            while (matcher.find()) {
                i7 = matcher.start() + i8;
            }
            if (i7 >= i8) {
                sb.append((CharSequence) str, i8, i7);
                sb.append(str2);
            } else if (z6) {
                sb.append((CharSequence) str, i8, i9);
                sb.append(str2);
                i8 = i9;
            } else {
                Matcher matcher2 = compile.matcher(str.substring(i9));
                if (matcher2.find()) {
                    i7 = matcher2.start() + i8 + i2;
                }
                if (i7 >= 0) {
                    sb.append((CharSequence) str, i8, i7);
                    sb.append(str2);
                } else {
                    sb.append((CharSequence) str, i8, str.length());
                    i8 = length;
                }
            }
            i8 = i7 + 1;
        }
        sb.append((CharSequence) str, i8, str.length());
        return sb.toString();
    }
}
