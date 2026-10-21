package org.apache.commons.lang3;

/* loaded from: classes2.dex */
public class CharSequenceUtils {
    private static final int NOT_FOUND = -1;

    public static int indexOf(CharSequence charSequence, int i2, int i7) {
        if (charSequence instanceof String) {
            return ((String) charSequence).indexOf(i2, i7);
        }
        int length = charSequence.length();
        if (i7 < 0) {
            i7 = 0;
        }
        if (i2 < 65536) {
            for (int i8 = i7; i8 < length; i8++) {
                if (charSequence.charAt(i8) == i2) {
                    return i8;
                }
            }
        }
        if (i2 > 1114111) {
            return -1;
        }
        char[] chars = Character.toChars(i2);
        while (i7 < length - 1) {
            char charAt = charSequence.charAt(i7);
            int i9 = i7 + 1;
            char charAt2 = charSequence.charAt(i9);
            if (charAt == chars[0] && charAt2 == chars[1]) {
                return i7;
            }
            i7 = i9;
        }
        return -1;
    }

    public static int lastIndexOf(CharSequence charSequence, int i2, int i7) {
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(i2, i7);
        }
        int length = charSequence.length();
        if (i7 < 0) {
            return -1;
        }
        if (i7 >= length) {
            i7 = length - 1;
        }
        if (i2 < 65536) {
            for (int i8 = i7; i8 >= 0; i8--) {
                if (charSequence.charAt(i8) == i2) {
                    return i8;
                }
            }
        }
        if (i2 <= 1114111) {
            char[] chars = Character.toChars(i2);
            if (i7 == length - 1) {
                return -1;
            }
            while (i7 >= 0) {
                char charAt = charSequence.charAt(i7);
                char charAt2 = charSequence.charAt(i7 + 1);
                if (chars[0] == charAt && chars[1] == charAt2) {
                    return i7;
                }
                i7--;
            }
        }
        return -1;
    }

    public static boolean regionMatches(CharSequence charSequence, boolean z6, int i2, CharSequence charSequence2, int i7, int i8) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return ((String) charSequence).regionMatches(z6, i2, (String) charSequence2, i7, i8);
        }
        int length = charSequence.length() - i2;
        int length2 = charSequence2.length() - i7;
        if (i2 < 0 || i7 < 0 || i8 < 0 || length < i8 || length2 < i8) {
            return false;
        }
        while (true) {
            int i9 = i8 - 1;
            if (i8 <= 0) {
                return true;
            }
            int i10 = i2 + 1;
            char charAt = charSequence.charAt(i2);
            int i11 = i7 + 1;
            char charAt2 = charSequence2.charAt(i7);
            if (charAt != charAt2) {
                if (!z6) {
                    return false;
                }
                if (Character.toUpperCase(charAt) != Character.toUpperCase(charAt2) && Character.toLowerCase(charAt) != Character.toLowerCase(charAt2)) {
                    return false;
                }
            }
            i2 = i10;
            i8 = i9;
            i7 = i11;
        }
    }

    public static CharSequence subSequence(CharSequence charSequence, int i2) {
        if (charSequence == null) {
            return null;
        }
        return charSequence.subSequence(i2, charSequence.length());
    }

    public static char[] toCharArray(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return ((String) charSequence).toCharArray();
        }
        int length = charSequence.length();
        char[] cArr = new char[charSequence.length()];
        for (int i2 = 0; i2 < length; i2++) {
            cArr[i2] = charSequence.charAt(i2);
        }
        return cArr;
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2, int i2) {
        return charSequence.toString().indexOf(charSequence2.toString(), i2);
    }

    public static int lastIndexOf(CharSequence charSequence, CharSequence charSequence2, int i2) {
        return charSequence.toString().lastIndexOf(charSequence2.toString(), i2);
    }
}
