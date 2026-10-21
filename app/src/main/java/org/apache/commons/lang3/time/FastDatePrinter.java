package org.apache.commons.lang3.time;

import androidx.media3.exoplayer.ExoPlayer;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.lang3.exception.ExceptionUtils;

/* loaded from: classes2.dex */
public class FastDatePrinter implements DatePrinter, Serializable {
    public static final int FULL = 0;
    public static final int LONG = 1;
    private static final int MAX_DIGITS = 10;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final ConcurrentMap<TimeZoneDisplayKey, String> cTimeZoneDisplayCache = new ConcurrentHashMap(7);
    private static final long serialVersionUID = 1;
    private final Locale mLocale;
    private transient int mMaxLengthEstimate;
    private final String mPattern;
    private transient Rule[] mRules;
    private final TimeZone mTimeZone;

    public static class CharacterLiteral implements Rule {
        private final char mValue;

        public CharacterLiteral(char c7) {
            this.mValue = c7;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendable.append(this.mValue);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 1;
        }
    }

    public static class Iso8601_Rule implements Rule {
        final int length;
        static final Iso8601_Rule ISO8601_HOURS = new Iso8601_Rule(3);
        static final Iso8601_Rule ISO8601_HOURS_MINUTES = new Iso8601_Rule(5);
        static final Iso8601_Rule ISO8601_HOURS_COLON_MINUTES = new Iso8601_Rule(6);

        public Iso8601_Rule(int i2) {
            this.length = i2;
        }

        public static Iso8601_Rule getRule(int i2) {
            if (i2 == 1) {
                return ISO8601_HOURS;
            }
            if (i2 == 2) {
                return ISO8601_HOURS_MINUTES;
            }
            if (i2 == 3) {
                return ISO8601_HOURS_COLON_MINUTES;
            }
            throw new IllegalArgumentException("invalid number of X");
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i2 = calendar.get(16) + calendar.get(15);
            if (i2 == 0) {
                appendable.append("Z");
                return;
            }
            if (i2 < 0) {
                appendable.append('-');
                i2 = -i2;
            } else {
                appendable.append('+');
            }
            int i7 = i2 / 3600000;
            FastDatePrinter.appendDigits(appendable, i7);
            int i8 = this.length;
            if (i8 < 5) {
                return;
            }
            if (i8 == 6) {
                appendable.append(':');
            }
            FastDatePrinter.appendDigits(appendable, (i2 / ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS) - (i7 * 60));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.length;
        }
    }

    public interface NumberRule extends Rule {
        void appendTo(Appendable appendable, int i2) throws IOException;
    }

    public static class PaddedNumberField implements NumberRule {
        private final int mField;
        private final int mSize;

        public PaddedNumberField(int i2, int i7) {
            if (i7 < 3) {
                throw new IllegalArgumentException();
            }
            this.mField = i2;
            this.mSize = i7;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(this.mField));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mSize;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(Appendable appendable, int i2) throws IOException {
            FastDatePrinter.appendFullDigits(appendable, i2, this.mSize);
        }
    }

    public interface Rule {
        void appendTo(Appendable appendable, Calendar calendar) throws IOException;

        int estimateLength();
    }

    public static class StringLiteral implements Rule {
        private final String mValue;

        public StringLiteral(String str) {
            this.mValue = str;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendable.append(this.mValue);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mValue.length();
        }
    }

    public static class TextField implements Rule {
        private final int mField;
        private final String[] mValues;

        public TextField(int i2, String[] strArr) {
            this.mField = i2;
            this.mValues = strArr;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendable.append(this.mValues[calendar.get(this.mField)]);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            int length = this.mValues.length;
            int i2 = 0;
            while (true) {
                length--;
                if (length < 0) {
                    return i2;
                }
                int length2 = this.mValues[length].length();
                if (length2 > i2) {
                    i2 = length2;
                }
            }
        }
    }

    public static class TimeZoneDisplayKey {
        private final Locale mLocale;
        private final int mStyle;
        private final TimeZone mTimeZone;

        public TimeZoneDisplayKey(TimeZone timeZone, boolean z6, int i2, Locale locale) {
            this.mTimeZone = timeZone;
            if (z6) {
                this.mStyle = Integer.MIN_VALUE | i2;
            } else {
                this.mStyle = i2;
            }
            this.mLocale = locale;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TimeZoneDisplayKey) {
                TimeZoneDisplayKey timeZoneDisplayKey = (TimeZoneDisplayKey) obj;
                if (this.mTimeZone.equals(timeZoneDisplayKey.mTimeZone) && this.mStyle == timeZoneDisplayKey.mStyle && this.mLocale.equals(timeZoneDisplayKey.mLocale)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.mTimeZone.hashCode() + ((this.mLocale.hashCode() + (this.mStyle * 31)) * 31);
        }
    }

    public static class TimeZoneNameRule implements Rule {
        private final String mDaylight;
        private final Locale mLocale;
        private final String mStandard;
        private final int mStyle;

        public TimeZoneNameRule(TimeZone timeZone, Locale locale, int i2) {
            this.mLocale = locale;
            this.mStyle = i2;
            this.mStandard = FastDatePrinter.getTimeZoneDisplay(timeZone, false, i2, locale);
            this.mDaylight = FastDatePrinter.getTimeZoneDisplay(timeZone, true, i2, locale);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            TimeZone timeZone = calendar.getTimeZone();
            if (calendar.get(16) == 0) {
                appendable.append(FastDatePrinter.getTimeZoneDisplay(timeZone, false, this.mStyle, this.mLocale));
            } else {
                appendable.append(FastDatePrinter.getTimeZoneDisplay(timeZone, true, this.mStyle, this.mLocale));
            }
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return Math.max(this.mStandard.length(), this.mDaylight.length());
        }
    }

    public static class TimeZoneNumberRule implements Rule {
        static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true);
        static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false);
        final boolean mColon;

        public TimeZoneNumberRule(boolean z6) {
            this.mColon = z6;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i2 = calendar.get(16) + calendar.get(15);
            if (i2 < 0) {
                appendable.append('-');
                i2 = -i2;
            } else {
                appendable.append('+');
            }
            int i7 = i2 / 3600000;
            FastDatePrinter.appendDigits(appendable, i7);
            if (this.mColon) {
                appendable.append(':');
            }
            FastDatePrinter.appendDigits(appendable, (i2 / ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS) - (i7 * 60));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 5;
        }
    }

    public static class TwoDigitMonthField implements NumberRule {
        static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(Appendable appendable, int i2) throws IOException {
            FastDatePrinter.appendDigits(appendable, i2);
        }
    }

    public static class TwoDigitNumberField implements NumberRule {
        private final int mField;

        public TwoDigitNumberField(int i2) {
            this.mField = i2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(this.mField));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(Appendable appendable, int i2) throws IOException {
            if (i2 < 100) {
                FastDatePrinter.appendDigits(appendable, i2);
            } else {
                FastDatePrinter.appendFullDigits(appendable, i2, 2);
            }
        }
    }

    public static class TwoDigitYearField implements NumberRule {
        static final TwoDigitYearField INSTANCE = new TwoDigitYearField();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(1) % 100);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(Appendable appendable, int i2) throws IOException {
            FastDatePrinter.appendDigits(appendable, i2);
        }
    }

    public static class UnpaddedMonthField implements NumberRule {
        static final UnpaddedMonthField INSTANCE = new UnpaddedMonthField();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(Appendable appendable, int i2) throws IOException {
            if (i2 < 10) {
                appendable.append((char) (i2 + 48));
            } else {
                FastDatePrinter.appendDigits(appendable, i2);
            }
        }
    }

    public static class UnpaddedNumberField implements NumberRule {
        private final int mField;

        public UnpaddedNumberField(int i2) {
            this.mField = i2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            appendTo(appendable, calendar.get(this.mField));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 4;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(Appendable appendable, int i2) throws IOException {
            if (i2 < 10) {
                appendable.append((char) (i2 + 48));
            } else if (i2 < 100) {
                FastDatePrinter.appendDigits(appendable, i2);
            } else {
                FastDatePrinter.appendFullDigits(appendable, i2, 1);
            }
        }
    }

    public static class WeekYear implements NumberRule {
        private final NumberRule mRule;

        public WeekYear(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int weekYear;
            NumberRule numberRule = this.mRule;
            weekYear = calendar.getWeekYear();
            numberRule.appendTo(appendable, weekYear);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public void appendTo(Appendable appendable, int i2) throws IOException {
            this.mRule.appendTo(appendable, i2);
        }
    }

    public FastDatePrinter(String str, TimeZone timeZone, Locale locale) {
        this.mPattern = str;
        this.mTimeZone = timeZone;
        this.mLocale = locale;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void appendDigits(Appendable appendable, int i2) throws IOException {
        appendable.append((char) ((i2 / 10) + 48));
        appendable.append((char) ((i2 % 10) + 48));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void appendFullDigits(Appendable appendable, int i2, int i7) throws IOException {
        if (i2 < 10000) {
            int i8 = i2 < 1000 ? i2 < 100 ? i2 < 10 ? 1 : 2 : 3 : 4;
            for (int i9 = i7 - i8; i9 > 0; i9--) {
                appendable.append('0');
            }
            if (i8 != 1) {
                if (i8 != 2) {
                    if (i8 != 3) {
                        if (i8 != 4) {
                            return;
                        }
                        appendable.append((char) ((i2 / 1000) + 48));
                        i2 %= 1000;
                    }
                    if (i2 >= 100) {
                        appendable.append((char) ((i2 / 100) + 48));
                        i2 %= 100;
                    } else {
                        appendable.append('0');
                    }
                }
                if (i2 >= 10) {
                    appendable.append((char) ((i2 / 10) + 48));
                    i2 %= 10;
                } else {
                    appendable.append('0');
                }
            }
            appendable.append((char) (i2 + 48));
            return;
        }
        char[] cArr = new char[10];
        int i10 = 0;
        while (i2 != 0) {
            cArr[i10] = (char) ((i2 % 10) + 48);
            i2 /= 10;
            i10++;
        }
        while (i10 < i7) {
            appendable.append('0');
            i7--;
        }
        while (true) {
            i10--;
            if (i10 < 0) {
                return;
            } else {
                appendable.append(cArr[i10]);
            }
        }
    }

    private String applyRulesToString(Calendar calendar) {
        return ((StringBuilder) applyRules(calendar, (Calendar) new StringBuilder(this.mMaxLengthEstimate))).toString();
    }

    public static String getTimeZoneDisplay(TimeZone timeZone, boolean z6, int i2, Locale locale) {
        TimeZoneDisplayKey timeZoneDisplayKey = new TimeZoneDisplayKey(timeZone, z6, i2, locale);
        ConcurrentMap<TimeZoneDisplayKey, String> concurrentMap = cTimeZoneDisplayCache;
        String str = concurrentMap.get(timeZoneDisplayKey);
        if (str != null) {
            return str;
        }
        String displayName = timeZone.getDisplayName(z6, i2, locale);
        String putIfAbsent = concurrentMap.putIfAbsent(timeZoneDisplayKey, displayName);
        return putIfAbsent != null ? putIfAbsent : displayName;
    }

    private void init() {
        List<Rule> parsePattern = parsePattern();
        Rule[] ruleArr = (Rule[]) parsePattern.toArray(new Rule[parsePattern.size()]);
        this.mRules = ruleArr;
        int length = ruleArr.length;
        int i2 = 0;
        while (true) {
            length--;
            if (length < 0) {
                this.mMaxLengthEstimate = i2;
                return;
            }
            i2 += this.mRules[length].estimateLength();
        }
    }

    private Calendar newCalendar() {
        return Calendar.getInstance(this.mTimeZone, this.mLocale);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init();
    }

    @Deprecated
    public StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        return (StringBuffer) applyRules(calendar, (Calendar) stringBuffer);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDatePrinter)) {
            return false;
        }
        FastDatePrinter fastDatePrinter = (FastDatePrinter) obj;
        return this.mPattern.equals(fastDatePrinter.mPattern) && this.mTimeZone.equals(fastDatePrinter.mTimeZone) && this.mLocale.equals(fastDatePrinter.mLocale);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    @Deprecated
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Date) {
            return format((Date) obj, stringBuffer);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj, stringBuffer);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue(), stringBuffer);
        }
        throw new IllegalArgumentException("Unknown class: ".concat(obj == null ? "<null>" : obj.getClass().getName()));
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public Locale getLocale() {
        return this.mLocale;
    }

    public int getMaxLengthEstimate() {
        return this.mMaxLengthEstimate;
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String getPattern() {
        return this.mPattern;
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public TimeZone getTimeZone() {
        return this.mTimeZone;
    }

    public int hashCode() {
        return (((this.mLocale.hashCode() * 13) + this.mTimeZone.hashCode()) * 13) + this.mPattern.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v38, types: [org.apache.commons.lang3.time.FastDatePrinter$TextField] */
    /* JADX WARN: Type inference failed for: r11v48 */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v5, types: [org.apache.commons.lang3.time.FastDatePrinter$NumberRule] */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r11v52 */
    /* JADX WARN: Type inference failed for: r11v53 */
    /* JADX WARN: Type inference failed for: r11v54 */
    /* JADX WARN: Type inference failed for: r11v55 */
    /* JADX WARN: Type inference failed for: r11v56 */
    /* JADX WARN: Type inference failed for: r11v57 */
    /* JADX WARN: Type inference failed for: r11v58 */
    /* JADX WARN: Type inference failed for: r11v59 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v60 */
    /* JADX WARN: Type inference failed for: r11v61 */
    /* JADX WARN: Type inference failed for: r11v62 */
    /* JADX WARN: Type inference failed for: r11v63 */
    /* JADX WARN: Type inference failed for: r11v64 */
    /* JADX WARN: Type inference failed for: r11v65 */
    /* JADX WARN: Type inference failed for: r11v66 */
    /* JADX WARN: Type inference failed for: r11v67 */
    /* JADX WARN: Type inference failed for: r11v68 */
    /* JADX WARN: Type inference failed for: r11v69 */
    /* JADX WARN: Type inference failed for: r11v70 */
    /* JADX WARN: Type inference failed for: r11v71 */
    /* JADX WARN: Type inference failed for: r11v72 */
    /* JADX WARN: Type inference failed for: r11v73 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v9, types: [org.apache.commons.lang3.time.FastDatePrinter$TimeZoneNameRule] */
    public List<Rule> parsePattern() {
        int i2;
        int i7;
        ?? r11;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(this.mLocale);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.mPattern.length();
        int i8 = 0;
        int i9 = 0;
        while (i9 < length) {
            int[] iArr = {i9};
            String parseToken = parseToken(this.mPattern, iArr);
            int i10 = iArr[i8];
            int length2 = parseToken.length();
            if (length2 == 0) {
                return arrayList;
            }
            char charAt = parseToken.charAt(i8);
            if (charAt == 'y') {
                i2 = 0;
                i7 = 2;
            } else if (charAt != 'z') {
                switch (charAt) {
                    case '\'':
                        String substring = parseToken.substring(1);
                        r11 = substring.length() == 1 ? new CharacterLiteral(substring.charAt(0)) : new StringLiteral(substring);
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'K':
                        r11 = selectNumberRule(10, length2);
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'M':
                        r11 = length2 >= 4 ? new TextField(2, months) : length2 == 3 ? new TextField(2, shortMonths) : length2 == 2 ? TwoDigitMonthField.INSTANCE : UnpaddedMonthField.INSTANCE;
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'S':
                        r11 = selectNumberRule(14, length2);
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'a':
                        r11 = new TextField(9, amPmStrings);
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'd':
                        r11 = selectNumberRule(5, length2);
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'h':
                        r11 = new TwelveHourField(selectNumberRule(10, length2));
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'k':
                        r11 = new TwentyFourHourField(selectNumberRule(11, length2));
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'm':
                        r11 = selectNumberRule(12, length2);
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 's':
                        r11 = selectNumberRule(13, length2);
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'u':
                        r11 = new DayInWeekField(selectNumberRule(7, length2));
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    case 'w':
                        r11 = selectNumberRule(3, length2);
                        i2 = 0;
                        arrayList.add(r11);
                        i9 = i10 + 1;
                        i8 = i2;
                    default:
                        switch (charAt) {
                            case 'D':
                                r11 = selectNumberRule(6, length2);
                                i2 = 0;
                                arrayList.add(r11);
                                i9 = i10 + 1;
                                i8 = i2;
                            case 'E':
                                r11 = new TextField(7, length2 < 4 ? shortWeekdays : weekdays);
                                i2 = 0;
                                arrayList.add(r11);
                                i9 = i10 + 1;
                                i8 = i2;
                            case 'F':
                                r11 = selectNumberRule(8, length2);
                                i2 = 0;
                                arrayList.add(r11);
                                i9 = i10 + 1;
                                i8 = i2;
                            case 'G':
                                r11 = new TextField(0, eras);
                                i2 = 0;
                                arrayList.add(r11);
                                i9 = i10 + 1;
                                i8 = i2;
                            case 'H':
                                r11 = selectNumberRule(11, length2);
                                i2 = 0;
                                arrayList.add(r11);
                                i9 = i10 + 1;
                                i8 = i2;
                            default:
                                switch (charAt) {
                                    case 'W':
                                        r11 = selectNumberRule(4, length2);
                                        i2 = 0;
                                        arrayList.add(r11);
                                        i9 = i10 + 1;
                                        i8 = i2;
                                    case 'X':
                                        r11 = Iso8601_Rule.getRule(length2);
                                        i2 = 0;
                                        arrayList.add(r11);
                                        i9 = i10 + 1;
                                        i8 = i2;
                                    case 'Y':
                                        i7 = 2;
                                        i2 = 0;
                                        break;
                                    case 'Z':
                                        r11 = length2 == 1 ? TimeZoneNumberRule.INSTANCE_NO_COLON : length2 == 2 ? Iso8601_Rule.ISO8601_HOURS_COLON_MINUTES : TimeZoneNumberRule.INSTANCE_COLON;
                                        i2 = 0;
                                        arrayList.add(r11);
                                        i9 = i10 + 1;
                                        i8 = i2;
                                    default:
                                        throw new IllegalArgumentException("Illegal pattern component: ".concat(parseToken));
                                }
                        }
                }
            } else if (length2 >= 4) {
                r11 = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 1);
                i2 = 0;
                arrayList.add(r11);
                i9 = i10 + 1;
                i8 = i2;
            } else {
                i2 = 0;
                r11 = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 0);
                arrayList.add(r11);
                i9 = i10 + 1;
                i8 = i2;
            }
            if (length2 == i7) {
                r11 = TwoDigitYearField.INSTANCE;
            } else {
                if (length2 < 4) {
                    length2 = 4;
                }
                r11 = selectNumberRule(1, length2);
            }
            if (charAt == 'Y') {
                r11 = new WeekYear(r11);
            }
            arrayList.add(r11);
            i9 = i10 + 1;
            i8 = i2;
        }
        return arrayList;
    }

    public String parseToken(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        int i2 = iArr[0];
        int length = str.length();
        char charAt = str.charAt(i2);
        if ((charAt >= 'A' && charAt <= 'Z') || (charAt >= 'a' && charAt <= 'z')) {
            sb.append(charAt);
            while (true) {
                int i7 = i2 + 1;
                if (i7 >= length || str.charAt(i7) != charAt) {
                    break;
                }
                sb.append(charAt);
                i2 = i7;
            }
        } else {
            sb.append('\'');
            boolean z6 = false;
            while (i2 < length) {
                char charAt2 = str.charAt(i2);
                if (charAt2 != '\'') {
                    if (!z6 && ((charAt2 >= 'A' && charAt2 <= 'Z') || (charAt2 >= 'a' && charAt2 <= 'z'))) {
                        i2--;
                        break;
                    }
                    sb.append(charAt2);
                } else {
                    int i8 = i2 + 1;
                    if (i8 >= length || str.charAt(i8) != '\'') {
                        z6 = !z6;
                    } else {
                        sb.append(charAt2);
                        i2 = i8;
                    }
                }
                i2++;
            }
        }
        iArr[0] = i2;
        return sb.toString();
    }

    public NumberRule selectNumberRule(int i2, int i7) {
        return i7 != 1 ? i7 != 2 ? new PaddedNumberField(i2, i7) : new TwoDigitNumberField(i2) : new UnpaddedNumberField(i2);
    }

    public String toString() {
        return "FastDatePrinter[" + this.mPattern + "," + this.mLocale + "," + this.mTimeZone.getID() + "]";
    }

    public static class DayInWeekField implements NumberRule {
        private final NumberRule mRule;

        public DayInWeekField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i2 = calendar.get(7);
            this.mRule.appendTo(appendable, i2 != 1 ? i2 - 1 : 7);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public void appendTo(Appendable appendable, int i2) throws IOException {
            this.mRule.appendTo(appendable, i2);
        }
    }

    private <B extends Appendable> B applyRules(Calendar calendar, B b7) {
        try {
            for (Rule rule : this.mRules) {
                rule.appendTo(b7, calendar);
            }
        } catch (IOException e3) {
            ExceptionUtils.rethrow(e3);
        }
        return b7;
    }

    public static class TwelveHourField implements NumberRule {
        private final NumberRule mRule;

        public TwelveHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i2 = calendar.get(10);
            if (i2 == 0) {
                i2 = calendar.getLeastMaximum(10) + 1;
            }
            this.mRule.appendTo(appendable, i2);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public void appendTo(Appendable appendable, int i2) throws IOException {
            this.mRule.appendTo(appendable, i2);
        }
    }

    public static class TwentyFourHourField implements NumberRule {
        private final NumberRule mRule;

        public TwentyFourHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(Appendable appendable, Calendar calendar) throws IOException {
            int i2 = calendar.get(11);
            if (i2 == 0) {
                i2 = calendar.getMaximum(11) + 1;
            }
            this.mRule.appendTo(appendable, i2);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public void appendTo(Appendable appendable, int i2) throws IOException {
            this.mRule.appendTo(appendable, i2);
        }
    }

    public String format(Object obj) {
        if (obj instanceof Date) {
            return format((Date) obj);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue());
        }
        throw new IllegalArgumentException("Unknown class: ".concat(obj == null ? "<null>" : obj.getClass().getName()));
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(long j7) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTimeInMillis(j7);
        return applyRulesToString(newCalendar);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(Date date) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTime(date);
        return applyRulesToString(newCalendar);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public String format(Calendar calendar) {
        return ((StringBuilder) format(calendar, (Calendar) new StringBuilder(this.mMaxLengthEstimate))).toString();
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(long j7, StringBuffer stringBuffer) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTimeInMillis(j7);
        return (StringBuffer) applyRules(newCalendar, (Calendar) stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTime(date);
        return (StringBuffer) applyRules(newCalendar, (Calendar) stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        return format(calendar.getTime(), stringBuffer);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public <B extends Appendable> B format(long j7, B b7) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTimeInMillis(j7);
        return (B) applyRules(newCalendar, (Calendar) b7);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public <B extends Appendable> B format(Date date, B b7) {
        Calendar newCalendar = newCalendar();
        newCalendar.setTime(date);
        return (B) applyRules(newCalendar, (Calendar) b7);
    }

    @Override // org.apache.commons.lang3.time.DatePrinter
    public <B extends Appendable> B format(Calendar calendar, B b7) {
        if (!calendar.getTimeZone().equals(this.mTimeZone)) {
            calendar = (Calendar) calendar.clone();
            calendar.setTimeZone(this.mTimeZone);
        }
        return (B) applyRules(calendar, (Calendar) b7);
    }
}
