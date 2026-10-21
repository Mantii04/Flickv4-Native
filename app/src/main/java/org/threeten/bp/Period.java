package org.threeten.bp;

import androidx.media3.common.MimeTypes;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.threeten.bp.chrono.ChronoLocalDate;
import org.threeten.bp.chrono.ChronoPeriod;
import org.threeten.bp.chrono.Chronology;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.format.DateTimeParseException;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.Temporal;
import org.threeten.bp.temporal.TemporalAmount;
import org.threeten.bp.temporal.TemporalUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;

/* loaded from: classes2.dex */
public final class Period extends ChronoPeriod implements Serializable {
    private static final long serialVersionUID = -8290556941213247973L;
    private final int days;
    private final int months;
    private final int years;
    public static final Period ZERO = new Period(0, 0, 0);
    private static final Pattern PATTERN = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);

    private Period(int i2, int i7, int i8) {
        this.years = i2;
        this.months = i7;
        this.days = i8;
    }

    public static Period between(LocalDate localDate, LocalDate localDate2) {
        return localDate.until((ChronoLocalDate) localDate2);
    }

    private static Period create(int i2, int i7, int i8) {
        return ((i2 | i7) | i8) == 0 ? ZERO : new Period(i2, i7, i8);
    }

    public static Period from(TemporalAmount temporalAmount) {
        if (temporalAmount instanceof Period) {
            return (Period) temporalAmount;
        }
        if ((temporalAmount instanceof ChronoPeriod) && !IsoChronology.INSTANCE.equals(((ChronoPeriod) temporalAmount).getChronology())) {
            throw new DateTimeException("Period requires ISO chronology: " + temporalAmount);
        }
        Jdk8Methods.requireNonNull(temporalAmount, "amount");
        int i2 = 0;
        int i7 = 0;
        int i8 = 0;
        for (TemporalUnit temporalUnit : temporalAmount.getUnits()) {
            long j7 = temporalAmount.get(temporalUnit);
            if (temporalUnit == ChronoUnit.YEARS) {
                i2 = Jdk8Methods.safeToInt(j7);
            } else if (temporalUnit == ChronoUnit.MONTHS) {
                i7 = Jdk8Methods.safeToInt(j7);
            } else {
                if (temporalUnit != ChronoUnit.DAYS) {
                    throw new DateTimeException("Unit must be Years, Months or Days, but was " + temporalUnit);
                }
                i8 = Jdk8Methods.safeToInt(j7);
            }
        }
        return create(i2, i7, i8);
    }

    public static Period of(int i2, int i7, int i8) {
        return create(i2, i7, i8);
    }

    public static Period ofDays(int i2) {
        return create(0, 0, i2);
    }

    public static Period ofMonths(int i2) {
        return create(0, i2, 0);
    }

    public static Period ofWeeks(int i2) {
        return create(0, 0, Jdk8Methods.safeMultiply(i2, 7));
    }

    public static Period ofYears(int i2) {
        return create(i2, 0, 0);
    }

    public static Period parse(CharSequence charSequence) {
        Jdk8Methods.requireNonNull(charSequence, MimeTypes.BASE_TYPE_TEXT);
        Matcher matcher = PATTERN.matcher(charSequence);
        if (matcher.matches()) {
            int i2 = "-".equals(matcher.group(1)) ? -1 : 1;
            String group = matcher.group(2);
            String group2 = matcher.group(3);
            String group3 = matcher.group(4);
            String group4 = matcher.group(5);
            if (group != null || group2 != null || group3 != null || group4 != null) {
                try {
                    return create(parseNumber(charSequence, group, i2), parseNumber(charSequence, group2, i2), Jdk8Methods.safeAdd(parseNumber(charSequence, group4, i2), Jdk8Methods.safeMultiply(parseNumber(charSequence, group3, i2), 7)));
                } catch (NumberFormatException e3) {
                    throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Period", charSequence, 0).initCause(e3));
                }
            }
        }
        throw new DateTimeParseException("Text cannot be parsed to a Period", charSequence, 0);
    }

    private static int parseNumber(CharSequence charSequence, String str, int i2) {
        if (str == null) {
            return 0;
        }
        try {
            return Jdk8Methods.safeMultiply(Integer.parseInt(str), i2);
        } catch (ArithmeticException e3) {
            throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Period", charSequence, 0).initCause(e3));
        }
    }

    private Object readResolve() {
        return ((this.years | this.months) | this.days) == 0 ? ZERO : this;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod, org.threeten.bp.temporal.TemporalAmount
    public Temporal addTo(Temporal temporal) {
        Jdk8Methods.requireNonNull(temporal, "temporal");
        int i2 = this.years;
        if (i2 != 0) {
            temporal = this.months != 0 ? temporal.plus(toTotalMonths(), ChronoUnit.MONTHS) : temporal.plus(i2, ChronoUnit.YEARS);
        } else {
            int i7 = this.months;
            if (i7 != 0) {
                temporal = temporal.plus(i7, ChronoUnit.MONTHS);
            }
        }
        int i8 = this.days;
        return i8 != 0 ? temporal.plus(i8, ChronoUnit.DAYS) : temporal;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Period) {
            Period period = (Period) obj;
            if (this.years == period.years && this.months == period.months && this.days == period.days) {
                return true;
            }
        }
        return false;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod, org.threeten.bp.temporal.TemporalAmount
    public long get(TemporalUnit temporalUnit) {
        int i2;
        if (temporalUnit == ChronoUnit.YEARS) {
            i2 = this.years;
        } else if (temporalUnit == ChronoUnit.MONTHS) {
            i2 = this.months;
        } else {
            if (temporalUnit != ChronoUnit.DAYS) {
                throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
            }
            i2 = this.days;
        }
        return i2;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public Chronology getChronology() {
        return IsoChronology.INSTANCE;
    }

    public int getDays() {
        return this.days;
    }

    public int getMonths() {
        return this.months;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod, org.threeten.bp.temporal.TemporalAmount
    public List<TemporalUnit> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS));
    }

    public int getYears() {
        return this.years;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public int hashCode() {
        return Integer.rotateLeft(this.days, 16) + Integer.rotateLeft(this.months, 8) + this.years;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public boolean isNegative() {
        return this.years < 0 || this.months < 0 || this.days < 0;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public boolean isZero() {
        return this == ZERO;
    }

    public Period minusDays(long j7) {
        return j7 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j7);
    }

    public Period minusMonths(long j7) {
        return j7 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j7);
    }

    public Period minusYears(long j7) {
        return j7 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j7);
    }

    public Period plusDays(long j7) {
        return j7 == 0 ? this : create(this.years, this.months, Jdk8Methods.safeToInt(Jdk8Methods.safeAdd(this.days, j7)));
    }

    public Period plusMonths(long j7) {
        return j7 == 0 ? this : create(this.years, Jdk8Methods.safeToInt(Jdk8Methods.safeAdd(this.months, j7)), this.days);
    }

    public Period plusYears(long j7) {
        return j7 == 0 ? this : create(Jdk8Methods.safeToInt(Jdk8Methods.safeAdd(this.years, j7)), this.months, this.days);
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod, org.threeten.bp.temporal.TemporalAmount
    public Temporal subtractFrom(Temporal temporal) {
        Jdk8Methods.requireNonNull(temporal, "temporal");
        int i2 = this.years;
        if (i2 != 0) {
            temporal = this.months != 0 ? temporal.minus(toTotalMonths(), ChronoUnit.MONTHS) : temporal.minus(i2, ChronoUnit.YEARS);
        } else {
            int i7 = this.months;
            if (i7 != 0) {
                temporal = temporal.minus(i7, ChronoUnit.MONTHS);
            }
        }
        int i8 = this.days;
        return i8 != 0 ? temporal.minus(i8, ChronoUnit.DAYS) : temporal;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public String toString() {
        if (this == ZERO) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i2 = this.years;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('Y');
        }
        int i7 = this.months;
        if (i7 != 0) {
            sb.append(i7);
            sb.append('M');
        }
        int i8 = this.days;
        if (i8 != 0) {
            sb.append(i8);
            sb.append('D');
        }
        return sb.toString();
    }

    public long toTotalMonths() {
        return (this.years * 12) + this.months;
    }

    public Period withDays(int i2) {
        return i2 == this.days ? this : create(this.years, this.months, i2);
    }

    public Period withMonths(int i2) {
        return i2 == this.months ? this : create(this.years, i2, this.days);
    }

    public Period withYears(int i2) {
        return i2 == this.years ? this : create(i2, this.months, this.days);
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public Period minus(TemporalAmount temporalAmount) {
        Period from = from(temporalAmount);
        return create(Jdk8Methods.safeSubtract(this.years, from.years), Jdk8Methods.safeSubtract(this.months, from.months), Jdk8Methods.safeSubtract(this.days, from.days));
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public Period multipliedBy(int i2) {
        return (this == ZERO || i2 == 1) ? this : create(Jdk8Methods.safeMultiply(this.years, i2), Jdk8Methods.safeMultiply(this.months, i2), Jdk8Methods.safeMultiply(this.days, i2));
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public Period negated() {
        return multipliedBy(-1);
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public Period normalized() {
        long totalMonths = toTotalMonths();
        long j7 = totalMonths / 12;
        int i2 = (int) (totalMonths % 12);
        return (j7 == ((long) this.years) && i2 == this.months) ? this : create(Jdk8Methods.safeToInt(j7), i2, this.days);
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public Period plus(TemporalAmount temporalAmount) {
        Period from = from(temporalAmount);
        return create(Jdk8Methods.safeAdd(this.years, from.years), Jdk8Methods.safeAdd(this.months, from.months), Jdk8Methods.safeAdd(this.days, from.days));
    }
}
