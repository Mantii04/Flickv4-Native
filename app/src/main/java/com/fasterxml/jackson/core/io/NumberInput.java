package com.fasterxml.jackson.core.io;

import A.i;
import androidx.media3.common.PlaybackException;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public final class NumberInput {
    static final long L_BILLION = 1000000000;
    public static final String NASTY_SMALL_DOUBLE = "2.2250738585072012e-308";
    static final String MIN_LONG_STR_NO_SIGN = String.valueOf(Long.MIN_VALUE).substring(1);
    static final String MAX_LONG_STR = String.valueOf(Long.MAX_VALUE);

    private static NumberFormatException _badBD(String str) {
        return new NumberFormatException(i.l("Value \"", str, "\" can not be represented as BigDecimal"));
    }

    public static boolean inLongRange(char[] cArr, int i2, int i7, boolean z6) {
        String str = z6 ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str.length();
        if (i7 < length) {
            return true;
        }
        if (i7 > length) {
            return false;
        }
        for (int i8 = 0; i8 < length; i8++) {
            int charAt = cArr[i2 + i8] - str.charAt(i8);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    public static double parseAsDouble(String str, double d7) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() != 0) {
                try {
                    return parseDouble(trim);
                } catch (NumberFormatException unused) {
                }
            }
        }
        return d7;
    }

    public static int parseAsInt(String str, int i2) {
        String trim;
        int length;
        if (str != null && (length = (trim = str.trim()).length()) != 0) {
            int i7 = 0;
            if (length > 0) {
                char charAt = trim.charAt(0);
                if (charAt == '+') {
                    trim = trim.substring(1);
                    length = trim.length();
                } else if (charAt == '-') {
                    i7 = 1;
                }
            }
            while (i7 < length) {
                try {
                    char charAt2 = trim.charAt(i7);
                    if (charAt2 > '9' || charAt2 < '0') {
                        return (int) parseDouble(trim);
                    }
                    i7++;
                } catch (NumberFormatException unused) {
                }
            }
            return Integer.parseInt(trim);
        }
        return i2;
    }

    public static long parseAsLong(String str, long j7) {
        String trim;
        int length;
        if (str != null && (length = (trim = str.trim()).length()) != 0) {
            int i2 = 0;
            if (length > 0) {
                char charAt = trim.charAt(0);
                if (charAt == '+') {
                    trim = trim.substring(1);
                    length = trim.length();
                } else if (charAt == '-') {
                    i2 = 1;
                }
            }
            while (i2 < length) {
                try {
                    char charAt2 = trim.charAt(i2);
                    if (charAt2 > '9' || charAt2 < '0') {
                        return (long) parseDouble(trim);
                    }
                    i2++;
                } catch (NumberFormatException unused) {
                }
            }
            return Long.parseLong(trim);
        }
        return j7;
    }

    public static BigDecimal parseBigDecimal(String str) throws NumberFormatException {
        try {
            return new BigDecimal(str);
        } catch (NumberFormatException unused) {
            throw _badBD(str);
        }
    }

    public static double parseDouble(String str) throws NumberFormatException {
        if (NASTY_SMALL_DOUBLE.equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    public static int parseInt(char[] cArr, int i2, int i7) {
        int i8 = cArr[(i2 + i7) - 1] - '0';
        switch (i7) {
            case 9:
                i8 = i.a(cArr[i2], 48, 100000000, i8);
                i2++;
            case 8:
                i8 = i.a(cArr[i2], 48, 10000000, i8);
                i2++;
            case 7:
                i8 = i.a(cArr[i2], 48, PlaybackException.CUSTOM_ERROR_CODE_BASE, i8);
                i2++;
            case 6:
                i8 = i.a(cArr[i2], 48, 100000, i8);
                i2++;
            case 5:
                i8 = i.a(cArr[i2], 48, 10000, i8);
                i2++;
            case 4:
                i8 = i.a(cArr[i2], 48, 1000, i8);
                i2++;
            case 3:
                i8 = i.a(cArr[i2], 48, 100, i8);
                i2++;
            case 2:
                return i.a(cArr[i2], 48, 10, i8);
            default:
                return i8;
        }
    }

    public static long parseLong(char[] cArr, int i2, int i7) {
        int i8 = i7 - 9;
        return (parseInt(cArr, i2, i8) * 1000000000) + parseInt(cArr, i2 + i8, 9);
    }

    public static BigDecimal parseBigDecimal(char[] cArr) throws NumberFormatException {
        return parseBigDecimal(cArr, 0, cArr.length);
    }

    public static long parseLong(String str) {
        if (str.length() <= 9) {
            return parseInt(str);
        }
        return Long.parseLong(str);
    }

    public static boolean inLongRange(String str, boolean z6) {
        String str2 = z6 ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str2.length();
        int length2 = str.length();
        if (length2 < length) {
            return true;
        }
        if (length2 > length) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            int charAt = str.charAt(i2) - str2.charAt(i2);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    public static BigDecimal parseBigDecimal(char[] cArr, int i2, int i7) throws NumberFormatException {
        try {
            return new BigDecimal(cArr, i2, i7);
        } catch (NumberFormatException unused) {
            throw _badBD(new String(cArr, i2, i7));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0072, code lost:
    
        return java.lang.Integer.parseInt(r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int parseInt(java.lang.String r10) {
        /*
            r0 = 0
            char r1 = r10.charAt(r0)
            int r2 = r10.length()
            r3 = 45
            r4 = 1
            if (r1 != r3) goto Lf
            r0 = r4
        Lf:
            r3 = 2
            r5 = 10
            if (r0 == 0) goto L24
            if (r2 == r4) goto L1f
            if (r2 <= r5) goto L19
            goto L1f
        L19:
            char r1 = r10.charAt(r4)
            r4 = r3
            goto L2d
        L1f:
            int r10 = java.lang.Integer.parseInt(r10)
            return r10
        L24:
            r6 = 9
            if (r2 <= r6) goto L2d
            int r10 = java.lang.Integer.parseInt(r10)
            return r10
        L2d:
            r6 = 57
            if (r1 > r6) goto L82
            r7 = 48
            if (r1 >= r7) goto L36
            goto L82
        L36:
            int r1 = r1 - r7
            if (r4 >= r2) goto L7d
            int r8 = r4 + 1
            char r9 = r10.charAt(r4)
            if (r9 > r6) goto L78
            if (r9 >= r7) goto L44
            goto L78
        L44:
            int r1 = r1 * 10
            int r9 = r9 - r7
            int r1 = r1 + r9
            if (r8 >= r2) goto L7d
            int r4 = r4 + r3
            char r3 = r10.charAt(r8)
            if (r3 > r6) goto L73
            if (r3 >= r7) goto L54
            goto L73
        L54:
            int r1 = r1 * 10
            int r3 = r3 - r7
            int r1 = r1 + r3
            if (r4 >= r2) goto L7d
        L5a:
            int r3 = r4 + 1
            char r4 = r10.charAt(r4)
            if (r4 > r6) goto L6e
            if (r4 >= r7) goto L65
            goto L6e
        L65:
            int r1 = r1 * r5
            int r4 = r4 + (-48)
            int r1 = r1 + r4
            if (r3 < r2) goto L6c
            goto L7d
        L6c:
            r4 = r3
            goto L5a
        L6e:
            int r10 = java.lang.Integer.parseInt(r10)
            return r10
        L73:
            int r10 = java.lang.Integer.parseInt(r10)
            return r10
        L78:
            int r10 = java.lang.Integer.parseInt(r10)
            return r10
        L7d:
            if (r0 == 0) goto L81
            int r10 = -r1
            return r10
        L81:
            return r1
        L82:
            int r10 = java.lang.Integer.parseInt(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.NumberInput.parseInt(java.lang.String):int");
    }
}
