package com.fasterxml.jackson.databind.util;

import A.i;
import androidx.media3.exoplayer.ExoPlayer;
import b.c;
import com.fasterxml.jackson.core.io.NumberInput;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes.dex */
public class StdDateFormat extends DateFormat {
    protected static final String[] ALL_FORMATS;
    protected static final Calendar CALENDAR;
    protected static final DateFormat DATE_FORMAT_ISO8601;
    protected static final DateFormat DATE_FORMAT_RFC1123;
    public static final String DATE_FORMAT_STR_ISO8601 = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
    protected static final String DATE_FORMAT_STR_PLAIN = "yyyy-MM-dd";
    protected static final String DATE_FORMAT_STR_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";
    protected static final Locale DEFAULT_LOCALE;
    protected static final TimeZone DEFAULT_TIMEZONE;
    protected static final Pattern PATTERN_ISO8601;
    public static final StdDateFormat instance;
    private transient Calendar _calendar;
    private transient DateFormat _formatRFC1123;
    protected Boolean _lenient;
    protected final Locale _locale;
    protected transient TimeZone _timezone;
    private boolean _tzSerializedWithColon;
    protected static final String PATTERN_PLAIN_STR = "\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d";
    protected static final Pattern PATTERN_PLAIN = Pattern.compile(PATTERN_PLAIN_STR);

    static {
        try {
            PATTERN_ISO8601 = Pattern.compile("\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d[T]\\d\\d[:]\\d\\d(?:[:]\\d\\d)?(\\.\\d+)?(Z|[+-]\\d\\d(?:[:]?\\d\\d)?)?");
            ALL_FORMATS = new String[]{DATE_FORMAT_STR_ISO8601, "yyyy-MM-dd'T'HH:mm:ss.SSS", "EEE, dd MMM yyyy HH:mm:ss zzz", DATE_FORMAT_STR_PLAIN};
            TimeZone timeZone = TimeZone.getTimeZone("UTC");
            DEFAULT_TIMEZONE = timeZone;
            Locale locale = Locale.US;
            DEFAULT_LOCALE = locale;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", locale);
            DATE_FORMAT_RFC1123 = simpleDateFormat;
            simpleDateFormat.setTimeZone(timeZone);
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(DATE_FORMAT_STR_ISO8601, locale);
            DATE_FORMAT_ISO8601 = simpleDateFormat2;
            simpleDateFormat2.setTimeZone(timeZone);
            instance = new StdDateFormat();
            CALENDAR = new GregorianCalendar(timeZone, locale);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public StdDateFormat() {
        this._tzSerializedWithColon = false;
        this._locale = DEFAULT_LOCALE;
    }

    private static final DateFormat _cloneFormat(DateFormat dateFormat, String str, TimeZone timeZone, Locale locale, Boolean bool) {
        DateFormat dateFormat2;
        if (locale.equals(DEFAULT_LOCALE)) {
            dateFormat2 = (DateFormat) dateFormat.clone();
            if (timeZone != null) {
                dateFormat2.setTimeZone(timeZone);
            }
        } else {
            dateFormat2 = new SimpleDateFormat(str, locale);
            if (timeZone == null) {
                timeZone = DEFAULT_TIMEZONE;
            }
            dateFormat2.setTimeZone(timeZone);
        }
        if (bool != null) {
            dateFormat2.setLenient(bool.booleanValue());
        }
        return dateFormat2;
    }

    public static <T> boolean _equals(T t6, T t7) {
        if (t6 == t7) {
            return true;
        }
        return t6 != null && t6.equals(t7);
    }

    private static int _parse2D(String str, int i2) {
        return (str.charAt(i2 + 1) - '0') + ((str.charAt(i2) - '0') * 10);
    }

    private static int _parse4D(String str, int i2) {
        return (str.charAt(i2 + 3) - '0') + ((str.charAt(i2 + 2) - '0') * 10) + ((str.charAt(i2 + 1) - '0') * 100) + ((str.charAt(i2) - '0') * 1000);
    }

    private Date _parseDateFromLong(String str, ParsePosition parsePosition) throws ParseException {
        try {
            return new Date(NumberInput.parseLong(str));
        } catch (NumberFormatException unused) {
            throw new ParseException(i.l("Timestamp value ", str, " out of 64-bit value range"), parsePosition.getErrorIndex());
        }
    }

    public static TimeZone getDefaultTimeZone() {
        return DEFAULT_TIMEZONE;
    }

    @Deprecated
    public static DateFormat getISO8601Format(TimeZone timeZone, Locale locale) {
        return _cloneFormat(DATE_FORMAT_ISO8601, DATE_FORMAT_STR_ISO8601, timeZone, locale, null);
    }

    @Deprecated
    public static DateFormat getRFC1123Format(TimeZone timeZone, Locale locale) {
        return _cloneFormat(DATE_FORMAT_RFC1123, "EEE, dd MMM yyyy HH:mm:ss zzz", timeZone, locale, null);
    }

    private static void pad2(StringBuffer stringBuffer, int i2) {
        int i7 = i2 / 10;
        if (i7 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i7 + 48));
            i2 -= i7 * 10;
        }
        stringBuffer.append((char) (i2 + 48));
    }

    private static void pad3(StringBuffer stringBuffer, int i2) {
        int i7 = i2 / 100;
        if (i7 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i7 + 48));
            i2 -= i7 * 100;
        }
        pad2(stringBuffer, i2);
    }

    private static void pad4(StringBuffer stringBuffer, int i2) {
        int i7 = i2 / 100;
        if (i7 == 0) {
            stringBuffer.append('0');
            stringBuffer.append('0');
        } else {
            if (i7 > 99) {
                stringBuffer.append(i7);
            } else {
                pad2(stringBuffer, i7);
            }
            i2 -= i7 * 100;
        }
        pad2(stringBuffer, i2);
    }

    public void _clearFormats() {
        this._formatRFC1123 = null;
    }

    public void _format(TimeZone timeZone, Locale locale, Date date, StringBuffer stringBuffer) {
        Calendar _getCalendar = _getCalendar(timeZone);
        _getCalendar.setTime(date);
        int i2 = _getCalendar.get(1);
        if (_getCalendar.get(0) == 0) {
            _formatBCEYear(stringBuffer, i2);
        } else {
            if (i2 > 9999) {
                stringBuffer.append('+');
            }
            pad4(stringBuffer, i2);
        }
        stringBuffer.append('-');
        pad2(stringBuffer, _getCalendar.get(2) + 1);
        stringBuffer.append('-');
        pad2(stringBuffer, _getCalendar.get(5));
        stringBuffer.append('T');
        pad2(stringBuffer, _getCalendar.get(11));
        stringBuffer.append(':');
        pad2(stringBuffer, _getCalendar.get(12));
        stringBuffer.append(':');
        pad2(stringBuffer, _getCalendar.get(13));
        stringBuffer.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
        pad3(stringBuffer, _getCalendar.get(14));
        int offset = timeZone.getOffset(_getCalendar.getTimeInMillis());
        if (offset == 0) {
            if (this._tzSerializedWithColon) {
                stringBuffer.append("+00:00");
                return;
            } else {
                stringBuffer.append("+0000");
                return;
            }
        }
        int i7 = offset / ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS;
        int abs = Math.abs(i7 / 60);
        int abs2 = Math.abs(i7 % 60);
        stringBuffer.append(offset < 0 ? '-' : '+');
        pad2(stringBuffer, abs);
        if (this._tzSerializedWithColon) {
            stringBuffer.append(':');
        }
        pad2(stringBuffer, abs2);
    }

    public void _formatBCEYear(StringBuffer stringBuffer, int i2) {
        if (i2 == 1) {
            stringBuffer.append("+0000");
        } else {
            stringBuffer.append('-');
            pad4(stringBuffer, i2 - 1);
        }
    }

    public Calendar _getCalendar(TimeZone timeZone) {
        Calendar calendar = this._calendar;
        if (calendar == null) {
            calendar = (Calendar) CALENDAR.clone();
            this._calendar = calendar;
        }
        if (!calendar.getTimeZone().equals(timeZone)) {
            calendar.setTimeZone(timeZone);
        }
        calendar.setLenient(isLenient());
        return calendar;
    }

    public Date _parseAsISO8601(String str, ParsePosition parsePosition) throws IllegalArgumentException, ParseException {
        String str2;
        int i2;
        int i7;
        int length = str.length();
        TimeZone timeZone = DEFAULT_TIMEZONE;
        if (this._timezone != null && 'Z' != str.charAt(length - 1)) {
            timeZone = this._timezone;
        }
        Calendar _getCalendar = _getCalendar(timeZone);
        _getCalendar.clear();
        int i8 = 0;
        if (length > 10) {
            Matcher matcher = PATTERN_ISO8601.matcher(str);
            if (matcher.matches()) {
                int start = matcher.start(2);
                int end = matcher.end(2);
                int i9 = end - start;
                if (i9 > 1) {
                    int _parse2D = _parse2D(str, start + 1) * 3600;
                    if (i9 >= 5) {
                        _parse2D += _parse2D(str, end - 2) * 60;
                    }
                    _getCalendar.set(15, str.charAt(start) == '-' ? _parse2D * (-1000) : _parse2D * 1000);
                    _getCalendar.set(16, 0);
                }
                int _parse4D = _parse4D(str, 0);
                int _parse2D2 = _parse2D(str, 5) - 1;
                int _parse2D3 = _parse2D(str, 8);
                int _parse2D4 = _parse2D(str, 11);
                int _parse2D5 = _parse2D(str, 14);
                if (length <= 16 || str.charAt(16) != ':') {
                    i2 = _parse2D3;
                    i7 = 0;
                } else {
                    i2 = _parse2D3;
                    i7 = _parse2D(str, 17);
                }
                _getCalendar.set(_parse4D, _parse2D2, i2, _parse2D4, _parse2D5, i7);
                int start2 = matcher.start(1);
                int i10 = start2 + 1;
                int end2 = matcher.end(1);
                if (i10 >= end2) {
                    _getCalendar.set(14, 0);
                } else {
                    int i11 = end2 - i10;
                    if (i11 != 0) {
                        if (i11 != 1) {
                            if (i11 != 2) {
                                if (i11 != 3 && i11 > 9) {
                                    throw new ParseException(c.m("Cannot parse date \"", str, "\": invalid fractional seconds '", matcher.group(1).substring(1), "'; can use at most 9 digits"), i10);
                                }
                                i8 = str.charAt(start2 + 3) - '0';
                            }
                            i8 += (str.charAt(start2 + 2) - '0') * 10;
                        }
                        i8 += (str.charAt(i10) - '0') * 100;
                    }
                    _getCalendar.set(14, i8);
                }
                return _getCalendar.getTime();
            }
            str2 = DATE_FORMAT_STR_ISO8601;
        } else {
            if (PATTERN_PLAIN.matcher(str).matches()) {
                _getCalendar.set(_parse4D(str, 0), _parse2D(str, 5) - 1, _parse2D(str, 8), 0, 0, 0);
                _getCalendar.set(14, 0);
                return _getCalendar.getTime();
            }
            str2 = DATE_FORMAT_STR_PLAIN;
        }
        Boolean bool = this._lenient;
        StringBuilder u6 = i.u("Cannot parse date \"", str, "\": while it seems to fit format '", str2, "', parsing fails (leniency? ");
        u6.append(bool);
        u6.append(")");
        throw new ParseException(u6.toString(), 0);
    }

    public Date _parseDate(String str, ParsePosition parsePosition) throws ParseException {
        if (looksLikeISO8601(str)) {
            return parseAsISO8601(str, parsePosition);
        }
        int length = str.length();
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            char charAt = str.charAt(length);
            if (charAt < '0' || charAt > '9') {
                if (length > 0 || charAt != '-') {
                    break;
                }
            }
        }
        return (length >= 0 || !(str.charAt(0) == '-' || NumberInput.inLongRange(str, false))) ? parseAsRFC1123(str, parsePosition) : _parseDateFromLong(str, parsePosition);
    }

    @Override // java.text.DateFormat
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // java.text.DateFormat
    public StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        TimeZone timeZone = this._timezone;
        if (timeZone == null) {
            timeZone = DEFAULT_TIMEZONE;
        }
        _format(timeZone, this._locale, date, stringBuffer);
        return stringBuffer;
    }

    @Override // java.text.DateFormat
    public TimeZone getTimeZone() {
        return this._timezone;
    }

    @Override // java.text.DateFormat
    public int hashCode() {
        return System.identityHashCode(this);
    }

    public boolean isColonIncludedInTimeZone() {
        return this._tzSerializedWithColon;
    }

    @Override // java.text.DateFormat
    public boolean isLenient() {
        Boolean bool = this._lenient;
        return bool == null || bool.booleanValue();
    }

    public boolean looksLikeISO8601(String str) {
        return str.length() >= 7 && Character.isDigit(str.charAt(0)) && Character.isDigit(str.charAt(3)) && str.charAt(4) == '-' && Character.isDigit(str.charAt(5));
    }

    @Override // java.text.DateFormat
    public Date parse(String str) throws ParseException {
        String trim = str.trim();
        ParsePosition parsePosition = new ParsePosition(0);
        Date _parseDate = _parseDate(trim, parsePosition);
        if (_parseDate != null) {
            return _parseDate;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : ALL_FORMATS) {
            if (sb.length() > 0) {
                sb.append("\", \"");
            } else {
                sb.append('\"');
            }
            sb.append(str2);
        }
        sb.append('\"');
        throw new ParseException(c.m("Cannot parse date \"", trim, "\": not compatible with any of standard forms (", sb.toString(), ")"), parsePosition.getErrorIndex());
    }

    public Date parseAsISO8601(String str, ParsePosition parsePosition) throws ParseException {
        try {
            return _parseAsISO8601(str, parsePosition);
        } catch (IllegalArgumentException e3) {
            throw new ParseException(c.l("Cannot parse date \"", str, "\", problem: ", e3.getMessage()), parsePosition.getErrorIndex());
        }
    }

    public Date parseAsRFC1123(String str, ParsePosition parsePosition) {
        if (this._formatRFC1123 == null) {
            this._formatRFC1123 = _cloneFormat(DATE_FORMAT_RFC1123, "EEE, dd MMM yyyy HH:mm:ss zzz", this._timezone, this._locale, this._lenient);
        }
        return this._formatRFC1123.parse(str, parsePosition);
    }

    @Override // java.text.DateFormat
    public void setLenient(boolean z6) {
        Boolean valueOf = Boolean.valueOf(z6);
        if (_equals(valueOf, this._lenient)) {
            return;
        }
        this._lenient = valueOf;
        _clearFormats();
    }

    @Override // java.text.DateFormat
    public void setTimeZone(TimeZone timeZone) {
        if (timeZone.equals(this._timezone)) {
            return;
        }
        _clearFormats();
        this._timezone = timeZone;
    }

    public String toPattern() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("[one of: 'yyyy-MM-dd'T'HH:mm:ss.SSSZ', 'EEE, dd MMM yyyy HH:mm:ss zzz' (");
        return i.o(sb, Boolean.FALSE.equals(this._lenient) ? "strict" : "lenient", ")]");
    }

    public String toString() {
        return String.format("DateFormat %s: (timezone: %s, locale: %s, lenient: %s)", getClass().getName(), this._timezone, this._locale, this._lenient);
    }

    public StdDateFormat withColonInTimeZone(boolean z6) {
        return this._tzSerializedWithColon == z6 ? this : new StdDateFormat(this._timezone, this._locale, this._lenient, z6);
    }

    public StdDateFormat withLenient(Boolean bool) {
        return _equals(bool, this._lenient) ? this : new StdDateFormat(this._timezone, this._locale, bool, this._tzSerializedWithColon);
    }

    public StdDateFormat withLocale(Locale locale) {
        return locale.equals(this._locale) ? this : new StdDateFormat(this._timezone, locale, this._lenient, this._tzSerializedWithColon);
    }

    public StdDateFormat withTimeZone(TimeZone timeZone) {
        if (timeZone == null) {
            timeZone = DEFAULT_TIMEZONE;
        }
        TimeZone timeZone2 = this._timezone;
        return (timeZone == timeZone2 || timeZone.equals(timeZone2)) ? this : new StdDateFormat(timeZone, this._locale, this._lenient, this._tzSerializedWithColon);
    }

    @Override // java.text.DateFormat, java.text.Format
    public StdDateFormat clone() {
        return new StdDateFormat(this._timezone, this._locale, this._lenient, this._tzSerializedWithColon);
    }

    @Deprecated
    public StdDateFormat(TimeZone timeZone, Locale locale) {
        this._tzSerializedWithColon = false;
        this._timezone = timeZone;
        this._locale = locale;
    }

    public StdDateFormat(TimeZone timeZone, Locale locale, Boolean bool) {
        this(timeZone, locale, bool, false);
    }

    public StdDateFormat(TimeZone timeZone, Locale locale, Boolean bool, boolean z6) {
        this._timezone = timeZone;
        this._locale = locale;
        this._lenient = bool;
        this._tzSerializedWithColon = z6;
    }

    @Override // java.text.DateFormat
    public Date parse(String str, ParsePosition parsePosition) {
        try {
            return _parseDate(str, parsePosition);
        } catch (ParseException unused) {
            return null;
        }
    }
}
