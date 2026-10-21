package org.threeten.bp;

import androidx.media3.common.C;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.apache.commons.lang3.time.DateUtils;
import org.threeten.bp.chrono.ChronoLocalDateTime;
import org.threeten.bp.chrono.ChronoZonedDateTime;
import org.threeten.bp.format.DateTimeFormatter;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.Temporal;
import org.threeten.bp.temporal.TemporalAccessor;
import org.threeten.bp.temporal.TemporalAdjuster;
import org.threeten.bp.temporal.TemporalAmount;
import org.threeten.bp.temporal.TemporalField;
import org.threeten.bp.temporal.TemporalQueries;
import org.threeten.bp.temporal.TemporalQuery;
import org.threeten.bp.temporal.TemporalUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;

/* loaded from: classes2.dex */
public final class LocalDateTime extends ChronoLocalDateTime<LocalDate> implements Temporal, TemporalAdjuster, Serializable {
    private static final long serialVersionUID = 6207766400415563566L;
    private final LocalDate date;
    private final LocalTime time;
    public static final LocalDateTime MIN = of(LocalDate.MIN, LocalTime.MIN);
    public static final LocalDateTime MAX = of(LocalDate.MAX, LocalTime.MAX);
    public static final TemporalQuery<LocalDateTime> FROM = new TemporalQuery<LocalDateTime>() { // from class: org.threeten.bp.LocalDateTime.1
        @Override // org.threeten.bp.temporal.TemporalQuery
        public LocalDateTime queryFrom(TemporalAccessor temporalAccessor) {
            return LocalDateTime.from(temporalAccessor);
        }
    };

    /* renamed from: org.threeten.bp.LocalDateTime$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoUnit = iArr;
            try {
                iArr[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private LocalDateTime(LocalDate localDate, LocalTime localTime) {
        this.date = localDate;
        this.time = localTime;
    }

    private int compareTo0(LocalDateTime localDateTime) {
        int compareTo0 = this.date.compareTo0(localDateTime.toLocalDate());
        return compareTo0 == 0 ? this.time.compareTo(localDateTime.toLocalTime()) : compareTo0;
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [org.threeten.bp.LocalDateTime] */
    public static LocalDateTime from(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof LocalDateTime) {
            return (LocalDateTime) temporalAccessor;
        }
        if (temporalAccessor instanceof ZonedDateTime) {
            return ((ZonedDateTime) temporalAccessor).toLocalDateTime2();
        }
        try {
            return new LocalDateTime(LocalDate.from(temporalAccessor), LocalTime.from(temporalAccessor));
        } catch (DateTimeException unused) {
            throw new DateTimeException("Unable to obtain LocalDateTime from TemporalAccessor: " + temporalAccessor + ", type " + temporalAccessor.getClass().getName());
        }
    }

    public static LocalDateTime now() {
        return now(Clock.systemDefaultZone());
    }

    public static LocalDateTime of(int i2, Month month, int i7, int i8, int i9) {
        return new LocalDateTime(LocalDate.of(i2, month, i7), LocalTime.of(i8, i9));
    }

    public static LocalDateTime ofEpochSecond(long j7, int i2, ZoneOffset zoneOffset) {
        Jdk8Methods.requireNonNull(zoneOffset, "offset");
        return new LocalDateTime(LocalDate.ofEpochDay(Jdk8Methods.floorDiv(j7 + zoneOffset.getTotalSeconds(), 86400L)), LocalTime.ofSecondOfDay(Jdk8Methods.floorMod(r2, 86400), i2));
    }

    public static LocalDateTime ofInstant(Instant instant, ZoneId zoneId) {
        Jdk8Methods.requireNonNull(instant, "instant");
        Jdk8Methods.requireNonNull(zoneId, "zone");
        return ofEpochSecond(instant.getEpochSecond(), instant.getNano(), zoneId.getRules().getOffset(instant));
    }

    public static LocalDateTime parse(CharSequence charSequence) {
        return parse(charSequence, DateTimeFormatter.ISO_LOCAL_DATE_TIME);
    }

    private LocalDateTime plusWithOverflow(LocalDate localDate, long j7, long j8, long j9, long j10, int i2) {
        if ((j7 | j8 | j9 | j10) == 0) {
            return with(localDate, this.time);
        }
        long j11 = i2;
        long j12 = ((j7 % 24) * 3600000000000L) + ((j8 % 1440) * 60000000000L) + ((j9 % 86400) * C.NANOS_PER_SECOND) + (j10 % 86400000000000L);
        long nanoOfDay = this.time.toNanoOfDay();
        long j13 = (j12 * j11) + nanoOfDay;
        long floorDiv = Jdk8Methods.floorDiv(j13, 86400000000000L) + (((j7 / 24) + (j8 / 1440) + (j9 / 86400) + (j10 / 86400000000000L)) * j11);
        long floorMod = Jdk8Methods.floorMod(j13, 86400000000000L);
        return with(localDate.plusDays(floorDiv), floorMod == nanoOfDay ? this.time : LocalTime.ofNanoOfDay(floorMod));
    }

    public static LocalDateTime readExternal(DataInput dataInput) throws IOException {
        return of(LocalDate.readExternal(dataInput), LocalTime.readExternal(dataInput));
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new Ser((byte) 4, this);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.temporal.TemporalAdjuster
    public Temporal adjustInto(Temporal temporal) {
        return super.adjustInto(temporal);
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.of(this, zoneOffset);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.date.equals(localDateTime.date) && this.time.equals(localDateTime.time)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public String format(DateTimeFormatter dateTimeFormatter) {
        return super.format(dateTimeFormatter);
    }

    @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
    public int get(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField.isTimeBased() ? this.time.get(temporalField) : this.date.get(temporalField) : super.get(temporalField);
    }

    public int getDayOfMonth() {
        return this.date.getDayOfMonth();
    }

    public DayOfWeek getDayOfWeek() {
        return this.date.getDayOfWeek();
    }

    public int getDayOfYear() {
        return this.date.getDayOfYear();
    }

    public int getHour() {
        return this.time.getHour();
    }

    @Override // org.threeten.bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField.isTimeBased() ? this.time.getLong(temporalField) : this.date.getLong(temporalField) : temporalField.getFrom(this);
    }

    public int getMinute() {
        return this.time.getMinute();
    }

    public Month getMonth() {
        return this.date.getMonth();
    }

    public int getMonthValue() {
        return this.date.getMonthValue();
    }

    public int getNano() {
        return this.time.getNano();
    }

    public int getSecond() {
        return this.time.getSecond();
    }

    public int getYear() {
        return this.date.getYear();
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public int hashCode() {
        return this.date.hashCode() ^ this.time.hashCode();
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public boolean isAfter(ChronoLocalDateTime<?> chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? compareTo0((LocalDateTime) chronoLocalDateTime) > 0 : super.isAfter(chronoLocalDateTime);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public boolean isBefore(ChronoLocalDateTime<?> chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? compareTo0((LocalDateTime) chronoLocalDateTime) < 0 : super.isBefore(chronoLocalDateTime);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public boolean isEqual(ChronoLocalDateTime<?> chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? compareTo0((LocalDateTime) chronoLocalDateTime) == 0 : super.isEqual(chronoLocalDateTime);
    }

    @Override // org.threeten.bp.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField.isDateBased() || temporalField.isTimeBased() : temporalField != null && temporalField.isSupportedBy(this);
    }

    public LocalDateTime minusDays(long j7) {
        return j7 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j7);
    }

    public LocalDateTime minusHours(long j7) {
        return plusWithOverflow(this.date, j7, 0L, 0L, 0L, -1);
    }

    public LocalDateTime minusMinutes(long j7) {
        return plusWithOverflow(this.date, 0L, j7, 0L, 0L, -1);
    }

    public LocalDateTime minusMonths(long j7) {
        return j7 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j7);
    }

    public LocalDateTime minusNanos(long j7) {
        return plusWithOverflow(this.date, 0L, 0L, 0L, j7, -1);
    }

    public LocalDateTime minusSeconds(long j7) {
        return plusWithOverflow(this.date, 0L, 0L, j7, 0L, -1);
    }

    public LocalDateTime minusWeeks(long j7) {
        return j7 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j7);
    }

    public LocalDateTime minusYears(long j7) {
        return j7 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j7);
    }

    public LocalDateTime plusDays(long j7) {
        return with(this.date.plusDays(j7), this.time);
    }

    public LocalDateTime plusHours(long j7) {
        return plusWithOverflow(this.date, j7, 0L, 0L, 0L, 1);
    }

    public LocalDateTime plusMinutes(long j7) {
        return plusWithOverflow(this.date, 0L, j7, 0L, 0L, 1);
    }

    public LocalDateTime plusMonths(long j7) {
        return with(this.date.plusMonths(j7), this.time);
    }

    public LocalDateTime plusNanos(long j7) {
        return plusWithOverflow(this.date, 0L, 0L, 0L, j7, 1);
    }

    public LocalDateTime plusSeconds(long j7) {
        return plusWithOverflow(this.date, 0L, 0L, j7, 0L, 1);
    }

    public LocalDateTime plusWeeks(long j7) {
        return with(this.date.plusWeeks(j7), this.time);
    }

    public LocalDateTime plusYears(long j7) {
        return with(this.date.plusYears(j7), this.time);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        return temporalQuery == TemporalQueries.localDate() ? (R) toLocalDate() : (R) super.query(temporalQuery);
    }

    @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField.isTimeBased() ? this.time.range(temporalField) : this.date.range(temporalField) : temporalField.rangeRefinedBy(this);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public LocalTime toLocalTime() {
        return this.time;
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public String toString() {
        return this.date.toString() + 'T' + this.time.toString();
    }

    public LocalDateTime truncatedTo(TemporalUnit temporalUnit) {
        return with(this.date, this.time.truncatedTo(temporalUnit));
    }

    @Override // org.threeten.bp.temporal.Temporal
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        LocalDateTime from = from((TemporalAccessor) temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, from);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        if (!chronoUnit.isTimeBased()) {
            LocalDate localDate = from.date;
            if (localDate.isAfter(this.date) && from.time.isBefore(this.time)) {
                localDate = localDate.minusDays(1L);
            } else if (localDate.isBefore(this.date) && from.time.isAfter(this.time)) {
                localDate = localDate.plusDays(1L);
            }
            return this.date.until(localDate, temporalUnit);
        }
        long daysUntil = this.date.daysUntil(from.date);
        long nanoOfDay = from.time.toNanoOfDay() - this.time.toNanoOfDay();
        if (daysUntil > 0 && nanoOfDay < 0) {
            daysUntil--;
            nanoOfDay += 86400000000000L;
        } else if (daysUntil < 0 && nanoOfDay > 0) {
            daysUntil++;
            nanoOfDay -= 86400000000000L;
        }
        switch (AnonymousClass2.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[chronoUnit.ordinal()]) {
            case 1:
                return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(daysUntil, 86400000000000L), nanoOfDay);
            case 2:
                return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(daysUntil, 86400000000L), nanoOfDay / 1000);
            case 3:
                return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(daysUntil, DateUtils.MILLIS_PER_DAY), nanoOfDay / 1000000);
            case 4:
                return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(daysUntil, 86400), nanoOfDay / C.NANOS_PER_SECOND);
            case 5:
                return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(daysUntil, 1440), nanoOfDay / 60000000000L);
            case 6:
                return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(daysUntil, 24), nanoOfDay / 3600000000000L);
            case 7:
                return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(daysUntil, 2), nanoOfDay / 43200000000000L);
            default:
                throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
        }
    }

    public LocalDateTime withDayOfMonth(int i2) {
        return with(this.date.withDayOfMonth(i2), this.time);
    }

    public LocalDateTime withDayOfYear(int i2) {
        return with(this.date.withDayOfYear(i2), this.time);
    }

    public LocalDateTime withHour(int i2) {
        return with(this.date, this.time.withHour(i2));
    }

    public LocalDateTime withMinute(int i2) {
        return with(this.date, this.time.withMinute(i2));
    }

    public LocalDateTime withMonth(int i2) {
        return with(this.date.withMonth(i2), this.time);
    }

    public LocalDateTime withNano(int i2) {
        return with(this.date, this.time.withNano(i2));
    }

    public LocalDateTime withSecond(int i2) {
        return with(this.date, this.time.withSecond(i2));
    }

    public LocalDateTime withYear(int i2) {
        return with(this.date.withYear(i2), this.time);
    }

    public void writeExternal(DataOutput dataOutput) throws IOException {
        this.date.writeExternal(dataOutput);
        this.time.writeExternal(dataOutput);
    }

    public static LocalDateTime now(ZoneId zoneId) {
        return now(Clock.system(zoneId));
    }

    public static LocalDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalDateTime) dateTimeFormatter.parse(charSequence, FROM);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    /* renamed from: atZone, reason: merged with bridge method [inline-methods] */
    public ChronoZonedDateTime<LocalDate> atZone2(ZoneId zoneId) {
        return ZonedDateTime.of(this, zoneId);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, java.lang.Comparable
    public int compareTo(ChronoLocalDateTime<?> chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? compareTo0((LocalDateTime) chronoLocalDateTime) : super.compareTo(chronoLocalDateTime);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public LocalDate toLocalDate() {
        return this.date;
    }

    public static LocalDateTime now(Clock clock) {
        Jdk8Methods.requireNonNull(clock, "clock");
        Instant instant = clock.instant();
        return ofEpochSecond(instant.getEpochSecond(), instant.getNano(), clock.getZone().getRules().getOffset(instant));
    }

    public static LocalDateTime of(int i2, Month month, int i7, int i8, int i9, int i10) {
        return new LocalDateTime(LocalDate.of(i2, month, i7), LocalTime.of(i8, i9, i10));
    }

    @Override // org.threeten.bp.temporal.Temporal
    public boolean isSupported(TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? temporalUnit.isDateBased() || temporalUnit.isTimeBased() : temporalUnit != null && temporalUnit.isSupportedBy(this);
    }

    private LocalDateTime with(LocalDate localDate, LocalTime localTime) {
        return (this.date == localDate && this.time == localTime) ? this : new LocalDateTime(localDate, localTime);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.jdk8.DefaultInterfaceTemporal, org.threeten.bp.temporal.Temporal
    public LocalDateTime minus(TemporalAmount temporalAmount) {
        return (LocalDateTime) temporalAmount.subtractFrom(this);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.jdk8.DefaultInterfaceTemporal, org.threeten.bp.temporal.Temporal
    public LocalDateTime plus(TemporalAmount temporalAmount) {
        return (LocalDateTime) temporalAmount.addTo(this);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.jdk8.DefaultInterfaceTemporal, org.threeten.bp.temporal.Temporal
    public LocalDateTime minus(long j7, TemporalUnit temporalUnit) {
        return j7 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, temporalUnit).plus(1L, temporalUnit) : plus(-j7, temporalUnit);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.temporal.Temporal
    public LocalDateTime plus(long j7, TemporalUnit temporalUnit) {
        if (temporalUnit instanceof ChronoUnit) {
            switch (AnonymousClass2.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
                case 1:
                    return plusNanos(j7);
                case 2:
                    return plusDays(j7 / 86400000000L).plusNanos((j7 % 86400000000L) * 1000);
                case 3:
                    return plusDays(j7 / DateUtils.MILLIS_PER_DAY).plusNanos((j7 % DateUtils.MILLIS_PER_DAY) * 1000000);
                case 4:
                    return plusSeconds(j7);
                case 5:
                    return plusMinutes(j7);
                case 6:
                    return plusHours(j7);
                case 7:
                    return plusDays(j7 / 256).plusHours((j7 % 256) * 12);
                default:
                    return with(this.date.plus(j7, temporalUnit), this.time);
            }
        }
        return (LocalDateTime) temporalUnit.addTo(this, j7);
    }

    public static LocalDateTime of(int i2, Month month, int i7, int i8, int i9, int i10, int i11) {
        return new LocalDateTime(LocalDate.of(i2, month, i7), LocalTime.of(i8, i9, i10, i11));
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.jdk8.DefaultInterfaceTemporal, org.threeten.bp.temporal.Temporal
    public LocalDateTime with(TemporalAdjuster temporalAdjuster) {
        if (temporalAdjuster instanceof LocalDate) {
            return with((LocalDate) temporalAdjuster, this.time);
        }
        if (temporalAdjuster instanceof LocalTime) {
            return with(this.date, (LocalTime) temporalAdjuster);
        }
        if (temporalAdjuster instanceof LocalDateTime) {
            return (LocalDateTime) temporalAdjuster;
        }
        return (LocalDateTime) temporalAdjuster.adjustInto(this);
    }

    public static LocalDateTime of(int i2, int i7, int i8, int i9, int i10) {
        return new LocalDateTime(LocalDate.of(i2, i7, i8), LocalTime.of(i9, i10));
    }

    public static LocalDateTime of(int i2, int i7, int i8, int i9, int i10, int i11) {
        return new LocalDateTime(LocalDate.of(i2, i7, i8), LocalTime.of(i9, i10, i11));
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.temporal.Temporal
    public LocalDateTime with(TemporalField temporalField, long j7) {
        if (temporalField instanceof ChronoField) {
            if (temporalField.isTimeBased()) {
                return with(this.date, this.time.with(temporalField, j7));
            }
            return with(this.date.with(temporalField, j7), this.time);
        }
        return (LocalDateTime) temporalField.adjustInto(this, j7);
    }

    public static LocalDateTime of(int i2, int i7, int i8, int i9, int i10, int i11, int i12) {
        return new LocalDateTime(LocalDate.of(i2, i7, i8), LocalTime.of(i9, i10, i11, i12));
    }

    public static LocalDateTime of(LocalDate localDate, LocalTime localTime) {
        Jdk8Methods.requireNonNull(localDate, "date");
        Jdk8Methods.requireNonNull(localTime, "time");
        return new LocalDateTime(localDate, localTime);
    }
}
