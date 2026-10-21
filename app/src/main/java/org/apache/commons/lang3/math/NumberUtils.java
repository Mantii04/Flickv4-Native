package org.apache.commons.lang3.math;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

/* loaded from: classes2.dex */
public class NumberUtils {
    public static final Long LONG_ZERO = 0L;
    public static final Long LONG_ONE = 1L;
    public static final Long LONG_MINUS_ONE = -1L;
    public static final Integer INTEGER_ZERO = 0;
    public static final Integer INTEGER_ONE = 1;
    public static final Integer INTEGER_TWO = 2;
    public static final Integer INTEGER_MINUS_ONE = -1;
    public static final Short SHORT_ZERO = 0;
    public static final Short SHORT_ONE = 1;
    public static final Short SHORT_MINUS_ONE = -1;
    public static final Byte BYTE_ZERO = (byte) 0;
    public static final Byte BYTE_ONE = (byte) 1;
    public static final Byte BYTE_MINUS_ONE = (byte) -1;
    public static final Double DOUBLE_ZERO = Double.valueOf(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
    public static final Double DOUBLE_ONE = Double.valueOf(1.0d);
    public static final Double DOUBLE_MINUS_ONE = Double.valueOf(-1.0d);
    public static final Float FLOAT_ZERO = Float.valueOf(0.0f);
    public static final Float FLOAT_ONE = Float.valueOf(1.0f);
    public static final Float FLOAT_MINUS_ONE = Float.valueOf(-1.0f);

    public static int compare(byte b7, byte b8) {
        return b7 - b8;
    }

    public static BigDecimal createBigDecimal(String str) {
        if (str == null) {
            return null;
        }
        if (StringUtils.isBlank(str)) {
            throw new NumberFormatException("A blank string is not a valid number");
        }
        if (str.trim().startsWith("--")) {
            throw new NumberFormatException(str.concat(" is not a valid number."));
        }
        return new BigDecimal(str);
    }

    public static BigInteger createBigInteger(String str) {
        int i2;
        if (str == null) {
            return null;
        }
        boolean startsWith = str.startsWith("-");
        int i7 = 16;
        if (str.startsWith("0x", startsWith ? 1 : 0) || str.startsWith("0X", startsWith ? 1 : 0)) {
            i2 = (startsWith ? 1 : 0) + 2;
        } else if (str.startsWith("#", startsWith ? 1 : 0)) {
            i2 = (startsWith ? 1 : 0) + 1;
        } else {
            if (str.startsWith("0", startsWith ? 1 : 0)) {
                int length = str.length();
                int i8 = (startsWith ? 1 : 0) + 1;
                if (length > i8) {
                    i7 = 8;
                    i2 = i8;
                }
            }
            i7 = 10;
            i2 = startsWith ? 1 : 0;
        }
        BigInteger bigInteger = new BigInteger(str.substring(i2), i7);
        return startsWith ? bigInteger.negate() : bigInteger;
    }

    public static Double createDouble(String str) {
        if (str == null) {
            return null;
        }
        return Double.valueOf(str);
    }

    public static Float createFloat(String str) {
        if (str == null) {
            return null;
        }
        return Float.valueOf(str);
    }

    public static Integer createInteger(String str) {
        if (str == null) {
            return null;
        }
        return Integer.decode(str);
    }

    public static Long createLong(String str) {
        if (str == null) {
            return null;
        }
        return Long.decode(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0117, code lost:
    
        if (r1 == 'l') goto L83;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Number createNumber(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.math.NumberUtils.createNumber(java.lang.String):java.lang.Number");
    }

    private static String getMantissa(String str) {
        return getMantissa(str, str.length());
    }

    private static boolean isAllZeros(String str) {
        if (str == null) {
            return true;
        }
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) != '0') {
                return false;
            }
        }
        return !str.isEmpty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x00e2, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0091, code lost:
    
        if (r3 >= r0.length) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0093, code lost:
    
        r0 = r0[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0095, code lost:
    
        if (r0 < '0') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0097, code lost:
    
        if (r0 > '9') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0099, code lost:
    
        return r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x009a, code lost:
    
        if (r0 == 'e') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x009c, code lost:
    
        if (r0 != 'E') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x009f, code lost:
    
        if (r0 != '.') goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00a1, code lost:
    
        if (r16 != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00a3, code lost:
    
        if (r15 == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00b4, code lost:
    
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00a5, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00a6, code lost:
    
        if (r13 != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00aa, code lost:
    
        if (r0 == 'd') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00ae, code lost:
    
        if (r0 == 'D') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00b0, code lost:
    
        if (r0 == 'f') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00b2, code lost:
    
        if (r0 != r8) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00b7, code lost:
    
        if (r0 == 'l') goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00bb, code lost:
    
        if (r0 != 'L') goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00be, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00bf, code lost:
    
        if (r14 == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00c1, code lost:
    
        if (r15 != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00c3, code lost:
    
        if (r16 != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00c5, code lost:
    
        return r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00c6, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00c7, code lost:
    
        if (r13 != false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00c9, code lost:
    
        if (r14 == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00cb, code lost:
    
        return r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00cc, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isCreatable(java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.math.NumberUtils.isCreatable(java.lang.String):boolean");
    }

    public static boolean isDigits(String str) {
        return StringUtils.isNumeric(str);
    }

    @Deprecated
    public static boolean isNumber(String str) {
        return isCreatable(str);
    }

    public static boolean isParsable(String str) {
        if (StringUtils.isEmpty(str) || str.charAt(str.length() - 1) == '.') {
            return false;
        }
        if (str.charAt(0) != '-') {
            return withDecimalsParsing(str, 0);
        }
        if (str.length() == 1) {
            return false;
        }
        return withDecimalsParsing(str, 1);
    }

    public static byte max(byte b7, byte b8, byte b9) {
        if (b8 > b7) {
            b7 = b8;
        }
        return b9 > b7 ? b9 : b7;
    }

    public static byte min(byte b7, byte b8, byte b9) {
        if (b8 < b7) {
            b7 = b8;
        }
        return b9 < b7 ? b9 : b7;
    }

    public static byte toByte(String str) {
        return toByte(str, (byte) 0);
    }

    public static double toDouble(String str) {
        return toDouble(str, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
    }

    public static float toFloat(String str) {
        return toFloat(str, 0.0f);
    }

    public static int toInt(String str) {
        return toInt(str, 0);
    }

    public static long toLong(String str) {
        return toLong(str, 0L);
    }

    public static BigDecimal toScaledBigDecimal(BigDecimal bigDecimal) {
        return toScaledBigDecimal(bigDecimal, INTEGER_TWO.intValue(), RoundingMode.HALF_EVEN);
    }

    public static short toShort(String str) {
        return toShort(str, (short) 0);
    }

    private static void validateArray(Object obj) {
        Validate.isTrue(obj != null, "The Array must not be null", new Object[0]);
        Validate.isTrue(Array.getLength(obj) != 0, "Array cannot be empty.", new Object[0]);
    }

    private static boolean withDecimalsParsing(String str, int i2) {
        int i7 = 0;
        while (i2 < str.length()) {
            boolean z6 = str.charAt(i2) == '.';
            if (z6) {
                i7++;
            }
            if (i7 > 1) {
                return false;
            }
            if (!z6 && !Character.isDigit(str.charAt(i2))) {
                return false;
            }
            i2++;
        }
        return true;
    }

    public static int compare(int i2, int i7) {
        if (i2 == i7) {
            return 0;
        }
        return i2 < i7 ? -1 : 1;
    }

    private static String getMantissa(String str, int i2) {
        char charAt = str.charAt(0);
        return (charAt == '-' || charAt == '+') ? str.substring(1, i2) : str.substring(0, i2);
    }

    public static int max(int i2, int i7, int i8) {
        if (i7 > i2) {
            i2 = i7;
        }
        return i8 > i2 ? i8 : i2;
    }

    public static int min(int i2, int i7, int i8) {
        if (i7 < i2) {
            i2 = i7;
        }
        return i8 < i2 ? i8 : i2;
    }

    public static byte toByte(String str, byte b7) {
        if (str != null) {
            try {
                return Byte.parseByte(str);
            } catch (NumberFormatException unused) {
            }
        }
        return b7;
    }

    public static double toDouble(String str, double d7) {
        if (str != null) {
            try {
                return Double.parseDouble(str);
            } catch (NumberFormatException unused) {
            }
        }
        return d7;
    }

    public static float toFloat(String str, float f3) {
        if (str != null) {
            try {
                return Float.parseFloat(str);
            } catch (NumberFormatException unused) {
            }
        }
        return f3;
    }

    public static int toInt(String str, int i2) {
        if (str != null) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
            }
        }
        return i2;
    }

    public static long toLong(String str, long j7) {
        if (str != null) {
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException unused) {
            }
        }
        return j7;
    }

    public static BigDecimal toScaledBigDecimal(BigDecimal bigDecimal, int i2, RoundingMode roundingMode) {
        if (bigDecimal == null) {
            return BigDecimal.ZERO;
        }
        if (roundingMode == null) {
            roundingMode = RoundingMode.HALF_EVEN;
        }
        return bigDecimal.setScale(i2, roundingMode);
    }

    public static short toShort(String str, short s6) {
        if (str != null) {
            try {
                return Short.parseShort(str);
            } catch (NumberFormatException unused) {
            }
        }
        return s6;
    }

    public static int compare(long j7, long j8) {
        if (j7 == j8) {
            return 0;
        }
        return j7 < j8 ? -1 : 1;
    }

    public static long max(long j7, long j8, long j9) {
        if (j8 > j7) {
            j7 = j8;
        }
        return j9 > j7 ? j9 : j7;
    }

    public static long min(long j7, long j8, long j9) {
        if (j8 < j7) {
            j7 = j8;
        }
        return j9 < j7 ? j9 : j7;
    }

    public static double toDouble(BigDecimal bigDecimal) {
        return toDouble(bigDecimal, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
    }

    public static int compare(short s6, short s7) {
        if (s6 == s7) {
            return 0;
        }
        return s6 < s7 ? -1 : 1;
    }

    public static short max(short s6, short s7, short s8) {
        if (s7 > s6) {
            s6 = s7;
        }
        return s8 > s6 ? s8 : s6;
    }

    public static short min(short s6, short s7, short s8) {
        if (s7 < s6) {
            s6 = s7;
        }
        return s8 < s6 ? s8 : s6;
    }

    public static double toDouble(BigDecimal bigDecimal, double d7) {
        return bigDecimal == null ? d7 : bigDecimal.doubleValue();
    }

    public static BigDecimal toScaledBigDecimal(Float f3) {
        return toScaledBigDecimal(f3, INTEGER_TWO.intValue(), RoundingMode.HALF_EVEN);
    }

    public static long max(long... jArr) {
        validateArray(jArr);
        long j7 = jArr[0];
        for (int i2 = 1; i2 < jArr.length; i2++) {
            long j8 = jArr[i2];
            if (j8 > j7) {
                j7 = j8;
            }
        }
        return j7;
    }

    public static long min(long... jArr) {
        validateArray(jArr);
        long j7 = jArr[0];
        for (int i2 = 1; i2 < jArr.length; i2++) {
            long j8 = jArr[i2];
            if (j8 < j7) {
                j7 = j8;
            }
        }
        return j7;
    }

    public static BigDecimal toScaledBigDecimal(Float f3, int i2, RoundingMode roundingMode) {
        if (f3 == null) {
            return BigDecimal.ZERO;
        }
        return toScaledBigDecimal(BigDecimal.valueOf(f3.floatValue()), i2, roundingMode);
    }

    public static BigDecimal toScaledBigDecimal(Double d7) {
        return toScaledBigDecimal(d7, INTEGER_TWO.intValue(), RoundingMode.HALF_EVEN);
    }

    public static int max(int... iArr) {
        validateArray(iArr);
        int i2 = iArr[0];
        for (int i7 = 1; i7 < iArr.length; i7++) {
            int i8 = iArr[i7];
            if (i8 > i2) {
                i2 = i8;
            }
        }
        return i2;
    }

    public static int min(int... iArr) {
        validateArray(iArr);
        int i2 = iArr[0];
        for (int i7 = 1; i7 < iArr.length; i7++) {
            int i8 = iArr[i7];
            if (i8 < i2) {
                i2 = i8;
            }
        }
        return i2;
    }

    public static BigDecimal toScaledBigDecimal(Double d7, int i2, RoundingMode roundingMode) {
        if (d7 == null) {
            return BigDecimal.ZERO;
        }
        return toScaledBigDecimal(BigDecimal.valueOf(d7.doubleValue()), i2, roundingMode);
    }

    public static BigDecimal toScaledBigDecimal(String str) {
        return toScaledBigDecimal(str, INTEGER_TWO.intValue(), RoundingMode.HALF_EVEN);
    }

    public static short max(short... sArr) {
        validateArray(sArr);
        short s6 = sArr[0];
        for (int i2 = 1; i2 < sArr.length; i2++) {
            short s7 = sArr[i2];
            if (s7 > s6) {
                s6 = s7;
            }
        }
        return s6;
    }

    public static short min(short... sArr) {
        validateArray(sArr);
        short s6 = sArr[0];
        for (int i2 = 1; i2 < sArr.length; i2++) {
            short s7 = sArr[i2];
            if (s7 < s6) {
                s6 = s7;
            }
        }
        return s6;
    }

    public static BigDecimal toScaledBigDecimal(String str, int i2, RoundingMode roundingMode) {
        if (str == null) {
            return BigDecimal.ZERO;
        }
        return toScaledBigDecimal(createBigDecimal(str), i2, roundingMode);
    }

    public static byte max(byte... bArr) {
        validateArray(bArr);
        byte b7 = bArr[0];
        for (int i2 = 1; i2 < bArr.length; i2++) {
            byte b8 = bArr[i2];
            if (b8 > b7) {
                b7 = b8;
            }
        }
        return b7;
    }

    public static byte min(byte... bArr) {
        validateArray(bArr);
        byte b7 = bArr[0];
        for (int i2 = 1; i2 < bArr.length; i2++) {
            byte b8 = bArr[i2];
            if (b8 < b7) {
                b7 = b8;
            }
        }
        return b7;
    }

    public static double max(double... dArr) {
        validateArray(dArr);
        double d7 = dArr[0];
        for (int i2 = 1; i2 < dArr.length; i2++) {
            if (Double.isNaN(dArr[i2])) {
                return Double.NaN;
            }
            double d8 = dArr[i2];
            if (d8 > d7) {
                d7 = d8;
            }
        }
        return d7;
    }

    public static double min(double... dArr) {
        validateArray(dArr);
        double d7 = dArr[0];
        for (int i2 = 1; i2 < dArr.length; i2++) {
            if (Double.isNaN(dArr[i2])) {
                return Double.NaN;
            }
            double d8 = dArr[i2];
            if (d8 < d7) {
                d7 = d8;
            }
        }
        return d7;
    }

    public static float max(float... fArr) {
        validateArray(fArr);
        float f3 = fArr[0];
        for (int i2 = 1; i2 < fArr.length; i2++) {
            if (Float.isNaN(fArr[i2])) {
                return Float.NaN;
            }
            float f7 = fArr[i2];
            if (f7 > f3) {
                f3 = f7;
            }
        }
        return f3;
    }

    public static float min(float... fArr) {
        validateArray(fArr);
        float f3 = fArr[0];
        for (int i2 = 1; i2 < fArr.length; i2++) {
            if (Float.isNaN(fArr[i2])) {
                return Float.NaN;
            }
            float f7 = fArr[i2];
            if (f7 < f3) {
                f3 = f7;
            }
        }
        return f3;
    }

    public static double max(double d7, double d8, double d9) {
        return Math.max(Math.max(d7, d8), d9);
    }

    public static double min(double d7, double d8, double d9) {
        return Math.min(Math.min(d7, d8), d9);
    }

    public static float max(float f3, float f7, float f8) {
        return Math.max(Math.max(f3, f7), f8);
    }

    public static float min(float f3, float f7, float f8) {
        return Math.min(Math.min(f3, f7), f8);
    }
}
