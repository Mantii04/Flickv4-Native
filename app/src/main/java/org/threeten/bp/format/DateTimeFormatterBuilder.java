package org.threeten.bp.format;

import A.i;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.Renderer;
import b.c;
import cz.msebera.android.httpclient.message.TokenParser;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import okhttp3.internal.http2.Http2Connection;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.time.TimeZones;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.chrono.ChronoLocalDate;
import org.threeten.bp.chrono.Chronology;
import org.threeten.bp.format.SimpleDateTimeTextProvider;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.IsoFields;
import org.threeten.bp.temporal.TemporalAccessor;
import org.threeten.bp.temporal.TemporalField;
import org.threeten.bp.temporal.TemporalQueries;
import org.threeten.bp.temporal.TemporalQuery;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.WeekFields;
import org.threeten.bp.zone.ZoneRulesProvider;

/* loaded from: classes2.dex */
public final class DateTimeFormatterBuilder {
    private static final Map<Character, TemporalField> FIELD_MAP;
    static final Comparator<String> LENGTH_SORT;
    private static final TemporalQuery<ZoneId> QUERY_REGION_ONLY = new TemporalQuery<ZoneId>() { // from class: org.threeten.bp.format.DateTimeFormatterBuilder.1
        @Override // org.threeten.bp.temporal.TemporalQuery
        public ZoneId queryFrom(TemporalAccessor temporalAccessor) {
            ZoneId zoneId = (ZoneId) temporalAccessor.query(TemporalQueries.zoneId());
            if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                return null;
            }
            return zoneId;
        }
    };
    private DateTimeFormatterBuilder active;
    private final boolean optional;
    private char padNextChar;
    private int padNextWidth;
    private final DateTimeFormatterBuilder parent;
    private final List<DateTimePrinterParser> printerParsers;
    private int valueParserIndex;

    /* renamed from: org.threeten.bp.format.DateTimeFormatterBuilder$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$format$SignStyle;

        static {
            int[] iArr = new int[SignStyle.values().length];
            $SwitchMap$org$threeten$bp$format$SignStyle = iArr;
            try {
                iArr[SignStyle.EXCEEDS_PAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[SignStyle.ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[SignStyle.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[SignStyle.NOT_NEGATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static final class CharLiteralPrinterParser implements DateTimePrinterParser {
        private final char literal;

        public CharLiteralPrinterParser(char c7) {
            this.literal = c7;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            if (i2 == charSequence.length()) {
                return ~i2;
            }
            return !dateTimeParseContext.charEquals(this.literal, charSequence.charAt(i2)) ? ~i2 : i2 + 1;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            sb.append(this.literal);
            return true;
        }

        public String toString() {
            if (this.literal == '\'') {
                return "''";
            }
            return "'" + this.literal + "'";
        }
    }

    public static final class ChronoPrinterParser implements DateTimePrinterParser {
        private final TextStyle textStyle;

        public ChronoPrinterParser(TextStyle textStyle) {
            this.textStyle = textStyle;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            DateTimeParseContext dateTimeParseContext2;
            CharSequence charSequence2;
            int i7;
            if (i2 < 0 || i2 > charSequence.length()) {
                throw new IndexOutOfBoundsException();
            }
            Chronology chronology = null;
            int i8 = -1;
            for (Chronology chronology2 : Chronology.getAvailableChronologies()) {
                String id = chronology2.getId();
                int length = id.length();
                if (length > i8) {
                    dateTimeParseContext2 = dateTimeParseContext;
                    charSequence2 = charSequence;
                    i7 = i2;
                    if (dateTimeParseContext2.subSequenceEquals(charSequence2, i7, id, 0, length)) {
                        chronology = chronology2;
                        i8 = length;
                    }
                } else {
                    dateTimeParseContext2 = dateTimeParseContext;
                    charSequence2 = charSequence;
                    i7 = i2;
                }
                dateTimeParseContext = dateTimeParseContext2;
                charSequence = charSequence2;
                i2 = i7;
            }
            DateTimeParseContext dateTimeParseContext3 = dateTimeParseContext;
            int i9 = i2;
            if (chronology == null) {
                return ~i9;
            }
            dateTimeParseContext3.setParsed(chronology);
            return i9 + i8;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Chronology chronology = (Chronology) dateTimePrintContext.getValue(TemporalQueries.chronology());
            if (chronology == null) {
                return false;
            }
            if (this.textStyle == null) {
                sb.append(chronology.getId());
                return true;
            }
            try {
                sb.append(ResourceBundle.getBundle("org.threeten.bp.format.ChronologyText", dateTimePrintContext.getLocale(), DateTimeFormatterBuilder.class.getClassLoader()).getString(chronology.getId()));
                return true;
            } catch (MissingResourceException unused) {
                sb.append(chronology.getId());
                return true;
            }
        }
    }

    public static final class CompositePrinterParser implements DateTimePrinterParser {
        private final boolean optional;
        private final DateTimePrinterParser[] printerParsers;

        public CompositePrinterParser(List<DateTimePrinterParser> list, boolean z6) {
            this((DateTimePrinterParser[]) list.toArray(new DateTimePrinterParser[list.size()]), z6);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            if (!this.optional) {
                for (DateTimePrinterParser dateTimePrinterParser : this.printerParsers) {
                    i2 = dateTimePrinterParser.parse(dateTimeParseContext, charSequence, i2);
                    if (i2 < 0) {
                        return i2;
                    }
                }
                return i2;
            }
            dateTimeParseContext.startOptional();
            int i7 = i2;
            for (DateTimePrinterParser dateTimePrinterParser2 : this.printerParsers) {
                i7 = dateTimePrinterParser2.parse(dateTimeParseContext, charSequence, i7);
                if (i7 < 0) {
                    dateTimeParseContext.endOptional(false);
                    return i2;
                }
            }
            dateTimeParseContext.endOptional(true);
            return i7;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            int length = sb.length();
            if (this.optional) {
                dateTimePrintContext.startOptional();
            }
            try {
                for (DateTimePrinterParser dateTimePrinterParser : this.printerParsers) {
                    if (!dateTimePrinterParser.print(dateTimePrintContext, sb)) {
                        sb.setLength(length);
                        return true;
                    }
                }
                if (this.optional) {
                    dateTimePrintContext.endOptional();
                }
                return true;
            } finally {
                if (this.optional) {
                    dateTimePrintContext.endOptional();
                }
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.printerParsers != null) {
                sb.append(this.optional ? "[" : "(");
                for (DateTimePrinterParser dateTimePrinterParser : this.printerParsers) {
                    sb.append(dateTimePrinterParser);
                }
                sb.append(this.optional ? "]" : ")");
            }
            return sb.toString();
        }

        public CompositePrinterParser withOptional(boolean z6) {
            return z6 == this.optional ? this : new CompositePrinterParser(this.printerParsers, z6);
        }

        public CompositePrinterParser(DateTimePrinterParser[] dateTimePrinterParserArr, boolean z6) {
            this.printerParsers = dateTimePrinterParserArr;
            this.optional = z6;
        }
    }

    public interface DateTimePrinterParser {
        int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2);

        boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb);
    }

    public static class DefaultingParser implements DateTimePrinterParser {
        private final TemporalField field;
        private final long value;

        public DefaultingParser(TemporalField temporalField, long j7) {
            this.field = temporalField;
            this.value = j7;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            if (dateTimeParseContext.getParsed(this.field) != null) {
                return i2;
            }
            dateTimeParseContext.setParsedField(this.field, this.value, i2, i2);
            return i2;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            return true;
        }
    }

    public static final class FractionPrinterParser implements DateTimePrinterParser {
        private final boolean decimalPoint;
        private final TemporalField field;
        private final int maxWidth;
        private final int minWidth;

        public FractionPrinterParser(TemporalField temporalField, int i2, int i7, boolean z6) {
            Jdk8Methods.requireNonNull(temporalField, "field");
            if (!temporalField.range().isFixed()) {
                throw new IllegalArgumentException(c.n("Field must have a fixed set of values: ", temporalField));
            }
            if (i2 < 0 || i2 > 9) {
                throw new IllegalArgumentException(i.f(i2, "Minimum width must be from 0 to 9 inclusive but was "));
            }
            if (i7 < 1 || i7 > 9) {
                throw new IllegalArgumentException(i.f(i7, "Maximum width must be from 1 to 9 inclusive but was "));
            }
            if (i7 < i2) {
                throw new IllegalArgumentException(i.e(i7, i2, "Maximum width must exceed or equal the minimum width but ", " < "));
            }
            this.field = temporalField;
            this.minWidth = i2;
            this.maxWidth = i7;
            this.decimalPoint = z6;
        }

        private long convertFromFraction(BigDecimal bigDecimal) {
            ValueRange range = this.field.range();
            BigDecimal valueOf = BigDecimal.valueOf(range.getMinimum());
            return bigDecimal.multiply(BigDecimal.valueOf(range.getMaximum()).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact();
        }

        private BigDecimal convertToFraction(long j7) {
            ValueRange range = this.field.range();
            range.checkValidValue(j7, this.field);
            BigDecimal valueOf = BigDecimal.valueOf(range.getMinimum());
            BigDecimal divide = BigDecimal.valueOf(j7).subtract(valueOf).divide(BigDecimal.valueOf(range.getMaximum()).subtract(valueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
            BigDecimal bigDecimal = BigDecimal.ZERO;
            return divide.compareTo(bigDecimal) == 0 ? bigDecimal : divide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : divide.stripTrailingZeros();
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            int i7 = 0;
            int i8 = dateTimeParseContext.isStrict() ? this.minWidth : 0;
            int i9 = dateTimeParseContext.isStrict() ? this.maxWidth : 9;
            int length = charSequence.length();
            if (i2 != length) {
                if (this.decimalPoint) {
                    if (charSequence.charAt(i2) == dateTimeParseContext.getSymbols().getDecimalSeparator()) {
                        i2++;
                    } else if (i8 > 0) {
                        return ~i2;
                    }
                }
                int i10 = i2;
                int i11 = i8 + i10;
                if (i11 > length) {
                    return ~i10;
                }
                int min = Math.min(i9 + i10, length);
                int i12 = i10;
                while (true) {
                    if (i12 >= min) {
                        break;
                    }
                    int i13 = i12 + 1;
                    int convertToDigit = dateTimeParseContext.getSymbols().convertToDigit(charSequence.charAt(i12));
                    if (convertToDigit >= 0) {
                        i7 = (i7 * 10) + convertToDigit;
                        i12 = i13;
                    } else if (i13 < i11) {
                        return ~i10;
                    }
                }
                return dateTimeParseContext.setParsedField(this.field, convertFromFraction(new BigDecimal(i7).movePointLeft(i12 - i10)), i10, i12);
            }
            if (i8 > 0) {
                return ~i2;
            }
            return i2;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(this.field);
            if (value == null) {
                return false;
            }
            DecimalStyle symbols = dateTimePrintContext.getSymbols();
            BigDecimal convertToFraction = convertToFraction(value.longValue());
            if (convertToFraction.scale() != 0) {
                String convertNumberToI18N = symbols.convertNumberToI18N(convertToFraction.setScale(Math.min(Math.max(convertToFraction.scale(), this.minWidth), this.maxWidth), RoundingMode.FLOOR).toPlainString().substring(2));
                if (this.decimalPoint) {
                    sb.append(symbols.getDecimalSeparator());
                }
                sb.append(convertNumberToI18N);
                return true;
            }
            if (this.minWidth <= 0) {
                return true;
            }
            if (this.decimalPoint) {
                sb.append(symbols.getDecimalSeparator());
            }
            for (int i2 = 0; i2 < this.minWidth; i2++) {
                sb.append(symbols.getZeroDigit());
            }
            return true;
        }

        public String toString() {
            return "Fraction(" + this.field + "," + this.minWidth + "," + this.maxWidth + (this.decimalPoint ? ",DecimalPoint" : "") + ")";
        }
    }

    public static final class InstantPrinterParser implements DateTimePrinterParser {
        private static final long SECONDS_0000_TO_1970 = 62167219200L;
        private static final long SECONDS_PER_10000_YEARS = 315569520000L;
        private final int fractionalDigits;

        public InstantPrinterParser(int i2) {
            this.fractionalDigits = i2;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            int i7;
            int i8;
            DateTimeParseContext copy = dateTimeParseContext.copy();
            int i9 = this.fractionalDigits;
            int i10 = 0;
            int i11 = i9 < 0 ? 0 : i9;
            if (i9 < 0) {
                i9 = 9;
            }
            DateTimeFormatterBuilder appendLiteral = new DateTimeFormatterBuilder().append(DateTimeFormatter.ISO_LOCAL_DATE).appendLiteral('T');
            ChronoField chronoField = ChronoField.HOUR_OF_DAY;
            DateTimeFormatterBuilder appendLiteral2 = appendLiteral.appendValue(chronoField, 2).appendLiteral(':');
            ChronoField chronoField2 = ChronoField.MINUTE_OF_HOUR;
            DateTimeFormatterBuilder appendLiteral3 = appendLiteral2.appendValue(chronoField2, 2).appendLiteral(':');
            ChronoField chronoField3 = ChronoField.SECOND_OF_MINUTE;
            DateTimeFormatterBuilder appendValue = appendLiteral3.appendValue(chronoField3, 2);
            ChronoField chronoField4 = ChronoField.NANO_OF_SECOND;
            int parse = appendValue.appendFraction(chronoField4, i11, i9, true).appendLiteral('Z').toFormatter().toPrinterParser(false).parse(copy, charSequence, i2);
            if (parse < 0) {
                return parse;
            }
            long longValue = copy.getParsed(ChronoField.YEAR).longValue();
            int intValue = copy.getParsed(ChronoField.MONTH_OF_YEAR).intValue();
            int intValue2 = copy.getParsed(ChronoField.DAY_OF_MONTH).intValue();
            int intValue3 = copy.getParsed(chronoField).intValue();
            int intValue4 = copy.getParsed(chronoField2).intValue();
            Long parsed = copy.getParsed(chronoField3);
            Long parsed2 = copy.getParsed(chronoField4);
            int intValue5 = parsed != null ? parsed.intValue() : 0;
            int intValue6 = parsed2 != null ? parsed2.intValue() : 0;
            int i12 = ((int) longValue) % 10000;
            if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
                i7 = 0;
                i8 = intValue5;
                i10 = 1;
            } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
                dateTimeParseContext.setParsedLeapSecond();
                i8 = 59;
                i7 = intValue3;
            } else {
                i7 = intValue3;
                i8 = intValue5;
            }
            try {
                return dateTimeParseContext.setParsedField(chronoField4, intValue6, i2, dateTimeParseContext.setParsedField(ChronoField.INSTANT_SECONDS, Jdk8Methods.safeMultiply(longValue / Renderer.DEFAULT_DURATION_TO_PROGRESS_US, SECONDS_PER_10000_YEARS) + LocalDateTime.of(i12, intValue, intValue2, i7, intValue4, i8, 0).plusDays(i10).toEpochSecond(ZoneOffset.UTC), i2, parse));
            } catch (RuntimeException unused) {
                return ~i2;
            }
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(ChronoField.INSTANT_SECONDS);
            TemporalAccessor temporal = dateTimePrintContext.getTemporal();
            ChronoField chronoField = ChronoField.NANO_OF_SECOND;
            Long valueOf = temporal.isSupported(chronoField) ? Long.valueOf(dateTimePrintContext.getTemporal().getLong(chronoField)) : 0L;
            int i2 = 0;
            if (value == null) {
                return false;
            }
            long longValue = value.longValue();
            int checkValidIntValue = chronoField.checkValidIntValue(valueOf.longValue());
            if (longValue >= -62167219200L) {
                long j7 = longValue - 253402300800L;
                long floorDiv = Jdk8Methods.floorDiv(j7, SECONDS_PER_10000_YEARS) + 1;
                LocalDateTime ofEpochSecond = LocalDateTime.ofEpochSecond(Jdk8Methods.floorMod(j7, SECONDS_PER_10000_YEARS) - SECONDS_0000_TO_1970, 0, ZoneOffset.UTC);
                if (floorDiv > 0) {
                    sb.append('+');
                    sb.append(floorDiv);
                }
                sb.append(ofEpochSecond);
                if (ofEpochSecond.getSecond() == 0) {
                    sb.append(":00");
                }
            } else {
                long j8 = longValue + SECONDS_0000_TO_1970;
                long j9 = j8 / SECONDS_PER_10000_YEARS;
                long j10 = j8 % SECONDS_PER_10000_YEARS;
                LocalDateTime ofEpochSecond2 = LocalDateTime.ofEpochSecond(j10 - SECONDS_0000_TO_1970, 0, ZoneOffset.UTC);
                int length = sb.length();
                sb.append(ofEpochSecond2);
                if (ofEpochSecond2.getSecond() == 0) {
                    sb.append(":00");
                }
                if (j9 < 0) {
                    if (ofEpochSecond2.getYear() == -10000) {
                        sb.replace(length, length + 2, Long.toString(j9 - 1));
                    } else if (j10 == 0) {
                        sb.insert(length, j9);
                    } else {
                        sb.insert(length + 1, Math.abs(j9));
                    }
                }
            }
            int i7 = this.fractionalDigits;
            if (i7 == -2) {
                if (checkValidIntValue != 0) {
                    sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
                    if (checkValidIntValue % PlaybackException.CUSTOM_ERROR_CODE_BASE == 0) {
                        sb.append(Integer.toString((checkValidIntValue / PlaybackException.CUSTOM_ERROR_CODE_BASE) + 1000).substring(1));
                    } else if (checkValidIntValue % 1000 == 0) {
                        sb.append(Integer.toString((checkValidIntValue / 1000) + PlaybackException.CUSTOM_ERROR_CODE_BASE).substring(1));
                    } else {
                        sb.append(Integer.toString(checkValidIntValue + Http2Connection.DEGRADED_PONG_TIMEOUT_NS).substring(1));
                    }
                }
            } else if (i7 > 0 || (i7 == -1 && checkValidIntValue > 0)) {
                sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
                int i8 = 100000000;
                while (true) {
                    int i9 = this.fractionalDigits;
                    if ((i9 != -1 || checkValidIntValue <= 0) && i2 >= i9) {
                        break;
                    }
                    int i10 = checkValidIntValue / i8;
                    sb.append((char) (i10 + 48));
                    checkValidIntValue -= i10 * i8;
                    i8 /= 10;
                    i2++;
                }
            }
            sb.append('Z');
            return true;
        }

        public String toString() {
            return "Instant()";
        }
    }

    public static final class LocalizedOffsetPrinterParser implements DateTimePrinterParser {
        private final TextStyle style;

        public LocalizedOffsetPrinterParser(TextStyle textStyle) {
            this.style = textStyle;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            char charAt;
            if (!dateTimeParseContext.subSequenceEquals(charSequence, i2, TimeZones.GMT_ID, 0, 3)) {
                return ~i2;
            }
            int i7 = i2 + 3;
            if (this.style == TextStyle.FULL) {
                return new OffsetIdPrinterParser("", "+HH:MM:ss").parse(dateTimeParseContext, charSequence, i7);
            }
            int length = charSequence.length();
            if (i7 == length) {
                return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, 0L, i7, i7);
            }
            char charAt2 = charSequence.charAt(i7);
            if (charAt2 != '+' && charAt2 != '-') {
                return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, 0L, i7, i7);
            }
            int i8 = charAt2 == '-' ? -1 : 1;
            if (i7 == length) {
                return ~i7;
            }
            int i9 = i2 + 4;
            char charAt3 = charSequence.charAt(i9);
            if (charAt3 < '0' || charAt3 > '9') {
                return ~i9;
            }
            int i10 = i2 + 5;
            int i11 = charAt3 - '0';
            if (i10 != length && (charAt = charSequence.charAt(i10)) >= '0' && charAt <= '9') {
                i11 = (i11 * 10) + (charAt - '0');
                if (i11 > 23) {
                    return ~i10;
                }
                i10 = i2 + 6;
            }
            if (i10 == length || charSequence.charAt(i10) != ':') {
                return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, i8 * 3600 * i11, i10, i10);
            }
            int i12 = i10 + 1;
            int i13 = length - 2;
            if (i12 > i13) {
                return ~i12;
            }
            char charAt4 = charSequence.charAt(i12);
            if (charAt4 < '0' || charAt4 > '9') {
                return ~i12;
            }
            int i14 = i10 + 2;
            int i15 = charAt4 - '0';
            char charAt5 = charSequence.charAt(i14);
            if (charAt5 < '0' || charAt5 > '9') {
                return ~i14;
            }
            int i16 = i10 + 3;
            if ((charAt5 - '0') + (i15 * 10) > 59) {
                return ~i16;
            }
            if (i16 == length || charSequence.charAt(i16) != ':') {
                return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, ((r9 * 60) + (i11 * 3600)) * i8, i16, i16);
            }
            int i17 = i10 + 4;
            if (i17 > i13) {
                return ~i17;
            }
            char charAt6 = charSequence.charAt(i17);
            if (charAt6 < '0' || charAt6 > '9') {
                return ~i17;
            }
            int i18 = i10 + 5;
            int i19 = charAt6 - '0';
            char charAt7 = charSequence.charAt(i18);
            if (charAt7 < '0' || charAt7 > '9') {
                return ~i18;
            }
            int i20 = i10 + 6;
            return (charAt7 - '0') + (i19 * 10) > 59 ? ~i20 : dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, ((r9 * 60) + (i11 * 3600) + r1) * i8, i20, i20);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(ChronoField.OFFSET_SECONDS);
            if (value == null) {
                return false;
            }
            sb.append(TimeZones.GMT_ID);
            if (this.style == TextStyle.FULL) {
                return new OffsetIdPrinterParser("", "+HH:MM:ss").print(dateTimePrintContext, sb);
            }
            int safeToInt = Jdk8Methods.safeToInt(value.longValue());
            if (safeToInt == 0) {
                return true;
            }
            int abs = Math.abs((safeToInt / 3600) % 100);
            int abs2 = Math.abs((safeToInt / 60) % 60);
            int abs3 = Math.abs(safeToInt % 60);
            sb.append(safeToInt < 0 ? "-" : "+");
            sb.append(abs);
            if (abs2 <= 0 && abs3 <= 0) {
                return true;
            }
            sb.append(":");
            sb.append((char) ((abs2 / 10) + 48));
            sb.append((char) ((abs2 % 10) + 48));
            if (abs3 <= 0) {
                return true;
            }
            sb.append(":");
            sb.append((char) ((abs3 / 10) + 48));
            sb.append((char) ((abs3 % 10) + 48));
            return true;
        }
    }

    public static final class LocalizedPrinterParser implements DateTimePrinterParser {
        private final FormatStyle dateStyle;
        private final FormatStyle timeStyle;

        public LocalizedPrinterParser(FormatStyle formatStyle, FormatStyle formatStyle2) {
            this.dateStyle = formatStyle;
            this.timeStyle = formatStyle2;
        }

        private DateTimeFormatter formatter(Locale locale, Chronology chronology) {
            return DateTimeFormatStyleProvider.getInstance().getFormatter(this.dateStyle, this.timeStyle, chronology, locale);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            return formatter(dateTimeParseContext.getLocale(), dateTimeParseContext.getEffectiveChronology()).toPrinterParser(false).parse(dateTimeParseContext, charSequence, i2);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            return formatter(dateTimePrintContext.getLocale(), Chronology.from(dateTimePrintContext.getTemporal())).toPrinterParser(false).print(dateTimePrintContext, sb);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Localized(");
            Object obj = this.dateStyle;
            if (obj == null) {
                obj = "";
            }
            sb.append(obj);
            sb.append(",");
            FormatStyle formatStyle = this.timeStyle;
            sb.append(formatStyle != null ? formatStyle : "");
            sb.append(")");
            return sb.toString();
        }
    }

    public static class NumberPrinterParser implements DateTimePrinterParser {
        static final int[] EXCEED_POINTS = {0, 10, 100, 1000, 10000, 100000, PlaybackException.CUSTOM_ERROR_CODE_BASE, 10000000, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};
        final TemporalField field;
        final int maxWidth;
        final int minWidth;
        final SignStyle signStyle;
        final int subsequentWidth;

        public long getValue(DateTimePrintContext dateTimePrintContext, long j7) {
            return j7;
        }

        public boolean isFixedWidth(DateTimeParseContext dateTimeParseContext) {
            int i2 = this.subsequentWidth;
            if (i2 != -1) {
                return i2 > 0 && this.minWidth == this.maxWidth && this.signStyle == SignStyle.NOT_NEGATIVE;
            }
            return true;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            int i7;
            boolean z6;
            boolean z7;
            BigInteger bigInteger;
            long j7;
            int i8;
            long j8;
            int i9;
            boolean z8;
            int length = charSequence.length();
            if (i2 == length) {
                return ~i2;
            }
            char charAt = charSequence.charAt(i2);
            int i10 = 0;
            boolean z9 = true;
            if (charAt == dateTimeParseContext.getSymbols().getPositiveSign()) {
                if (!this.signStyle.parse(true, dateTimeParseContext.isStrict(), this.minWidth == this.maxWidth)) {
                    return ~i2;
                }
                i7 = i2 + 1;
                z6 = false;
                z7 = true;
            } else if (charAt == dateTimeParseContext.getSymbols().getNegativeSign()) {
                if (!this.signStyle.parse(false, dateTimeParseContext.isStrict(), this.minWidth == this.maxWidth)) {
                    return ~i2;
                }
                i7 = i2 + 1;
                z7 = false;
                z6 = true;
            } else {
                if (this.signStyle == SignStyle.ALWAYS && dateTimeParseContext.isStrict()) {
                    return ~i2;
                }
                i7 = i2;
                z6 = false;
                z7 = false;
            }
            int i11 = (dateTimeParseContext.isStrict() || isFixedWidth(dateTimeParseContext)) ? this.minWidth : 1;
            int i12 = i7 + i11;
            if (i12 > length) {
                return ~i7;
            }
            int max = Math.max(this.subsequentWidth, 0) + ((dateTimeParseContext.isStrict() || isFixedWidth(dateTimeParseContext)) ? this.maxWidth : 9);
            while (true) {
                bigInteger = null;
                if (i10 >= 2) {
                    j7 = 0;
                    i8 = i7;
                    j8 = 0;
                    break;
                }
                int min = Math.min(max + i7, length);
                i9 = i7;
                j8 = 0;
                while (true) {
                    if (i9 >= min) {
                        z8 = z9;
                        j7 = 0;
                        break;
                    }
                    int i13 = i9 + 1;
                    z8 = z9;
                    j7 = 0;
                    int convertToDigit = dateTimeParseContext.getSymbols().convertToDigit(charSequence.charAt(i9));
                    if (convertToDigit >= 0) {
                        if (i13 - i7 > 18) {
                            if (bigInteger == null) {
                                bigInteger = BigInteger.valueOf(j8);
                            }
                            bigInteger = bigInteger.multiply(BigInteger.TEN).add(BigInteger.valueOf(convertToDigit));
                        } else {
                            j8 = (j8 * 10) + convertToDigit;
                        }
                        i9 = i13;
                        z9 = z8;
                    } else if (i9 < i12) {
                        return ~i7;
                    }
                }
                int i14 = this.subsequentWidth;
                if (i14 <= 0 || i10 != 0) {
                    break;
                }
                max = Math.max(i11, (i9 - i7) - i14);
                i10++;
                z9 = z8;
            }
            i8 = i9;
            if (z6) {
                if (bigInteger != null) {
                    if (bigInteger.equals(BigInteger.ZERO) && dateTimeParseContext.isStrict()) {
                        return ~(i7 - 1);
                    }
                    bigInteger = bigInteger.negate();
                } else {
                    if (j8 == j7 && dateTimeParseContext.isStrict()) {
                        return ~(i7 - 1);
                    }
                    j8 = -j8;
                }
            } else if (this.signStyle == SignStyle.EXCEEDS_PAD && dateTimeParseContext.isStrict()) {
                int i15 = i8 - i7;
                if (z7) {
                    if (i15 <= this.minWidth) {
                        return ~(i7 - 1);
                    }
                } else if (i15 > this.minWidth) {
                    return ~i7;
                }
            }
            long j9 = j8;
            if (bigInteger == null) {
                return setValue(dateTimeParseContext, j9, i7, i8);
            }
            if (bigInteger.bitLength() > 63) {
                bigInteger = bigInteger.divide(BigInteger.TEN);
                i8--;
            }
            return setValue(dateTimeParseContext, bigInteger.longValue(), i7, i8);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(this.field);
            if (value == null) {
                return false;
            }
            long value2 = getValue(dateTimePrintContext, value.longValue());
            DecimalStyle symbols = dateTimePrintContext.getSymbols();
            String l7 = value2 == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(value2));
            if (l7.length() > this.maxWidth) {
                throw new DateTimeException("Field " + this.field + " cannot be printed as the value " + value2 + " exceeds the maximum print width of " + this.maxWidth);
            }
            String convertNumberToI18N = symbols.convertNumberToI18N(l7);
            if (value2 >= 0) {
                int i2 = AnonymousClass4.$SwitchMap$org$threeten$bp$format$SignStyle[this.signStyle.ordinal()];
                if (i2 == 1) {
                    if (this.minWidth < 19 && value2 >= EXCEED_POINTS[r4]) {
                        sb.append(symbols.getPositiveSign());
                    }
                } else if (i2 == 2) {
                    sb.append(symbols.getPositiveSign());
                }
            } else {
                int i7 = AnonymousClass4.$SwitchMap$org$threeten$bp$format$SignStyle[this.signStyle.ordinal()];
                if (i7 == 1 || i7 == 2 || i7 == 3) {
                    sb.append(symbols.getNegativeSign());
                } else if (i7 == 4) {
                    throw new DateTimeException("Field " + this.field + " cannot be printed as the value " + value2 + " cannot be negative according to the SignStyle");
                }
            }
            for (int i8 = 0; i8 < this.minWidth - convertNumberToI18N.length(); i8++) {
                sb.append(symbols.getZeroDigit());
            }
            sb.append(convertNumberToI18N);
            return true;
        }

        public int setValue(DateTimeParseContext dateTimeParseContext, long j7, int i2, int i7) {
            return dateTimeParseContext.setParsedField(this.field, j7, i2, i7);
        }

        public String toString() {
            int i2 = this.minWidth;
            if (i2 == 1 && this.maxWidth == 19 && this.signStyle == SignStyle.NORMAL) {
                return "Value(" + this.field + ")";
            }
            if (i2 == this.maxWidth && this.signStyle == SignStyle.NOT_NEGATIVE) {
                StringBuilder sb = new StringBuilder("Value(");
                sb.append(this.field);
                sb.append(",");
                return i.m(sb, this.minWidth, ")");
            }
            return "Value(" + this.field + "," + this.minWidth + "," + this.maxWidth + "," + this.signStyle + ")";
        }

        public NumberPrinterParser withFixedWidth() {
            return this.subsequentWidth == -1 ? this : new NumberPrinterParser(this.field, this.minWidth, this.maxWidth, this.signStyle, -1);
        }

        public NumberPrinterParser withSubsequentWidth(int i2) {
            return new NumberPrinterParser(this.field, this.minWidth, this.maxWidth, this.signStyle, this.subsequentWidth + i2);
        }

        public NumberPrinterParser(TemporalField temporalField, int i2, int i7, SignStyle signStyle) {
            this.field = temporalField;
            this.minWidth = i2;
            this.maxWidth = i7;
            this.signStyle = signStyle;
            this.subsequentWidth = 0;
        }

        private NumberPrinterParser(TemporalField temporalField, int i2, int i7, SignStyle signStyle, int i8) {
            this.field = temporalField;
            this.minWidth = i2;
            this.maxWidth = i7;
            this.signStyle = signStyle;
            this.subsequentWidth = i8;
        }
    }

    public static final class OffsetIdPrinterParser implements DateTimePrinterParser {
        private final String noOffsetText;
        private final int type;
        static final String[] PATTERNS = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};
        static final OffsetIdPrinterParser INSTANCE_ID = new OffsetIdPrinterParser("Z", "+HH:MM:ss");
        static final OffsetIdPrinterParser INSTANCE_ID_ZERO = new OffsetIdPrinterParser("0", "+HH:MM:ss");

        public OffsetIdPrinterParser(String str, String str2) {
            Jdk8Methods.requireNonNull(str, "noOffsetText");
            Jdk8Methods.requireNonNull(str2, "pattern");
            this.noOffsetText = str;
            this.type = checkPattern(str2);
        }

        private int checkPattern(String str) {
            int i2 = 0;
            while (true) {
                String[] strArr = PATTERNS;
                if (i2 >= strArr.length) {
                    throw new IllegalArgumentException(i.k("Invalid zone offset pattern: ", str));
                }
                if (strArr[i2].equals(str)) {
                    return i2;
                }
                i2++;
            }
        }

        private boolean parseNumber(int[] iArr, int i2, CharSequence charSequence, boolean z6) {
            int i7 = this.type;
            if ((i7 + 3) / 2 < i2) {
                return false;
            }
            int i8 = iArr[0];
            if (i7 % 2 == 0 && i2 > 1) {
                int i9 = i8 + 1;
                if (i9 <= charSequence.length() && charSequence.charAt(i8) == ':') {
                    i8 = i9;
                }
                return z6;
            }
            if (i8 + 2 <= charSequence.length()) {
                int i10 = i8 + 1;
                char charAt = charSequence.charAt(i8);
                int i11 = i8 + 2;
                char charAt2 = charSequence.charAt(i10);
                if (charAt >= '0' && charAt <= '9' && charAt2 >= '0' && charAt2 <= '9') {
                    int i12 = (charAt2 - '0') + ((charAt - '0') * 10);
                    if (i12 >= 0 && i12 <= 59) {
                        iArr[i2] = i12;
                        iArr[0] = i11;
                        return false;
                    }
                }
            }
            return z6;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            int length = charSequence.length();
            int length2 = this.noOffsetText.length();
            if (length2 == 0) {
                if (i2 == length) {
                    return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, 0L, i2, i2);
                }
            } else {
                if (i2 == length) {
                    return ~i2;
                }
                if (dateTimeParseContext.subSequenceEquals(charSequence, i2, this.noOffsetText, 0, length2)) {
                    return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, 0L, i2, i2 + length2);
                }
            }
            char charAt = charSequence.charAt(i2);
            if (charAt == '+' || charAt == '-') {
                int i7 = charAt == '-' ? -1 : 1;
                int[] iArr = new int[4];
                iArr[0] = i2 + 1;
                if (!parseNumber(iArr, 1, charSequence, true)) {
                    if (!parseNumber(iArr, 2, charSequence, this.type >= 3) && !parseNumber(iArr, 3, charSequence, false)) {
                        return dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, ((iArr[2] * 60) + (iArr[1] * 3600) + iArr[3]) * i7, i2, iArr[0]);
                    }
                }
            }
            return length2 == 0 ? dateTimeParseContext.setParsedField(ChronoField.OFFSET_SECONDS, 0L, i2, i2 + length2) : ~i2;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(ChronoField.OFFSET_SECONDS);
            if (value == null) {
                return false;
            }
            int safeToInt = Jdk8Methods.safeToInt(value.longValue());
            if (safeToInt == 0) {
                sb.append(this.noOffsetText);
            } else {
                int abs = Math.abs((safeToInt / 3600) % 100);
                int abs2 = Math.abs((safeToInt / 60) % 60);
                int abs3 = Math.abs(safeToInt % 60);
                int length = sb.length();
                sb.append(safeToInt < 0 ? "-" : "+");
                sb.append((char) ((abs / 10) + 48));
                sb.append((char) ((abs % 10) + 48));
                int i2 = this.type;
                if (i2 >= 3 || (i2 >= 1 && abs2 > 0)) {
                    sb.append(i2 % 2 == 0 ? ":" : "");
                    sb.append((char) ((abs2 / 10) + 48));
                    sb.append((char) ((abs2 % 10) + 48));
                    abs += abs2;
                    int i7 = this.type;
                    if (i7 >= 7 || (i7 >= 5 && abs3 > 0)) {
                        sb.append(i7 % 2 == 0 ? ":" : "");
                        sb.append((char) ((abs3 / 10) + 48));
                        sb.append((char) ((abs3 % 10) + 48));
                        abs += abs3;
                    }
                }
                if (abs == 0) {
                    sb.setLength(length);
                    sb.append(this.noOffsetText);
                }
            }
            return true;
        }

        public String toString() {
            return "Offset(" + PATTERNS[this.type] + ",'" + this.noOffsetText.replace("'", "''") + "')";
        }
    }

    public static final class PadPrinterParserDecorator implements DateTimePrinterParser {
        private final char padChar;
        private final int padWidth;
        private final DateTimePrinterParser printerParser;

        public PadPrinterParserDecorator(DateTimePrinterParser dateTimePrinterParser, int i2, char c7) {
            this.printerParser = dateTimePrinterParser;
            this.padWidth = i2;
            this.padChar = c7;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            boolean isStrict = dateTimeParseContext.isStrict();
            boolean isCaseSensitive = dateTimeParseContext.isCaseSensitive();
            if (i2 > charSequence.length()) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == charSequence.length()) {
                return ~i2;
            }
            int i7 = this.padWidth + i2;
            if (i7 > charSequence.length()) {
                if (isStrict) {
                    return ~i2;
                }
                i7 = charSequence.length();
            }
            int i8 = i2;
            while (i8 < i7) {
                if (!isCaseSensitive) {
                    if (!dateTimeParseContext.charEquals(charSequence.charAt(i8), this.padChar)) {
                        break;
                    }
                    i8++;
                } else {
                    if (charSequence.charAt(i8) != this.padChar) {
                        break;
                    }
                    i8++;
                }
            }
            int parse = this.printerParser.parse(dateTimeParseContext, charSequence.subSequence(0, i7), i8);
            return (parse == i7 || !isStrict) ? parse : ~(i2 + i8);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            int length = sb.length();
            if (!this.printerParser.print(dateTimePrintContext, sb)) {
                return false;
            }
            int length2 = sb.length() - length;
            if (length2 > this.padWidth) {
                StringBuilder q6 = i.q(length2, "Cannot print as output of ", " characters exceeds pad width of ");
                q6.append(this.padWidth);
                throw new DateTimeException(q6.toString());
            }
            for (int i2 = 0; i2 < this.padWidth - length2; i2++) {
                sb.insert(length, this.padChar);
            }
            return true;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder("Pad(");
            sb.append(this.printerParser);
            sb.append(",");
            sb.append(this.padWidth);
            if (this.padChar == ' ') {
                str = ")";
            } else {
                str = ",'" + this.padChar + "')";
            }
            sb.append(str);
            return sb.toString();
        }
    }

    public static final class ReducedPrinterParser extends NumberPrinterParser {
        static final LocalDate BASE_DATE = LocalDate.of(2000, 1, 1);
        private final ChronoLocalDate baseDate;
        private final int baseValue;

        public ReducedPrinterParser(TemporalField temporalField, int i2, int i7, int i8, ChronoLocalDate chronoLocalDate) {
            super(temporalField, i2, i7, SignStyle.NOT_NEGATIVE);
            if (i2 < 1 || i2 > 10) {
                throw new IllegalArgumentException(i.f(i2, "The width must be from 1 to 10 inclusive but was "));
            }
            if (i7 < 1 || i7 > 10) {
                throw new IllegalArgumentException(i.f(i7, "The maxWidth must be from 1 to 10 inclusive but was "));
            }
            if (i7 < i2) {
                throw new IllegalArgumentException("The maxWidth must be greater than the width");
            }
            if (chronoLocalDate == null) {
                long j7 = i8;
                if (!temporalField.range().isValidValue(j7)) {
                    throw new IllegalArgumentException("The base value must be within the range of the field");
                }
                if (j7 + NumberPrinterParser.EXCEED_POINTS[i2] > 2147483647L) {
                    throw new DateTimeException("Unable to add printer-parser as the range exceeds the capacity of an int");
                }
            }
            this.baseValue = i8;
            this.baseDate = chronoLocalDate;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        public long getValue(DateTimePrintContext dateTimePrintContext, long j7) {
            long abs = Math.abs(j7);
            int i2 = this.baseValue;
            if (this.baseDate != null) {
                i2 = Chronology.from(dateTimePrintContext.getTemporal()).date(this.baseDate).get(this.field);
            }
            if (j7 >= i2) {
                int i7 = NumberPrinterParser.EXCEED_POINTS[this.minWidth];
                if (j7 < i2 + i7) {
                    return abs % i7;
                }
            }
            return abs % NumberPrinterParser.EXCEED_POINTS[this.maxWidth];
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        public boolean isFixedWidth(DateTimeParseContext dateTimeParseContext) {
            if (dateTimeParseContext.isStrict()) {
                return super.isFixedWidth(dateTimeParseContext);
            }
            return false;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        public int setValue(DateTimeParseContext dateTimeParseContext, long j7, int i2, int i7) {
            ReducedPrinterParser reducedPrinterParser;
            DateTimeParseContext dateTimeParseContext2;
            long j8;
            int i8;
            int i9;
            long j9;
            int i10 = this.baseValue;
            if (this.baseDate != null) {
                i10 = dateTimeParseContext.getEffectiveChronology().date(this.baseDate).get(this.field);
                reducedPrinterParser = this;
                dateTimeParseContext2 = dateTimeParseContext;
                j8 = j7;
                i8 = i2;
                i9 = i7;
                dateTimeParseContext2.addChronologyChangedParser(reducedPrinterParser, j8, i8, i9);
            } else {
                reducedPrinterParser = this;
                dateTimeParseContext2 = dateTimeParseContext;
                j8 = j7;
                i8 = i2;
                i9 = i7;
            }
            int i11 = i9 - i8;
            int i12 = reducedPrinterParser.minWidth;
            if (i11 != i12 || j8 < 0) {
                j9 = j8;
            } else {
                long j10 = NumberPrinterParser.EXCEED_POINTS[i12];
                long j11 = i10;
                long j12 = j11 - (j11 % j10);
                long j13 = i10 > 0 ? j12 + j8 : j12 - j8;
                j9 = j13 < j11 ? j10 + j13 : j13;
            }
            return dateTimeParseContext2.setParsedField(reducedPrinterParser.field, j9, i8, i9);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        public String toString() {
            StringBuilder sb = new StringBuilder("ReducedValue(");
            sb.append(this.field);
            sb.append(",");
            sb.append(this.minWidth);
            sb.append(",");
            sb.append(this.maxWidth);
            sb.append(",");
            Object obj = this.baseDate;
            if (obj == null) {
                obj = Integer.valueOf(this.baseValue);
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        public NumberPrinterParser withFixedWidth() {
            return this.subsequentWidth == -1 ? this : new ReducedPrinterParser(this.field, this.minWidth, this.maxWidth, this.baseValue, this.baseDate, -1);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.NumberPrinterParser
        public ReducedPrinterParser withSubsequentWidth(int i2) {
            return new ReducedPrinterParser(this.field, this.minWidth, this.maxWidth, this.baseValue, this.baseDate, this.subsequentWidth + i2);
        }

        private ReducedPrinterParser(TemporalField temporalField, int i2, int i7, int i8, ChronoLocalDate chronoLocalDate, int i9) {
            super(temporalField, i2, i7, SignStyle.NOT_NEGATIVE, i9);
            this.baseValue = i8;
            this.baseDate = chronoLocalDate;
        }
    }

    public enum SettingsParser implements DateTimePrinterParser {
        SENSITIVE,
        INSENSITIVE,
        STRICT,
        LENIENT;

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            int ordinal = ordinal();
            if (ordinal == 0) {
                dateTimeParseContext.setCaseSensitive(true);
                return i2;
            }
            if (ordinal == 1) {
                dateTimeParseContext.setCaseSensitive(false);
                return i2;
            }
            if (ordinal == 2) {
                dateTimeParseContext.setStrict(true);
                return i2;
            }
            if (ordinal != 3) {
                return i2;
            }
            dateTimeParseContext.setStrict(false);
            return i2;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            return true;
        }

        @Override // java.lang.Enum
        public String toString() {
            int ordinal = ordinal();
            if (ordinal == 0) {
                return "ParseCaseSensitive(true)";
            }
            if (ordinal == 1) {
                return "ParseCaseSensitive(false)";
            }
            if (ordinal == 2) {
                return "ParseStrict(true)";
            }
            if (ordinal == 3) {
                return "ParseStrict(false)";
            }
            throw new IllegalStateException("Unreachable");
        }
    }

    public static final class StringLiteralPrinterParser implements DateTimePrinterParser {
        private final String literal;

        public StringLiteralPrinterParser(String str) {
            this.literal = str;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            if (i2 > charSequence.length() || i2 < 0) {
                throw new IndexOutOfBoundsException();
            }
            String str = this.literal;
            return !dateTimeParseContext.subSequenceEquals(charSequence, i2, str, 0, str.length()) ? ~i2 : this.literal.length() + i2;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            sb.append(this.literal);
            return true;
        }

        public String toString() {
            return i.l("'", this.literal.replace("'", "''"), "'");
        }
    }

    public static final class TextPrinterParser implements DateTimePrinterParser {
        private final TemporalField field;
        private volatile NumberPrinterParser numberPrinterParser;
        private final DateTimeTextProvider provider;
        private final TextStyle textStyle;

        public TextPrinterParser(TemporalField temporalField, TextStyle textStyle, DateTimeTextProvider dateTimeTextProvider) {
            this.field = temporalField;
            this.textStyle = textStyle;
            this.provider = dateTimeTextProvider;
        }

        private NumberPrinterParser numberPrinterParser() {
            if (this.numberPrinterParser == null) {
                this.numberPrinterParser = new NumberPrinterParser(this.field, 1, 19, SignStyle.NORMAL);
            }
            return this.numberPrinterParser;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            DateTimeParseContext dateTimeParseContext2;
            CharSequence charSequence2;
            int i7;
            int length = charSequence.length();
            if (i2 < 0 || i2 > length) {
                throw new IndexOutOfBoundsException();
            }
            Iterator<Map.Entry<String, Long>> textIterator = this.provider.getTextIterator(this.field, dateTimeParseContext.isStrict() ? this.textStyle : null, dateTimeParseContext.getLocale());
            if (textIterator != null) {
                while (textIterator.hasNext()) {
                    Map.Entry<String, Long> next = textIterator.next();
                    String key = next.getKey();
                    DateTimeParseContext dateTimeParseContext3 = dateTimeParseContext;
                    CharSequence charSequence3 = charSequence;
                    int i8 = i2;
                    if (dateTimeParseContext3.subSequenceEquals(key, 0, charSequence3, i8, key.length())) {
                        return dateTimeParseContext3.setParsedField(this.field, next.getValue().longValue(), i8, key.length() + i8);
                    }
                    dateTimeParseContext = dateTimeParseContext3;
                    charSequence = charSequence3;
                    i2 = i8;
                }
                dateTimeParseContext2 = dateTimeParseContext;
                charSequence2 = charSequence;
                i7 = i2;
                if (dateTimeParseContext2.isStrict()) {
                    return ~i7;
                }
            } else {
                dateTimeParseContext2 = dateTimeParseContext;
                charSequence2 = charSequence;
                i7 = i2;
            }
            return numberPrinterParser().parse(dateTimeParseContext2, charSequence2, i7);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            Long value = dateTimePrintContext.getValue(this.field);
            if (value == null) {
                return false;
            }
            String text = this.provider.getText(this.field, value.longValue(), this.textStyle, dateTimePrintContext.getLocale());
            if (text == null) {
                return numberPrinterParser().print(dateTimePrintContext, sb);
            }
            sb.append(text);
            return true;
        }

        public String toString() {
            if (this.textStyle == TextStyle.FULL) {
                return "Text(" + this.field + ")";
            }
            return "Text(" + this.field + "," + this.textStyle + ")";
        }
    }

    public static final class WeekFieldsPrinterParser implements DateTimePrinterParser {
        private final int count;
        private final char letter;

        public WeekFieldsPrinterParser(char c7, int i2) {
            this.letter = c7;
            this.count = i2;
        }

        private DateTimePrinterParser evaluate(WeekFields weekFields) {
            char c7 = this.letter;
            if (c7 == 'W') {
                return new NumberPrinterParser(weekFields.weekOfMonth(), 1, 2, SignStyle.NOT_NEGATIVE);
            }
            if (c7 == 'Y') {
                if (this.count == 2) {
                    return new ReducedPrinterParser(weekFields.weekBasedYear(), 2, 2, 0, ReducedPrinterParser.BASE_DATE);
                }
                TemporalField weekBasedYear = weekFields.weekBasedYear();
                int i2 = this.count;
                return new NumberPrinterParser(weekBasedYear, i2, 19, i2 < 4 ? SignStyle.NORMAL : SignStyle.EXCEEDS_PAD, -1);
            }
            if (c7 == 'c') {
                return new NumberPrinterParser(weekFields.dayOfWeek(), this.count, 2, SignStyle.NOT_NEGATIVE);
            }
            if (c7 == 'e') {
                return new NumberPrinterParser(weekFields.dayOfWeek(), this.count, 2, SignStyle.NOT_NEGATIVE);
            }
            if (c7 != 'w') {
                return null;
            }
            return new NumberPrinterParser(weekFields.weekOfWeekBasedYear(), this.count, 2, SignStyle.NOT_NEGATIVE);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            return evaluate(WeekFields.of(dateTimeParseContext.getLocale())).parse(dateTimeParseContext, charSequence, i2);
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            return evaluate(WeekFields.of(dateTimePrintContext.getLocale())).print(dateTimePrintContext, sb);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Localized(");
            char c7 = this.letter;
            if (c7 == 'Y') {
                int i2 = this.count;
                if (i2 == 1) {
                    sb.append("WeekBasedYear");
                } else if (i2 == 2) {
                    sb.append("ReducedValue(WeekBasedYear,2,2,2000-01-01)");
                } else {
                    sb.append("WeekBasedYear,");
                    sb.append(this.count);
                    sb.append(",19,");
                    sb.append(this.count < 4 ? SignStyle.NORMAL : SignStyle.EXCEEDS_PAD);
                }
            } else {
                if (c7 == 'c' || c7 == 'e') {
                    sb.append("DayOfWeek");
                } else if (c7 == 'w') {
                    sb.append("WeekOfWeekBasedYear");
                } else if (c7 == 'W') {
                    sb.append("WeekOfMonth");
                }
                sb.append(",");
                sb.append(this.count);
            }
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class ZoneIdPrinterParser implements DateTimePrinterParser {
        private static volatile Map.Entry<Integer, SubstringTree> cachedSubstringTree;
        private final String description;
        private final TemporalQuery<ZoneId> query;

        public static final class SubstringTree {
            final int length;
            private final Map<CharSequence, SubstringTree> substringMap;
            private final Map<String, SubstringTree> substringMapCI;

            /* JADX INFO: Access modifiers changed from: private */
            public void add(String str) {
                int length = str.length();
                int i2 = this.length;
                if (length == i2) {
                    this.substringMap.put(str, null);
                    this.substringMapCI.put(str.toLowerCase(Locale.ENGLISH), null);
                } else if (length > i2) {
                    String substring = str.substring(0, i2);
                    SubstringTree substringTree = this.substringMap.get(substring);
                    if (substringTree == null) {
                        substringTree = new SubstringTree(length);
                        this.substringMap.put(substring, substringTree);
                        this.substringMapCI.put(substring.toLowerCase(Locale.ENGLISH), substringTree);
                    }
                    substringTree.add(str);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public SubstringTree get(CharSequence charSequence, boolean z6) {
                return z6 ? this.substringMap.get(charSequence) : this.substringMapCI.get(charSequence.toString().toLowerCase(Locale.ENGLISH));
            }

            private SubstringTree(int i2) {
                this.substringMap = new HashMap();
                this.substringMapCI = new HashMap();
                this.length = i2;
            }
        }

        public ZoneIdPrinterParser(TemporalQuery<ZoneId> temporalQuery, String str) {
            this.query = temporalQuery;
            this.description = str;
        }

        private ZoneId convertToZone(Set<String> set, String str, boolean z6) {
            if (str == null) {
                return null;
            }
            if (z6) {
                if (set.contains(str)) {
                    return ZoneId.of(str);
                }
                return null;
            }
            for (String str2 : set) {
                if (str2.equalsIgnoreCase(str)) {
                    return ZoneId.of(str2);
                }
            }
            return null;
        }

        private int parsePrefixedOffset(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2, int i7) {
            String upperCase = charSequence.subSequence(i2, i7).toString().toUpperCase();
            DateTimeParseContext copy = dateTimeParseContext.copy();
            if (i7 < charSequence.length() && dateTimeParseContext.charEquals(charSequence.charAt(i7), 'Z')) {
                dateTimeParseContext.setParsed(ZoneId.ofOffset(upperCase, ZoneOffset.UTC));
                return i7;
            }
            int parse = OffsetIdPrinterParser.INSTANCE_ID.parse(copy, charSequence, i7);
            if (parse < 0) {
                dateTimeParseContext.setParsed(ZoneId.ofOffset(upperCase, ZoneOffset.UTC));
                return i7;
            }
            dateTimeParseContext.setParsed(ZoneId.ofOffset(upperCase, ZoneOffset.ofTotalSeconds((int) copy.getParsed(ChronoField.OFFSET_SECONDS).longValue())));
            return parse;
        }

        private static SubstringTree prepareParser(Set<String> set) {
            ArrayList arrayList = new ArrayList(set);
            Collections.sort(arrayList, DateTimeFormatterBuilder.LENGTH_SORT);
            SubstringTree substringTree = new SubstringTree(((String) arrayList.get(0)).length());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                substringTree.add((String) it.next());
            }
            return substringTree;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            int i7;
            int length = charSequence.length();
            if (i2 > length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == length) {
                return ~i2;
            }
            char charAt = charSequence.charAt(i2);
            if (charAt == '+' || charAt == '-') {
                DateTimeParseContext copy = dateTimeParseContext.copy();
                int parse = OffsetIdPrinterParser.INSTANCE_ID.parse(copy, charSequence, i2);
                if (parse < 0) {
                    return parse;
                }
                dateTimeParseContext.setParsed(ZoneOffset.ofTotalSeconds((int) copy.getParsed(ChronoField.OFFSET_SECONDS).longValue()));
                return parse;
            }
            int i8 = i2 + 2;
            if (length >= i8) {
                char charAt2 = charSequence.charAt(i2 + 1);
                if (dateTimeParseContext.charEquals(charAt, 'U') && dateTimeParseContext.charEquals(charAt2, 'T')) {
                    int i9 = i2 + 3;
                    return (length < i9 || !dateTimeParseContext.charEquals(charSequence.charAt(i8), 'C')) ? parsePrefixedOffset(dateTimeParseContext, charSequence, i2, i8) : parsePrefixedOffset(dateTimeParseContext, charSequence, i2, i9);
                }
                if (dateTimeParseContext.charEquals(charAt, 'G') && length >= (i7 = i2 + 3) && dateTimeParseContext.charEquals(charAt2, 'M') && dateTimeParseContext.charEquals(charSequence.charAt(i8), 'T')) {
                    return parsePrefixedOffset(dateTimeParseContext, charSequence, i2, i7);
                }
            }
            Set<String> availableZoneIds = ZoneRulesProvider.getAvailableZoneIds();
            int size = availableZoneIds.size();
            Map.Entry<Integer, SubstringTree> entry = cachedSubstringTree;
            if (entry == null || entry.getKey().intValue() != size) {
                synchronized (this) {
                    try {
                        entry = cachedSubstringTree;
                        if (entry != null) {
                            if (entry.getKey().intValue() != size) {
                            }
                        }
                        entry = new AbstractMap.SimpleImmutableEntry<>(Integer.valueOf(size), prepareParser(availableZoneIds));
                        cachedSubstringTree = entry;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            SubstringTree value = entry.getValue();
            String str = null;
            String str2 = null;
            while (value != null) {
                int i10 = value.length + i2;
                if (i10 > length) {
                    break;
                }
                String charSequence2 = charSequence.subSequence(i2, i10).toString();
                value = value.get(charSequence2, dateTimeParseContext.isCaseSensitive());
                str2 = str;
                str = charSequence2;
            }
            ZoneId convertToZone = convertToZone(availableZoneIds, str, dateTimeParseContext.isCaseSensitive());
            if (convertToZone == null) {
                convertToZone = convertToZone(availableZoneIds, str2, dateTimeParseContext.isCaseSensitive());
                if (convertToZone == null) {
                    if (!dateTimeParseContext.charEquals(charAt, 'Z')) {
                        return ~i2;
                    }
                    dateTimeParseContext.setParsed(ZoneOffset.UTC);
                    return i2 + 1;
                }
                str = str2;
            }
            dateTimeParseContext.setParsed(convertToZone);
            return str.length() + i2;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            ZoneId zoneId = (ZoneId) dateTimePrintContext.getValue(this.query);
            if (zoneId == null) {
                return false;
            }
            sb.append(zoneId.getId());
            return true;
        }

        public String toString() {
            return this.description;
        }
    }

    public static final class ZoneTextPrinterParser implements DateTimePrinterParser {
        private static final Comparator<String> LENGTH_COMPARATOR = new Comparator<String>() { // from class: org.threeten.bp.format.DateTimeFormatterBuilder.ZoneTextPrinterParser.1
            @Override // java.util.Comparator
            public int compare(String str, String str2) {
                int length = str2.length() - str.length();
                return length == 0 ? str.compareTo(str2) : length;
            }
        };
        private final TextStyle textStyle;

        public ZoneTextPrinterParser(TextStyle textStyle) {
            this.textStyle = (TextStyle) Jdk8Methods.requireNonNull(textStyle, "textStyle");
        }

        private int parseOffset(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2, String str) {
            int length = str.length();
            int i7 = i2 + length;
            if (i7 >= charSequence.length()) {
                dateTimeParseContext.setParsed(ZoneId.of(str));
                return i7;
            }
            char charAt = charSequence.charAt(i7);
            if (charAt != '+' && charAt != '-') {
                dateTimeParseContext.setParsed(ZoneId.of(str));
                return i7;
            }
            DateTimeParseContext copy = dateTimeParseContext.copy();
            try {
                int parse = OffsetIdPrinterParser.INSTANCE_ID_ZERO.parse(copy, charSequence, i7);
                if (parse < 0) {
                    dateTimeParseContext.setParsed(ZoneId.of(str));
                    return i7;
                }
                ZoneOffset ofTotalSeconds = ZoneOffset.ofTotalSeconds((int) copy.getParsed(ChronoField.OFFSET_SECONDS).longValue());
                dateTimeParseContext.setParsed(length == 0 ? ofTotalSeconds : ZoneId.ofOffset(str, ofTotalSeconds));
                return parse;
            } catch (DateTimeException unused) {
                return ~i2;
            }
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public int parse(DateTimeParseContext dateTimeParseContext, CharSequence charSequence, int i2) {
            int length = charSequence.length();
            if (i2 > length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == length) {
                return ~i2;
            }
            char charAt = charSequence.charAt(i2);
            if (charAt == '+' || charAt == '-') {
                return i2 + 6 > length ? ~i2 : parseOffset(dateTimeParseContext, charSequence, i2, "");
            }
            if (dateTimeParseContext.subSequenceEquals(charSequence, i2, TimeZones.GMT_ID, 0, 3)) {
                return parseOffset(dateTimeParseContext, charSequence, i2, TimeZones.GMT_ID);
            }
            if (dateTimeParseContext.subSequenceEquals(charSequence, i2, "UTC", 0, 3)) {
                return parseOffset(dateTimeParseContext, charSequence, i2, "UTC");
            }
            if (dateTimeParseContext.subSequenceEquals(charSequence, i2, "UT", 0, 2)) {
                return parseOffset(dateTimeParseContext, charSequence, i2, "UT");
            }
            TreeMap treeMap = new TreeMap(LENGTH_COMPARATOR);
            for (String str : ZoneId.getAvailableZoneIds()) {
                treeMap.put(str, str);
                TimeZone timeZone = TimeZone.getTimeZone(str);
                int i7 = this.textStyle.asNormal() == TextStyle.FULL ? 1 : 0;
                String displayName = timeZone.getDisplayName(false, i7, dateTimeParseContext.getLocale());
                if (str.startsWith("Etc/") || (!displayName.startsWith("GMT+") && !displayName.startsWith("GMT+"))) {
                    treeMap.put(displayName, str);
                }
                String displayName2 = timeZone.getDisplayName(true, i7, dateTimeParseContext.getLocale());
                if (str.startsWith("Etc/") || (!displayName2.startsWith("GMT+") && !displayName2.startsWith("GMT+"))) {
                    treeMap.put(displayName2, str);
                }
            }
            for (Map.Entry entry : treeMap.entrySet()) {
                String str2 = (String) entry.getKey();
                if (dateTimeParseContext.subSequenceEquals(charSequence, i2, str2, 0, str2.length())) {
                    dateTimeParseContext.setParsed(ZoneId.of((String) entry.getValue()));
                    return str2.length() + i2;
                }
            }
            if (charAt != 'Z') {
                return ~i2;
            }
            dateTimeParseContext.setParsed(ZoneOffset.UTC);
            return i2 + 1;
        }

        @Override // org.threeten.bp.format.DateTimeFormatterBuilder.DateTimePrinterParser
        public boolean print(DateTimePrintContext dateTimePrintContext, StringBuilder sb) {
            ZoneId zoneId = (ZoneId) dateTimePrintContext.getValue(TemporalQueries.zoneId());
            if (zoneId == null) {
                return false;
            }
            if (zoneId.normalized() instanceof ZoneOffset) {
                sb.append(zoneId.getId());
                return true;
            }
            TemporalAccessor temporal = dateTimePrintContext.getTemporal();
            ChronoField chronoField = ChronoField.INSTANT_SECONDS;
            sb.append(TimeZone.getTimeZone(zoneId.getId()).getDisplayName(temporal.isSupported(chronoField) ? zoneId.getRules().isDaylightSavings(Instant.ofEpochSecond(temporal.getLong(chronoField))) : false, this.textStyle.asNormal() == TextStyle.FULL ? 1 : 0, dateTimePrintContext.getLocale()));
            return true;
        }

        public String toString() {
            return "ZoneText(" + this.textStyle + ")";
        }
    }

    static {
        HashMap hashMap = new HashMap();
        FIELD_MAP = hashMap;
        hashMap.put('G', ChronoField.ERA);
        hashMap.put('y', ChronoField.YEAR_OF_ERA);
        hashMap.put('u', ChronoField.YEAR);
        TemporalField temporalField = IsoFields.QUARTER_OF_YEAR;
        hashMap.put('Q', temporalField);
        hashMap.put('q', temporalField);
        ChronoField chronoField = ChronoField.MONTH_OF_YEAR;
        hashMap.put('M', chronoField);
        hashMap.put('L', chronoField);
        hashMap.put('D', ChronoField.DAY_OF_YEAR);
        hashMap.put('d', ChronoField.DAY_OF_MONTH);
        hashMap.put('F', ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        ChronoField chronoField2 = ChronoField.DAY_OF_WEEK;
        hashMap.put('E', chronoField2);
        hashMap.put('c', chronoField2);
        hashMap.put('e', chronoField2);
        hashMap.put('a', ChronoField.AMPM_OF_DAY);
        hashMap.put('H', ChronoField.HOUR_OF_DAY);
        hashMap.put('k', ChronoField.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', ChronoField.HOUR_OF_AMPM);
        hashMap.put('h', ChronoField.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', ChronoField.MINUTE_OF_HOUR);
        hashMap.put('s', ChronoField.SECOND_OF_MINUTE);
        ChronoField chronoField3 = ChronoField.NANO_OF_SECOND;
        hashMap.put('S', chronoField3);
        hashMap.put('A', ChronoField.MILLI_OF_DAY);
        hashMap.put('n', chronoField3);
        hashMap.put('N', ChronoField.NANO_OF_DAY);
        LENGTH_SORT = new Comparator<String>() { // from class: org.threeten.bp.format.DateTimeFormatterBuilder.3
            @Override // java.util.Comparator
            public int compare(String str, String str2) {
                return str.length() == str2.length() ? str.compareTo(str2) : str.length() - str2.length();
            }
        };
    }

    public DateTimeFormatterBuilder() {
        this.active = this;
        this.printerParsers = new ArrayList();
        this.valueParserIndex = -1;
        this.parent = null;
        this.optional = false;
    }

    private int appendInternal(DateTimePrinterParser dateTimePrinterParser) {
        Jdk8Methods.requireNonNull(dateTimePrinterParser, "pp");
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.active;
        int i2 = dateTimeFormatterBuilder.padNextWidth;
        if (i2 > 0) {
            if (dateTimePrinterParser != null) {
                dateTimePrinterParser = new PadPrinterParserDecorator(dateTimePrinterParser, i2, dateTimeFormatterBuilder.padNextChar);
            }
            DateTimeFormatterBuilder dateTimeFormatterBuilder2 = this.active;
            dateTimeFormatterBuilder2.padNextWidth = 0;
            dateTimeFormatterBuilder2.padNextChar = (char) 0;
        }
        this.active.printerParsers.add(dateTimePrinterParser);
        this.active.valueParserIndex = -1;
        return r4.printerParsers.size() - 1;
    }

    public static String getLocalizedDateTimePattern(FormatStyle formatStyle, FormatStyle formatStyle2, Chronology chronology, Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        Jdk8Methods.requireNonNull(chronology, "chrono");
        if (formatStyle == null && formatStyle2 == null) {
            throw new IllegalArgumentException("Either dateStyle or timeStyle must be non-null");
        }
        DateFormat dateTimeInstance = formatStyle != null ? formatStyle2 != null ? DateFormat.getDateTimeInstance(formatStyle.ordinal(), formatStyle2.ordinal(), locale) : DateFormat.getDateInstance(formatStyle.ordinal(), locale) : DateFormat.getTimeInstance(formatStyle2.ordinal(), locale);
        if (dateTimeInstance instanceof SimpleDateFormat) {
            return ((SimpleDateFormat) dateTimeInstance).toPattern();
        }
        throw new IllegalArgumentException("Unable to determine pattern");
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseField(char r8, int r9, org.threeten.bp.temporal.TemporalField r10) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.bp.format.DateTimeFormatterBuilder.parseField(char, int, org.threeten.bp.temporal.TemporalField):void");
    }

    private void parsePattern(String str) {
        int i2;
        int i7 = 0;
        while (i7 < str.length()) {
            char charAt = str.charAt(i7);
            if ((charAt >= 'A' && charAt <= 'Z') || (charAt >= 'a' && charAt <= 'z')) {
                int i8 = i7 + 1;
                while (i8 < str.length() && str.charAt(i8) == charAt) {
                    i8++;
                }
                int i9 = i8 - i7;
                if (charAt == 'p') {
                    if (i8 >= str.length() || (((charAt = str.charAt(i8)) < 'A' || charAt > 'Z') && (charAt < 'a' || charAt > 'z'))) {
                        i2 = i9;
                        i9 = 0;
                    } else {
                        int i10 = i8 + 1;
                        while (i10 < str.length() && str.charAt(i10) == charAt) {
                            i10++;
                        }
                        i2 = i10 - i8;
                        i8 = i10;
                    }
                    if (i9 == 0) {
                        throw new IllegalArgumentException("Pad letter 'p' must be followed by valid pad pattern: ".concat(str));
                    }
                    padNext(i9);
                    i9 = i2;
                }
                TemporalField temporalField = FIELD_MAP.get(Character.valueOf(charAt));
                if (temporalField != null) {
                    parseField(charAt, i9, temporalField);
                } else if (charAt == 'z') {
                    if (i9 > 4) {
                        throw new IllegalArgumentException(i.h("Too many pattern letters: ", charAt));
                    }
                    if (i9 == 4) {
                        appendZoneText(TextStyle.FULL);
                    } else {
                        appendZoneText(TextStyle.SHORT);
                    }
                } else if (charAt != 'V') {
                    String str2 = "+0000";
                    if (charAt == 'Z') {
                        if (i9 < 4) {
                            appendOffset("+HHMM", "+0000");
                        } else if (i9 == 4) {
                            appendLocalizedOffset(TextStyle.FULL);
                        } else {
                            if (i9 != 5) {
                                throw new IllegalArgumentException(i.h("Too many pattern letters: ", charAt));
                            }
                            appendOffset("+HH:MM:ss", "Z");
                        }
                    } else if (charAt == 'O') {
                        if (i9 == 1) {
                            appendLocalizedOffset(TextStyle.SHORT);
                        } else {
                            if (i9 != 4) {
                                throw new IllegalArgumentException(i.h("Pattern letter count must be 1 or 4: ", charAt));
                            }
                            appendLocalizedOffset(TextStyle.FULL);
                        }
                    } else if (charAt == 'X') {
                        if (i9 > 5) {
                            throw new IllegalArgumentException(i.h("Too many pattern letters: ", charAt));
                        }
                        appendOffset(OffsetIdPrinterParser.PATTERNS[i9 + (i9 == 1 ? 0 : 1)], "Z");
                    } else if (charAt == 'x') {
                        if (i9 > 5) {
                            throw new IllegalArgumentException(i.h("Too many pattern letters: ", charAt));
                        }
                        if (i9 == 1) {
                            str2 = "+00";
                        } else if (i9 % 2 != 0) {
                            str2 = "+00:00";
                        }
                        appendOffset(OffsetIdPrinterParser.PATTERNS[i9 + (i9 == 1 ? 0 : 1)], str2);
                    } else if (charAt == 'W') {
                        if (i9 > 1) {
                            throw new IllegalArgumentException(i.h("Too many pattern letters: ", charAt));
                        }
                        appendInternal(new WeekFieldsPrinterParser('W', i9));
                    } else if (charAt == 'w') {
                        if (i9 > 2) {
                            throw new IllegalArgumentException(i.h("Too many pattern letters: ", charAt));
                        }
                        appendInternal(new WeekFieldsPrinterParser('w', i9));
                    } else {
                        if (charAt != 'Y') {
                            throw new IllegalArgumentException(i.h("Unknown pattern letter: ", charAt));
                        }
                        appendInternal(new WeekFieldsPrinterParser('Y', i9));
                    }
                } else {
                    if (i9 != 2) {
                        throw new IllegalArgumentException(i.h("Pattern letter count must be 2: ", charAt));
                    }
                    appendZoneId();
                }
                i7 = i8 - 1;
            } else if (charAt == '\'') {
                int i11 = i7 + 1;
                int i12 = i11;
                while (i12 < str.length()) {
                    if (str.charAt(i12) == '\'') {
                        int i13 = i12 + 1;
                        if (i13 >= str.length() || str.charAt(i13) != '\'') {
                            break;
                        } else {
                            i12 = i13;
                        }
                    }
                    i12++;
                }
                if (i12 >= str.length()) {
                    throw new IllegalArgumentException("Pattern ends with an incomplete string literal: ".concat(str));
                }
                String substring = str.substring(i11, i12);
                if (substring.length() == 0) {
                    appendLiteral('\'');
                } else {
                    appendLiteral(substring.replace("''", "'"));
                }
                i7 = i12;
            } else if (charAt == '[') {
                optionalStart();
            } else if (charAt == ']') {
                if (this.active.parent == null) {
                    throw new IllegalArgumentException("Pattern invalid as it contains ] without previous [");
                }
                optionalEnd();
            } else {
                if (charAt == '{' || charAt == '}' || charAt == '#') {
                    throw new IllegalArgumentException("Pattern includes reserved character: '" + charAt + "'");
                }
                appendLiteral(charAt);
            }
            i7++;
        }
    }

    public DateTimeFormatterBuilder append(DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        appendInternal(dateTimeFormatter.toPrinterParser(false));
        return this;
    }

    public DateTimeFormatterBuilder appendChronologyId() {
        appendInternal(new ChronoPrinterParser(null));
        return this;
    }

    public DateTimeFormatterBuilder appendChronologyText(TextStyle textStyle) {
        Jdk8Methods.requireNonNull(textStyle, "textStyle");
        appendInternal(new ChronoPrinterParser(textStyle));
        return this;
    }

    public DateTimeFormatterBuilder appendFraction(TemporalField temporalField, int i2, int i7, boolean z6) {
        appendInternal(new FractionPrinterParser(temporalField, i2, i7, z6));
        return this;
    }

    public DateTimeFormatterBuilder appendInstant() {
        appendInternal(new InstantPrinterParser(-2));
        return this;
    }

    public DateTimeFormatterBuilder appendLiteral(char c7) {
        appendInternal(new CharLiteralPrinterParser(c7));
        return this;
    }

    public DateTimeFormatterBuilder appendLocalized(FormatStyle formatStyle, FormatStyle formatStyle2) {
        if (formatStyle == null && formatStyle2 == null) {
            throw new IllegalArgumentException("Either the date or time style must be non-null");
        }
        appendInternal(new LocalizedPrinterParser(formatStyle, formatStyle2));
        return this;
    }

    public DateTimeFormatterBuilder appendLocalizedOffset(TextStyle textStyle) {
        Jdk8Methods.requireNonNull(textStyle, "style");
        if (textStyle != TextStyle.FULL && textStyle != TextStyle.SHORT) {
            throw new IllegalArgumentException("Style must be either full or short");
        }
        appendInternal(new LocalizedOffsetPrinterParser(textStyle));
        return this;
    }

    public DateTimeFormatterBuilder appendOffset(String str, String str2) {
        appendInternal(new OffsetIdPrinterParser(str2, str));
        return this;
    }

    public DateTimeFormatterBuilder appendOffsetId() {
        appendInternal(OffsetIdPrinterParser.INSTANCE_ID);
        return this;
    }

    public DateTimeFormatterBuilder appendOptional(DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        appendInternal(dateTimeFormatter.toPrinterParser(true));
        return this;
    }

    public DateTimeFormatterBuilder appendPattern(String str) {
        Jdk8Methods.requireNonNull(str, "pattern");
        parsePattern(str);
        return this;
    }

    public DateTimeFormatterBuilder appendText(TemporalField temporalField) {
        return appendText(temporalField, TextStyle.FULL);
    }

    public DateTimeFormatterBuilder appendValue(TemporalField temporalField) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        appendValue(new NumberPrinterParser(temporalField, 1, 19, SignStyle.NORMAL));
        return this;
    }

    public DateTimeFormatterBuilder appendValueReduced(TemporalField temporalField, int i2, int i7, int i8) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        appendValue(new ReducedPrinterParser(temporalField, i2, i7, i8, null));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneId() {
        appendInternal(new ZoneIdPrinterParser(TemporalQueries.zoneId(), "ZoneId()"));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneOrOffsetId() {
        appendInternal(new ZoneIdPrinterParser(TemporalQueries.zone(), "ZoneOrOffsetId()"));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneRegionId() {
        appendInternal(new ZoneIdPrinterParser(QUERY_REGION_ONLY, "ZoneRegionId()"));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneText(TextStyle textStyle) {
        appendInternal(new ZoneTextPrinterParser(textStyle));
        return this;
    }

    public DateTimeFormatterBuilder optionalEnd() {
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.active;
        if (dateTimeFormatterBuilder.parent == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (dateTimeFormatterBuilder.printerParsers.size() <= 0) {
            this.active = this.active.parent;
            return this;
        }
        DateTimeFormatterBuilder dateTimeFormatterBuilder2 = this.active;
        CompositePrinterParser compositePrinterParser = new CompositePrinterParser(dateTimeFormatterBuilder2.printerParsers, dateTimeFormatterBuilder2.optional);
        this.active = this.active.parent;
        appendInternal(compositePrinterParser);
        return this;
    }

    public DateTimeFormatterBuilder optionalStart() {
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.active;
        dateTimeFormatterBuilder.valueParserIndex = -1;
        this.active = new DateTimeFormatterBuilder(dateTimeFormatterBuilder, true);
        return this;
    }

    public DateTimeFormatterBuilder padNext(int i2) {
        return padNext(i2, TokenParser.SP);
    }

    public DateTimeFormatterBuilder parseCaseInsensitive() {
        appendInternal(SettingsParser.INSENSITIVE);
        return this;
    }

    public DateTimeFormatterBuilder parseCaseSensitive() {
        appendInternal(SettingsParser.SENSITIVE);
        return this;
    }

    public DateTimeFormatterBuilder parseDefaulting(TemporalField temporalField, long j7) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        appendInternal(new DefaultingParser(temporalField, j7));
        return this;
    }

    public DateTimeFormatterBuilder parseLenient() {
        appendInternal(SettingsParser.LENIENT);
        return this;
    }

    public DateTimeFormatterBuilder parseStrict() {
        appendInternal(SettingsParser.STRICT);
        return this;
    }

    public DateTimeFormatter toFormatter() {
        return toFormatter(Locale.getDefault());
    }

    public DateTimeFormatterBuilder appendInstant(int i2) {
        if (i2 < -1 || i2 > 9) {
            throw new IllegalArgumentException(i.f(i2, "Invalid fractional digits: "));
        }
        appendInternal(new InstantPrinterParser(i2));
        return this;
    }

    public DateTimeFormatterBuilder appendLiteral(String str) {
        Jdk8Methods.requireNonNull(str, "literal");
        if (str.length() > 0) {
            if (str.length() == 1) {
                appendInternal(new CharLiteralPrinterParser(str.charAt(0)));
                return this;
            }
            appendInternal(new StringLiteralPrinterParser(str));
        }
        return this;
    }

    public DateTimeFormatterBuilder appendText(TemporalField temporalField, TextStyle textStyle) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        Jdk8Methods.requireNonNull(textStyle, "textStyle");
        appendInternal(new TextPrinterParser(temporalField, textStyle, DateTimeTextProvider.getInstance()));
        return this;
    }

    public DateTimeFormatterBuilder appendZoneText(TextStyle textStyle, Set<ZoneId> set) {
        Jdk8Methods.requireNonNull(set, "preferredZones");
        appendInternal(new ZoneTextPrinterParser(textStyle));
        return this;
    }

    public DateTimeFormatterBuilder padNext(int i2, char c7) {
        if (i2 < 1) {
            throw new IllegalArgumentException(i.f(i2, "The pad width must be at least one but was "));
        }
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.active;
        dateTimeFormatterBuilder.padNextWidth = i2;
        dateTimeFormatterBuilder.padNextChar = c7;
        dateTimeFormatterBuilder.valueParserIndex = -1;
        return this;
    }

    public DateTimeFormatter toFormatter(Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        while (this.active.parent != null) {
            optionalEnd();
        }
        return new DateTimeFormatter(new CompositePrinterParser(this.printerParsers, false), locale, DecimalStyle.STANDARD, ResolverStyle.SMART, null, null, null);
    }

    public DateTimeFormatterBuilder appendValue(TemporalField temporalField, int i2) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        if (i2 >= 1 && i2 <= 19) {
            appendValue(new NumberPrinterParser(temporalField, i2, i2, SignStyle.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException(i.f(i2, "The width must be from 1 to 19 inclusive but was "));
    }

    public DateTimeFormatterBuilder appendValueReduced(TemporalField temporalField, int i2, int i7, ChronoLocalDate chronoLocalDate) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        Jdk8Methods.requireNonNull(chronoLocalDate, "baseDate");
        appendValue(new ReducedPrinterParser(temporalField, i2, i7, 0, chronoLocalDate));
        return this;
    }

    public DateTimeFormatterBuilder appendText(TemporalField temporalField, Map<Long, String> map) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        Jdk8Methods.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        final SimpleDateTimeTextProvider.LocaleStore localeStore = new SimpleDateTimeTextProvider.LocaleStore(Collections.singletonMap(textStyle, linkedHashMap));
        appendInternal(new TextPrinterParser(temporalField, textStyle, new DateTimeTextProvider() { // from class: org.threeten.bp.format.DateTimeFormatterBuilder.2
            @Override // org.threeten.bp.format.DateTimeTextProvider
            public String getText(TemporalField temporalField2, long j7, TextStyle textStyle2, Locale locale) {
                return localeStore.getText(j7, textStyle2);
            }

            @Override // org.threeten.bp.format.DateTimeTextProvider
            public Iterator<Map.Entry<String, Long>> getTextIterator(TemporalField temporalField2, TextStyle textStyle2, Locale locale) {
                return localeStore.getTextIterator(textStyle2);
            }
        }));
        return this;
    }

    private DateTimeFormatterBuilder(DateTimeFormatterBuilder dateTimeFormatterBuilder, boolean z6) {
        this.active = this;
        this.printerParsers = new ArrayList();
        this.valueParserIndex = -1;
        this.parent = dateTimeFormatterBuilder;
        this.optional = z6;
    }

    public DateTimeFormatter toFormatter(ResolverStyle resolverStyle) {
        return toFormatter().withResolverStyle(resolverStyle);
    }

    public DateTimeFormatterBuilder appendValue(TemporalField temporalField, int i2, int i7, SignStyle signStyle) {
        if (i2 == i7 && signStyle == SignStyle.NOT_NEGATIVE) {
            return appendValue(temporalField, i7);
        }
        Jdk8Methods.requireNonNull(temporalField, "field");
        Jdk8Methods.requireNonNull(signStyle, "signStyle");
        if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException(i.f(i2, "The minimum width must be from 1 to 19 inclusive but was "));
        }
        if (i7 < 1 || i7 > 19) {
            throw new IllegalArgumentException(i.f(i7, "The maximum width must be from 1 to 19 inclusive but was "));
        }
        if (i7 >= i2) {
            appendValue(new NumberPrinterParser(temporalField, i2, i7, signStyle));
            return this;
        }
        throw new IllegalArgumentException(i.e(i7, i2, "The maximum width must exceed or equal the minimum width but ", " < "));
    }

    private DateTimeFormatterBuilder appendValue(NumberPrinterParser numberPrinterParser) {
        NumberPrinterParser withFixedWidth;
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.active;
        int i2 = dateTimeFormatterBuilder.valueParserIndex;
        if (i2 >= 0 && (dateTimeFormatterBuilder.printerParsers.get(i2) instanceof NumberPrinterParser)) {
            DateTimeFormatterBuilder dateTimeFormatterBuilder2 = this.active;
            int i7 = dateTimeFormatterBuilder2.valueParserIndex;
            NumberPrinterParser numberPrinterParser2 = (NumberPrinterParser) dateTimeFormatterBuilder2.printerParsers.get(i7);
            int i8 = numberPrinterParser.minWidth;
            int i9 = numberPrinterParser.maxWidth;
            if (i8 == i9 && numberPrinterParser.signStyle == SignStyle.NOT_NEGATIVE) {
                withFixedWidth = numberPrinterParser2.withSubsequentWidth(i9);
                appendInternal(numberPrinterParser.withFixedWidth());
                this.active.valueParserIndex = i7;
            } else {
                withFixedWidth = numberPrinterParser2.withFixedWidth();
                this.active.valueParserIndex = appendInternal(numberPrinterParser);
            }
            this.active.printerParsers.set(i7, withFixedWidth);
            return this;
        }
        this.active.valueParserIndex = appendInternal(numberPrinterParser);
        return this;
    }
}
