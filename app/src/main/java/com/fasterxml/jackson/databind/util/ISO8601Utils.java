package com.fasterxml.jackson.databind.util;

import androidx.media3.exoplayer.ExoPlayer;
import b.c;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.time.TimeZones;

@Deprecated
/* loaded from: classes.dex */
public class ISO8601Utils {
    protected static final int DEF_8601_LEN = 29;
    private static final TimeZone TIMEZONE_Z = TimeZone.getTimeZone("UTC");

    private static boolean checkOffset(String str, int i2, char c7) {
        return i2 < str.length() && str.charAt(i2) == c7;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_Z);
    }

    private static int indexOfNonDigit(String str, int i2) {
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (charAt < '0' || charAt > '9') {
                return i2;
            }
            i2++;
        }
        return str.length();
    }

    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        int i2;
        int i7;
        int i8;
        int i9;
        int i10;
        int length;
        TimeZone timeZone;
        char charAt;
        try {
            int index = parsePosition.getIndex();
            int i11 = index + 4;
            int parseInt = parseInt(str, index, i11);
            if (checkOffset(str, i11, '-')) {
                i11 = index + 5;
            }
            int i12 = i11 + 2;
            int parseInt2 = parseInt(str, i11, i12);
            if (checkOffset(str, i12, '-')) {
                i12 = i11 + 3;
            }
            int i13 = i12 + 2;
            int parseInt3 = parseInt(str, i12, i13);
            boolean checkOffset = checkOffset(str, i13, 'T');
            if (!checkOffset && str.length() <= i13) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(parseInt, parseInt2 - 1, parseInt3);
                parsePosition.setIndex(i13);
                return gregorianCalendar.getTime();
            }
            if (checkOffset) {
                int i14 = i12 + 5;
                int parseInt4 = parseInt(str, i12 + 3, i14);
                if (checkOffset(str, i14, ':')) {
                    i14 = i12 + 6;
                }
                int i15 = i14 + 2;
                int parseInt5 = parseInt(str, i14, i15);
                if (checkOffset(str, i15, ':')) {
                    i15 = i14 + 3;
                }
                if (str.length() <= i15 || (charAt = str.charAt(i15)) == 'Z' || charAt == '+' || charAt == '-') {
                    i13 = i15;
                    i7 = parseInt4;
                    i8 = parseInt5;
                    i9 = 0;
                    i10 = 0;
                } else {
                    int i16 = i15 + 2;
                    i10 = parseInt(str, i15, i16);
                    if (i10 > 59 && i10 < 63) {
                        i10 = 59;
                    }
                    if (checkOffset(str, i16, ClassUtils.PACKAGE_SEPARATOR_CHAR)) {
                        int i17 = i15 + 3;
                        int indexOfNonDigit = indexOfNonDigit(str, i15 + 4);
                        int min = Math.min(indexOfNonDigit, i15 + 6);
                        int parseInt6 = parseInt(str, i17, min);
                        int i18 = min - i17;
                        if (i18 == 1) {
                            parseInt6 *= 100;
                        } else if (i18 == 2) {
                            parseInt6 *= 10;
                        }
                        i7 = parseInt4;
                        i13 = indexOfNonDigit;
                        i8 = parseInt5;
                        i9 = parseInt6;
                    } else {
                        i7 = parseInt4;
                        i13 = i16;
                        i8 = parseInt5;
                        i9 = 0;
                    }
                }
                i2 = 1;
            } else {
                i2 = 1;
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i10 = 0;
            }
            if (str.length() <= i13) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char charAt2 = str.charAt(i13);
            if (charAt2 == 'Z') {
                timeZone = TIMEZONE_Z;
                length = i13 + 1;
            } else {
                if (charAt2 != '+' && charAt2 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + charAt2 + "'");
                }
                String substring = str.substring(i13);
                length = i13 + substring.length();
                if (!"+0000".equals(substring) && !"+00:00".equals(substring)) {
                    String concat = TimeZones.GMT_ID.concat(substring);
                    TimeZone timeZone2 = TimeZone.getTimeZone(concat);
                    String id = timeZone2.getID();
                    if (!id.equals(concat) && !id.replace(":", "").equals(concat)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + concat + " given, resolves to " + timeZone2.getID());
                    }
                    timeZone = timeZone2;
                }
                timeZone = TIMEZONE_Z;
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            int i19 = i2;
            gregorianCalendar2.set(i19, parseInt);
            gregorianCalendar2.set(2, parseInt2 - i19);
            gregorianCalendar2.set(5, parseInt3);
            gregorianCalendar2.set(11, i7);
            gregorianCalendar2.set(12, i8);
            gregorianCalendar2.set(13, i10);
            gregorianCalendar2.set(14, i9);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (Exception e3) {
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            String message = e3.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e3.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException(c.l("Failed to parse date ", str2, ": ", message), parsePosition.getIndex());
            parseException.initCause(e3);
            throw parseException;
        }
    }

    private static int parseInt(String str, int i2, int i7) throws NumberFormatException {
        int i8;
        int i9;
        if (i2 < 0 || i7 > str.length() || i2 > i7) {
            throw new NumberFormatException(str);
        }
        if (i2 < i7) {
            i9 = i2 + 1;
            int digit = Character.digit(str.charAt(i2), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i2, i7));
            }
            i8 = -digit;
        } else {
            i8 = 0;
            i9 = i2;
        }
        while (i9 < i7) {
            int i10 = i9 + 1;
            int digit2 = Character.digit(str.charAt(i9), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i2, i7));
            }
            i8 = (i8 * 10) - digit2;
            i9 = i10;
        }
        return -i8;
    }

    public static String format(Date date, boolean z6) {
        return format(date, z6, TIMEZONE_Z);
    }

    @Deprecated
    public static String format(Date date, boolean z6, TimeZone timeZone) {
        return format(date, z6, timeZone, Locale.US);
    }

    public static String format(Date date, boolean z6, TimeZone timeZone, Locale locale) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, locale);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(30);
        sb.append(String.format("%04d-%02d-%02dT%02d:%02d:%02d", Integer.valueOf(gregorianCalendar.get(1)), Integer.valueOf(gregorianCalendar.get(2) + 1), Integer.valueOf(gregorianCalendar.get(5)), Integer.valueOf(gregorianCalendar.get(11)), Integer.valueOf(gregorianCalendar.get(12)), Integer.valueOf(gregorianCalendar.get(13))));
        if (z6) {
            sb.append(String.format(".%03d", Integer.valueOf(gregorianCalendar.get(14))));
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i2 = offset / ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS;
            sb.append(String.format("%c%02d:%02d", Character.valueOf(offset < 0 ? '-' : '+'), Integer.valueOf(Math.abs(i2 / 60)), Integer.valueOf(Math.abs(i2 % 60))));
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }
}
