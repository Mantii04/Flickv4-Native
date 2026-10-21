package org.threeten.bp.temporal;

import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.Year;
import org.threeten.bp.chrono.ChronoLocalDate;
import org.threeten.bp.chrono.Chronology;
import org.threeten.bp.format.ResolverStyle;
import org.threeten.bp.jdk8.Jdk8Methods;

/* loaded from: classes2.dex */
public final class WeekFields implements Serializable {
    private static final ConcurrentMap<String, WeekFields> CACHE = new ConcurrentHashMap(4, 0.75f, 2);
    public static final WeekFields ISO = new WeekFields(DayOfWeek.MONDAY, 4);
    public static final WeekFields SUNDAY_START = of(DayOfWeek.SUNDAY, 1);
    private static final long serialVersionUID = -1177360819670808121L;
    private final DayOfWeek firstDayOfWeek;
    private final int minimalDays;
    private final transient TemporalField dayOfWeek = ComputedDayOfField.ofDayOfWeekField(this);
    private final transient TemporalField weekOfMonth = ComputedDayOfField.ofWeekOfMonthField(this);
    private final transient TemporalField weekOfYear = ComputedDayOfField.ofWeekOfYearField(this);
    private final transient TemporalField weekOfWeekBasedYear = ComputedDayOfField.ofWeekOfWeekBasedYearField(this);
    private final transient TemporalField weekBasedYear = ComputedDayOfField.ofWeekBasedYearField(this);

    public static class ComputedDayOfField implements TemporalField {
        private final TemporalUnit baseUnit;
        private final String name;
        private final ValueRange range;
        private final TemporalUnit rangeUnit;
        private final WeekFields weekDef;
        private static final ValueRange DAY_OF_WEEK_RANGE = ValueRange.of(1, 7);
        private static final ValueRange WEEK_OF_MONTH_RANGE = ValueRange.of(0, 1, 4, 6);
        private static final ValueRange WEEK_OF_YEAR_RANGE = ValueRange.of(0, 1, 52, 54);
        private static final ValueRange WEEK_OF_WEEK_BASED_YEAR_RANGE = ValueRange.of(1, 52, 53);
        private static final ValueRange WEEK_BASED_YEAR_RANGE = ChronoField.YEAR.range();

        private ComputedDayOfField(String str, WeekFields weekFields, TemporalUnit temporalUnit, TemporalUnit temporalUnit2, ValueRange valueRange) {
            this.name = str;
            this.weekDef = weekFields;
            this.baseUnit = temporalUnit;
            this.rangeUnit = temporalUnit2;
            this.range = valueRange;
        }

        private int computeWeek(int i2, int i7) {
            return ((i7 - 1) + (i2 + 7)) / 7;
        }

        private int localizedDayOfWeek(TemporalAccessor temporalAccessor, int i2) {
            return Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - i2, 7) + 1;
        }

        private int localizedWBY(TemporalAccessor temporalAccessor) {
            int floorMod = Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1;
            int i2 = temporalAccessor.get(ChronoField.YEAR);
            long localizedWeekOfYear = localizedWeekOfYear(temporalAccessor, floorMod);
            if (localizedWeekOfYear == 0) {
                return i2 - 1;
            }
            if (localizedWeekOfYear < 53) {
                return i2;
            }
            return localizedWeekOfYear >= ((long) computeWeek(startOfWeekOffset(temporalAccessor.get(ChronoField.DAY_OF_YEAR), floorMod), this.weekDef.getMinimalDaysInFirstWeek() + (Year.isLeap((long) i2) ? 366 : 365))) ? i2 + 1 : i2;
        }

        private int localizedWOWBY(TemporalAccessor temporalAccessor) {
            int floorMod = Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1;
            long localizedWeekOfYear = localizedWeekOfYear(temporalAccessor, floorMod);
            if (localizedWeekOfYear == 0) {
                return ((int) localizedWeekOfYear(Chronology.from(temporalAccessor).date(temporalAccessor).minus(1L, (TemporalUnit) ChronoUnit.WEEKS), floorMod)) + 1;
            }
            if (localizedWeekOfYear >= 53) {
                if (localizedWeekOfYear >= computeWeek(startOfWeekOffset(temporalAccessor.get(ChronoField.DAY_OF_YEAR), floorMod), this.weekDef.getMinimalDaysInFirstWeek() + (Year.isLeap((long) temporalAccessor.get(ChronoField.YEAR)) ? 366 : 365))) {
                    return (int) (localizedWeekOfYear - (r6 - 1));
                }
            }
            return (int) localizedWeekOfYear;
        }

        private long localizedWeekOfMonth(TemporalAccessor temporalAccessor, int i2) {
            int i7 = temporalAccessor.get(ChronoField.DAY_OF_MONTH);
            return computeWeek(startOfWeekOffset(i7, i2), i7);
        }

        private long localizedWeekOfYear(TemporalAccessor temporalAccessor, int i2) {
            int i7 = temporalAccessor.get(ChronoField.DAY_OF_YEAR);
            return computeWeek(startOfWeekOffset(i7, i2), i7);
        }

        public static ComputedDayOfField ofDayOfWeekField(WeekFields weekFields) {
            return new ComputedDayOfField("DayOfWeek", weekFields, ChronoUnit.DAYS, ChronoUnit.WEEKS, DAY_OF_WEEK_RANGE);
        }

        public static ComputedDayOfField ofWeekBasedYearField(WeekFields weekFields) {
            return new ComputedDayOfField("WeekBasedYear", weekFields, IsoFields.WEEK_BASED_YEARS, ChronoUnit.FOREVER, WEEK_BASED_YEAR_RANGE);
        }

        public static ComputedDayOfField ofWeekOfMonthField(WeekFields weekFields) {
            return new ComputedDayOfField("WeekOfMonth", weekFields, ChronoUnit.WEEKS, ChronoUnit.MONTHS, WEEK_OF_MONTH_RANGE);
        }

        public static ComputedDayOfField ofWeekOfWeekBasedYearField(WeekFields weekFields) {
            return new ComputedDayOfField("WeekOfWeekBasedYear", weekFields, ChronoUnit.WEEKS, IsoFields.WEEK_BASED_YEARS, WEEK_OF_WEEK_BASED_YEAR_RANGE);
        }

        public static ComputedDayOfField ofWeekOfYearField(WeekFields weekFields) {
            return new ComputedDayOfField("WeekOfYear", weekFields, ChronoUnit.WEEKS, ChronoUnit.YEARS, WEEK_OF_YEAR_RANGE);
        }

        private ValueRange rangeWOWBY(TemporalAccessor temporalAccessor) {
            int floorMod = Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1;
            long localizedWeekOfYear = localizedWeekOfYear(temporalAccessor, floorMod);
            if (localizedWeekOfYear == 0) {
                return rangeWOWBY(Chronology.from(temporalAccessor).date(temporalAccessor).minus(2L, (TemporalUnit) ChronoUnit.WEEKS));
            }
            return localizedWeekOfYear >= ((long) computeWeek(startOfWeekOffset(temporalAccessor.get(ChronoField.DAY_OF_YEAR), floorMod), this.weekDef.getMinimalDaysInFirstWeek() + (Year.isLeap((long) temporalAccessor.get(ChronoField.YEAR)) ? 366 : 365))) ? rangeWOWBY(Chronology.from(temporalAccessor).date(temporalAccessor).plus(2L, (TemporalUnit) ChronoUnit.WEEKS)) : ValueRange.of(1L, r0 - 1);
        }

        private int startOfWeekOffset(int i2, int i7) {
            int floorMod = Jdk8Methods.floorMod(i2 - i7, 7);
            return floorMod + 1 > this.weekDef.getMinimalDaysInFirstWeek() ? 7 - floorMod : -floorMod;
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public <R extends Temporal> R adjustInto(R r6, long j7) {
            int checkValidIntValue = this.range.checkValidIntValue(j7, this);
            if (checkValidIntValue == r6.get(this)) {
                return r6;
            }
            if (this.rangeUnit != ChronoUnit.FOREVER) {
                return (R) r6.plus(checkValidIntValue - r1, this.baseUnit);
            }
            int i2 = r6.get(this.weekDef.weekOfWeekBasedYear);
            long j8 = (long) ((j7 - r1) * 52.1775d);
            ChronoUnit chronoUnit = ChronoUnit.WEEKS;
            Temporal plus = r6.plus(j8, chronoUnit);
            if (plus.get(this) > checkValidIntValue) {
                return (R) plus.minus(plus.get(this.weekDef.weekOfWeekBasedYear), chronoUnit);
            }
            if (plus.get(this) < checkValidIntValue) {
                plus = plus.plus(2L, chronoUnit);
            }
            R r7 = (R) plus.plus(i2 - plus.get(this.weekDef.weekOfWeekBasedYear), chronoUnit);
            return r7.get(this) > checkValidIntValue ? (R) r7.minus(1L, chronoUnit) : r7;
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public TemporalUnit getBaseUnit() {
            return this.baseUnit;
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public String getDisplayName(Locale locale) {
            Jdk8Methods.requireNonNull(locale, "locale");
            return this.rangeUnit == ChronoUnit.YEARS ? "Week" : toString();
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public long getFrom(TemporalAccessor temporalAccessor) {
            int localizedWBY;
            int floorMod = Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1;
            TemporalUnit temporalUnit = this.rangeUnit;
            if (temporalUnit == ChronoUnit.WEEKS) {
                return floorMod;
            }
            if (temporalUnit == ChronoUnit.MONTHS) {
                int i2 = temporalAccessor.get(ChronoField.DAY_OF_MONTH);
                localizedWBY = computeWeek(startOfWeekOffset(i2, floorMod), i2);
            } else if (temporalUnit == ChronoUnit.YEARS) {
                int i7 = temporalAccessor.get(ChronoField.DAY_OF_YEAR);
                localizedWBY = computeWeek(startOfWeekOffset(i7, floorMod), i7);
            } else if (temporalUnit == IsoFields.WEEK_BASED_YEARS) {
                localizedWBY = localizedWOWBY(temporalAccessor);
            } else {
                if (temporalUnit != ChronoUnit.FOREVER) {
                    throw new IllegalStateException("unreachable");
                }
                localizedWBY = localizedWBY(temporalAccessor);
            }
            return localizedWBY;
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public TemporalUnit getRangeUnit() {
            return this.rangeUnit;
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public boolean isDateBased() {
            return true;
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public boolean isSupportedBy(TemporalAccessor temporalAccessor) {
            if (!temporalAccessor.isSupported(ChronoField.DAY_OF_WEEK)) {
                return false;
            }
            TemporalUnit temporalUnit = this.rangeUnit;
            if (temporalUnit == ChronoUnit.WEEKS) {
                return true;
            }
            if (temporalUnit == ChronoUnit.MONTHS) {
                return temporalAccessor.isSupported(ChronoField.DAY_OF_MONTH);
            }
            if (temporalUnit == ChronoUnit.YEARS) {
                return temporalAccessor.isSupported(ChronoField.DAY_OF_YEAR);
            }
            if (temporalUnit == IsoFields.WEEK_BASED_YEARS) {
                return temporalAccessor.isSupported(ChronoField.EPOCH_DAY);
            }
            if (temporalUnit == ChronoUnit.FOREVER) {
                return temporalAccessor.isSupported(ChronoField.EPOCH_DAY);
            }
            return false;
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public boolean isTimeBased() {
            return false;
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public ValueRange range() {
            return this.range;
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public ValueRange rangeRefinedBy(TemporalAccessor temporalAccessor) {
            ChronoField chronoField;
            TemporalUnit temporalUnit = this.rangeUnit;
            if (temporalUnit == ChronoUnit.WEEKS) {
                return this.range;
            }
            if (temporalUnit == ChronoUnit.MONTHS) {
                chronoField = ChronoField.DAY_OF_MONTH;
            } else {
                if (temporalUnit != ChronoUnit.YEARS) {
                    if (temporalUnit == IsoFields.WEEK_BASED_YEARS) {
                        return rangeWOWBY(temporalAccessor);
                    }
                    if (temporalUnit == ChronoUnit.FOREVER) {
                        return temporalAccessor.range(ChronoField.YEAR);
                    }
                    throw new IllegalStateException("unreachable");
                }
                chronoField = ChronoField.DAY_OF_YEAR;
            }
            int startOfWeekOffset = startOfWeekOffset(temporalAccessor.get(chronoField), Jdk8Methods.floorMod(temporalAccessor.get(ChronoField.DAY_OF_WEEK) - this.weekDef.getFirstDayOfWeek().getValue(), 7) + 1);
            ValueRange range = temporalAccessor.range(chronoField);
            return ValueRange.of(computeWeek(startOfWeekOffset, (int) range.getMinimum()), computeWeek(startOfWeekOffset, (int) range.getMaximum()));
        }

        @Override // org.threeten.bp.temporal.TemporalField
        public TemporalAccessor resolve(Map<TemporalField, Long> map, TemporalAccessor temporalAccessor, ResolverStyle resolverStyle) {
            long checkValidIntValue;
            ChronoLocalDate date;
            long checkValidIntValue2;
            ChronoLocalDate date2;
            long checkValidIntValue3;
            int localizedDayOfWeek;
            long localizedWeekOfYear;
            int value = this.weekDef.getFirstDayOfWeek().getValue();
            if (this.rangeUnit == ChronoUnit.WEEKS) {
                map.put(ChronoField.DAY_OF_WEEK, Long.valueOf(Jdk8Methods.floorMod((this.range.checkValidIntValue(map.remove(this).longValue(), this) - 1) + (value - 1), 7) + 1));
                return null;
            }
            ChronoField chronoField = ChronoField.DAY_OF_WEEK;
            if (!map.containsKey(chronoField)) {
                return null;
            }
            if (this.rangeUnit == ChronoUnit.FOREVER) {
                if (!map.containsKey(this.weekDef.weekOfWeekBasedYear)) {
                    return null;
                }
                Chronology from = Chronology.from(temporalAccessor);
                int floorMod = Jdk8Methods.floorMod(chronoField.checkValidIntValue(map.get(chronoField).longValue()) - value, 7) + 1;
                int checkValidIntValue4 = range().checkValidIntValue(map.get(this).longValue(), this);
                if (resolverStyle == ResolverStyle.LENIENT) {
                    date2 = from.date(checkValidIntValue4, 1, this.weekDef.getMinimalDaysInFirstWeek());
                    checkValidIntValue3 = map.get(this.weekDef.weekOfWeekBasedYear).longValue();
                    localizedDayOfWeek = localizedDayOfWeek(date2, value);
                    localizedWeekOfYear = localizedWeekOfYear(date2, localizedDayOfWeek);
                } else {
                    date2 = from.date(checkValidIntValue4, 1, this.weekDef.getMinimalDaysInFirstWeek());
                    checkValidIntValue3 = this.weekDef.weekOfWeekBasedYear.range().checkValidIntValue(map.get(this.weekDef.weekOfWeekBasedYear).longValue(), this.weekDef.weekOfWeekBasedYear);
                    localizedDayOfWeek = localizedDayOfWeek(date2, value);
                    localizedWeekOfYear = localizedWeekOfYear(date2, localizedDayOfWeek);
                }
                ChronoLocalDate plus = date2.plus(((checkValidIntValue3 - localizedWeekOfYear) * 7) + (floorMod - localizedDayOfWeek), (TemporalUnit) ChronoUnit.DAYS);
                if (resolverStyle == ResolverStyle.STRICT && plus.getLong(this) != map.get(this).longValue()) {
                    throw new DateTimeException("Strict mode rejected date parsed to a different year");
                }
                map.remove(this);
                map.remove(this.weekDef.weekOfWeekBasedYear);
                map.remove(chronoField);
                return plus;
            }
            ChronoField chronoField2 = ChronoField.YEAR;
            if (!map.containsKey(chronoField2)) {
                return null;
            }
            int floorMod2 = Jdk8Methods.floorMod(chronoField.checkValidIntValue(map.get(chronoField).longValue()) - value, 7) + 1;
            int checkValidIntValue5 = chronoField2.checkValidIntValue(map.get(chronoField2).longValue());
            Chronology from2 = Chronology.from(temporalAccessor);
            TemporalUnit temporalUnit = this.rangeUnit;
            ChronoUnit chronoUnit = ChronoUnit.MONTHS;
            if (temporalUnit != chronoUnit) {
                if (temporalUnit != ChronoUnit.YEARS) {
                    throw new IllegalStateException("unreachable");
                }
                long longValue = map.remove(this).longValue();
                ChronoLocalDate date3 = from2.date(checkValidIntValue5, 1, 1);
                if (resolverStyle == ResolverStyle.LENIENT) {
                    checkValidIntValue = ((longValue - localizedWeekOfYear(date3, localizedDayOfWeek(date3, value))) * 7) + (floorMod2 - r3);
                } else {
                    checkValidIntValue = (floorMod2 - r3) + ((this.range.checkValidIntValue(longValue, this) - localizedWeekOfYear(date3, localizedDayOfWeek(date3, value))) * 7);
                }
                ChronoLocalDate plus2 = date3.plus(checkValidIntValue, (TemporalUnit) ChronoUnit.DAYS);
                if (resolverStyle == ResolverStyle.STRICT && plus2.getLong(chronoField2) != map.get(chronoField2).longValue()) {
                    throw new DateTimeException("Strict mode rejected date parsed to a different year");
                }
                map.remove(this);
                map.remove(chronoField2);
                map.remove(chronoField);
                return plus2;
            }
            ChronoField chronoField3 = ChronoField.MONTH_OF_YEAR;
            if (!map.containsKey(chronoField3)) {
                return null;
            }
            long longValue2 = map.remove(this).longValue();
            if (resolverStyle == ResolverStyle.LENIENT) {
                date = from2.date(checkValidIntValue5, 1, 1).plus(map.get(chronoField3).longValue() - 1, (TemporalUnit) chronoUnit);
                checkValidIntValue2 = ((longValue2 - localizedWeekOfMonth(date, localizedDayOfWeek(date, value))) * 7) + (floorMod2 - r3);
            } else {
                date = from2.date(checkValidIntValue5, chronoField3.checkValidIntValue(map.get(chronoField3).longValue()), 8);
                checkValidIntValue2 = (floorMod2 - r3) + ((this.range.checkValidIntValue(longValue2, this) - localizedWeekOfMonth(date, localizedDayOfWeek(date, value))) * 7);
            }
            ChronoLocalDate plus3 = date.plus(checkValidIntValue2, (TemporalUnit) ChronoUnit.DAYS);
            if (resolverStyle == ResolverStyle.STRICT && plus3.getLong(chronoField3) != map.get(chronoField3).longValue()) {
                throw new DateTimeException("Strict mode rejected date parsed to a different month");
            }
            map.remove(this);
            map.remove(chronoField2);
            map.remove(chronoField3);
            map.remove(chronoField);
            return plus3;
        }

        public String toString() {
            return this.name + "[" + this.weekDef.toString() + "]";
        }
    }

    private WeekFields(DayOfWeek dayOfWeek, int i2) {
        Jdk8Methods.requireNonNull(dayOfWeek, "firstDayOfWeek");
        if (i2 < 1 || i2 > 7) {
            throw new IllegalArgumentException("Minimal number of days is invalid");
        }
        this.firstDayOfWeek = dayOfWeek;
        this.minimalDays = i2;
    }

    public static WeekFields of(Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        return of(DayOfWeek.SUNDAY.plus(r4.getFirstDayOfWeek() - 1), new GregorianCalendar(new Locale(locale.getLanguage(), locale.getCountry())).getMinimalDaysInFirstWeek());
    }

    private Object readResolve() throws InvalidObjectException {
        try {
            return of(this.firstDayOfWeek, this.minimalDays);
        } catch (IllegalArgumentException e3) {
            throw new InvalidObjectException("Invalid WeekFields" + e3.getMessage());
        }
    }

    public TemporalField dayOfWeek() {
        return this.dayOfWeek;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WeekFields) && hashCode() == obj.hashCode();
    }

    public DayOfWeek getFirstDayOfWeek() {
        return this.firstDayOfWeek;
    }

    public int getMinimalDaysInFirstWeek() {
        return this.minimalDays;
    }

    public int hashCode() {
        return (this.firstDayOfWeek.ordinal() * 7) + this.minimalDays;
    }

    public String toString() {
        return "WeekFields[" + this.firstDayOfWeek + ',' + this.minimalDays + ']';
    }

    public TemporalField weekBasedYear() {
        return this.weekBasedYear;
    }

    public TemporalField weekOfMonth() {
        return this.weekOfMonth;
    }

    public TemporalField weekOfWeekBasedYear() {
        return this.weekOfWeekBasedYear;
    }

    public TemporalField weekOfYear() {
        return this.weekOfYear;
    }

    public static WeekFields of(DayOfWeek dayOfWeek, int i2) {
        String str = dayOfWeek.toString() + i2;
        ConcurrentMap<String, WeekFields> concurrentMap = CACHE;
        WeekFields weekFields = concurrentMap.get(str);
        if (weekFields != null) {
            return weekFields;
        }
        concurrentMap.putIfAbsent(str, new WeekFields(dayOfWeek, i2));
        return concurrentMap.get(str);
    }
}
