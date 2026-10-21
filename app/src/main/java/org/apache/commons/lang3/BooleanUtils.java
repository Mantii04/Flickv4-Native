package org.apache.commons.lang3;

import org.apache.commons.lang3.math.NumberUtils;

/* loaded from: classes2.dex */
public class BooleanUtils {
    public static boolean and(boolean... zArr) {
        if (zArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        for (boolean z6 : zArr) {
            if (!z6) {
                return false;
            }
        }
        return true;
    }

    public static int compare(boolean z6, boolean z7) {
        if (z6 == z7) {
            return 0;
        }
        return z6 ? 1 : -1;
    }

    public static boolean isFalse(Boolean bool) {
        return Boolean.FALSE.equals(bool);
    }

    public static boolean isNotFalse(Boolean bool) {
        return !isFalse(bool);
    }

    public static boolean isNotTrue(Boolean bool) {
        return !isTrue(bool);
    }

    public static boolean isTrue(Boolean bool) {
        return Boolean.TRUE.equals(bool);
    }

    public static Boolean negate(Boolean bool) {
        if (bool == null) {
            return null;
        }
        return bool.booleanValue() ? Boolean.FALSE : Boolean.TRUE;
    }

    public static boolean or(boolean... zArr) {
        if (zArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        for (boolean z6 : zArr) {
            if (z6) {
                return true;
            }
        }
        return false;
    }

    public static boolean toBoolean(int i2) {
        return i2 != 0;
    }

    public static boolean toBooleanDefaultIfNull(Boolean bool, boolean z6) {
        return bool == null ? z6 : bool.booleanValue();
    }

    public static Boolean toBooleanObject(int i2) {
        return i2 == 0 ? Boolean.FALSE : Boolean.TRUE;
    }

    public static int toInteger(boolean z6) {
        return z6 ? 1 : 0;
    }

    public static Integer toIntegerObject(boolean z6, Integer num, Integer num2) {
        return z6 ? num : num2;
    }

    public static String toString(boolean z6, String str, String str2) {
        return z6 ? str : str2;
    }

    public static String toStringOnOff(Boolean bool) {
        return toString(bool, "on", "off", null);
    }

    public static String toStringTrueFalse(Boolean bool) {
        return toString(bool, "true", "false", null);
    }

    public static String toStringYesNo(Boolean bool) {
        return toString(bool, "yes", "no", null);
    }

    public static boolean xor(boolean... zArr) {
        if (zArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        boolean z6 = false;
        for (boolean z7 : zArr) {
            z6 ^= z7;
        }
        return z6;
    }

    public static boolean toBoolean(Boolean bool) {
        return bool != null && bool.booleanValue();
    }

    public static Boolean toBooleanObject(Integer num) {
        if (num == null) {
            return null;
        }
        return num.intValue() == 0 ? Boolean.FALSE : Boolean.TRUE;
    }

    public static int toInteger(boolean z6, int i2, int i7) {
        return z6 ? i2 : i7;
    }

    public static Integer toIntegerObject(boolean z6) {
        return z6 ? NumberUtils.INTEGER_ONE : NumberUtils.INTEGER_ZERO;
    }

    public static String toString(Boolean bool, String str, String str2, String str3) {
        return bool == null ? str3 : bool.booleanValue() ? str : str2;
    }

    public static String toStringOnOff(boolean z6) {
        return toString(z6, "on", "off");
    }

    public static String toStringTrueFalse(boolean z6) {
        return toString(z6, "true", "false");
    }

    public static String toStringYesNo(boolean z6) {
        return toString(z6, "yes", "no");
    }

    public static boolean toBoolean(int i2, int i7, int i8) {
        if (i2 == i7) {
            return true;
        }
        if (i2 == i8) {
            return false;
        }
        throw new IllegalArgumentException("The Integer did not match either specified value");
    }

    public static Boolean toBooleanObject(int i2, int i7, int i8, int i9) {
        if (i2 == i7) {
            return Boolean.TRUE;
        }
        if (i2 == i8) {
            return Boolean.FALSE;
        }
        if (i2 == i9) {
            return null;
        }
        throw new IllegalArgumentException("The Integer did not match any specified value");
    }

    public static int toInteger(Boolean bool, int i2, int i7, int i8) {
        return bool == null ? i8 : bool.booleanValue() ? i2 : i7;
    }

    public static Integer toIntegerObject(Boolean bool) {
        if (bool == null) {
            return null;
        }
        return bool.booleanValue() ? NumberUtils.INTEGER_ONE : NumberUtils.INTEGER_ZERO;
    }

    public static boolean toBoolean(Integer num, Integer num2, Integer num3) {
        if (num == null) {
            if (num2 == null) {
                return true;
            }
            if (num3 == null) {
                return false;
            }
        } else {
            if (num.equals(num2)) {
                return true;
            }
            if (num.equals(num3)) {
                return false;
            }
        }
        throw new IllegalArgumentException("The Integer did not match either specified value");
    }

    public static Integer toIntegerObject(Boolean bool, Integer num, Integer num2, Integer num3) {
        return bool == null ? num3 : bool.booleanValue() ? num : num2;
    }

    public static Boolean and(Boolean... boolArr) {
        if (boolArr != null) {
            if (boolArr.length != 0) {
                try {
                    return and(ArrayUtils.toPrimitive(boolArr)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (NullPointerException unused) {
                    throw new IllegalArgumentException("The array must not contain any null elements");
                }
            }
            throw new IllegalArgumentException("Array is empty");
        }
        throw new IllegalArgumentException("The Array must not be null");
    }

    public static Boolean or(Boolean... boolArr) {
        if (boolArr != null) {
            if (boolArr.length != 0) {
                try {
                    return or(ArrayUtils.toPrimitive(boolArr)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (NullPointerException unused) {
                    throw new IllegalArgumentException("The array must not contain any null elements");
                }
            }
            throw new IllegalArgumentException("Array is empty");
        }
        throw new IllegalArgumentException("The Array must not be null");
    }

    public static Boolean xor(Boolean... boolArr) {
        if (boolArr != null) {
            if (boolArr.length != 0) {
                try {
                    return xor(ArrayUtils.toPrimitive(boolArr)) ? Boolean.TRUE : Boolean.FALSE;
                } catch (NullPointerException unused) {
                    throw new IllegalArgumentException("The array must not contain any null elements");
                }
            }
            throw new IllegalArgumentException("Array is empty");
        }
        throw new IllegalArgumentException("The Array must not be null");
    }

    public static Boolean toBooleanObject(Integer num, Integer num2, Integer num3, Integer num4) {
        if (num == null) {
            if (num2 == null) {
                return Boolean.TRUE;
            }
            if (num3 == null) {
                return Boolean.FALSE;
            }
            if (num4 == null) {
                return null;
            }
        } else {
            if (num.equals(num2)) {
                return Boolean.TRUE;
            }
            if (num.equals(num3)) {
                return Boolean.FALSE;
            }
            if (num.equals(num4)) {
                return null;
            }
        }
        throw new IllegalArgumentException("The Integer did not match any specified value");
    }

    public static boolean toBoolean(String str) {
        return toBooleanObject(str) == Boolean.TRUE;
    }

    public static boolean toBoolean(String str, String str2, String str3) {
        if (str == str2) {
            return true;
        }
        if (str == str3) {
            return false;
        }
        if (str != null) {
            if (str.equals(str2)) {
                return true;
            }
            if (str.equals(str3)) {
                return false;
            }
        }
        throw new IllegalArgumentException("The String did not match either specified value");
    }

    public static Boolean toBooleanObject(String str) {
        Boolean bool;
        if (str == "true") {
            return Boolean.TRUE;
        }
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 1) {
            bool = null;
            char charAt = str.charAt(0);
            if (charAt == 'y' || charAt == 'Y' || charAt == 't' || charAt == 'T') {
                return Boolean.TRUE;
            }
            if (charAt == 'n' || charAt == 'N' || charAt == 'f' || charAt == 'F') {
                return Boolean.FALSE;
            }
        } else if (length != 2) {
            bool = null;
            if (length == 3) {
                char charAt2 = str.charAt(0);
                char charAt3 = str.charAt(1);
                char charAt4 = str.charAt(2);
                if ((charAt2 == 'y' || charAt2 == 'Y') && ((charAt3 == 'e' || charAt3 == 'E') && (charAt4 == 's' || charAt4 == 'S'))) {
                    return Boolean.TRUE;
                }
                if ((charAt2 == 'o' || charAt2 == 'O') && ((charAt3 == 'f' || charAt3 == 'F') && (charAt4 == 'f' || charAt4 == 'F'))) {
                    return Boolean.FALSE;
                }
            } else if (length == 4) {
                char charAt5 = str.charAt(0);
                char charAt6 = str.charAt(1);
                char charAt7 = str.charAt(2);
                char charAt8 = str.charAt(3);
                if ((charAt5 == 't' || charAt5 == 'T') && ((charAt6 == 'r' || charAt6 == 'R') && ((charAt7 == 'u' || charAt7 == 'U') && (charAt8 == 'e' || charAt8 == 'E')))) {
                    return Boolean.TRUE;
                }
            } else if (length == 5) {
                char charAt9 = str.charAt(0);
                char charAt10 = str.charAt(1);
                char charAt11 = str.charAt(2);
                char charAt12 = str.charAt(3);
                char charAt13 = str.charAt(4);
                if ((charAt9 == 'f' || charAt9 == 'F') && ((charAt10 == 'a' || charAt10 == 'A') && ((charAt11 == 'l' || charAt11 == 'L') && ((charAt12 == 's' || charAt12 == 'S') && (charAt13 == 'e' || charAt13 == 'E'))))) {
                    return Boolean.FALSE;
                }
            }
        } else {
            bool = null;
            char charAt14 = str.charAt(0);
            char charAt15 = str.charAt(1);
            if ((charAt14 == 'o' || charAt14 == 'O') && (charAt15 == 'n' || charAt15 == 'N')) {
                return Boolean.TRUE;
            }
            if ((charAt14 == 'n' || charAt14 == 'N') && (charAt15 == 'o' || charAt15 == 'O')) {
                return Boolean.FALSE;
            }
        }
        return bool;
    }

    public static Boolean toBooleanObject(String str, String str2, String str3, String str4) {
        if (str == null) {
            if (str2 == null) {
                return Boolean.TRUE;
            }
            if (str3 == null) {
                return Boolean.FALSE;
            }
            if (str4 == null) {
                return null;
            }
        } else {
            if (str.equals(str2)) {
                return Boolean.TRUE;
            }
            if (str.equals(str3)) {
                return Boolean.FALSE;
            }
            if (str.equals(str4)) {
                return null;
            }
        }
        throw new IllegalArgumentException("The String did not match any specified value");
    }
}
