package org.threeten.bp;

import androidx.media3.common.PlaybackException;
import b.c;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import okhttp3.internal.http2.Http2Connection;
import org.apache.commons.lang3.ClassUtils;
import org.threeten.bp.format.DateTimeFormatter;
import org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor;
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
public final class LocalTime extends DefaultInterfaceTemporalAccessor implements Temporal, TemporalAdjuster, Comparable<LocalTime>, Serializable {
    public static final TemporalQuery<LocalTime> FROM = new TemporalQuery<LocalTime>() { // from class: org.threeten.bp.LocalTime.1
        @Override // org.threeten.bp.temporal.TemporalQuery
        public LocalTime queryFrom(TemporalAccessor temporalAccessor) {
            return LocalTime.from(temporalAccessor);
        }
    };
    private static final LocalTime[] HOURS = new LocalTime[24];
    static final int HOURS_PER_DAY = 24;
    public static final LocalTime MAX;
    static final long MICROS_PER_DAY = 86400000000L;
    public static final LocalTime MIDNIGHT;
    static final long MILLIS_PER_DAY = 86400000;
    public static final LocalTime MIN;
    static final int MINUTES_PER_DAY = 1440;
    static final int MINUTES_PER_HOUR = 60;
    static final long NANOS_PER_DAY = 86400000000000L;
    static final long NANOS_PER_HOUR = 3600000000000L;
    static final long NANOS_PER_MINUTE = 60000000000L;
    static final long NANOS_PER_SECOND = 1000000000;
    public static final LocalTime NOON;
    static final int SECONDS_PER_DAY = 86400;
    static final int SECONDS_PER_HOUR = 3600;
    static final int SECONDS_PER_MINUTE = 60;
    private static final long serialVersionUID = 6414437269572265201L;
    private final byte hour;
    private final byte minute;
    private final int nano;
    private final byte second;

    /* renamed from: org.threeten.bp.LocalTime$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;
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
            int[] iArr2 = new int[ChronoField.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr2;
            try {
                iArr2[ChronoField.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.NANO_OF_DAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.MICRO_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.MICRO_OF_DAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.MILLI_OF_SECOND.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.MILLI_OF_DAY.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.SECOND_OF_MINUTE.ordinal()] = 7;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.SECOND_OF_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.MINUTE_OF_HOUR.ordinal()] = 9;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.MINUTE_OF_DAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.HOUR_OF_AMPM.ordinal()] = 11;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.CLOCK_HOUR_OF_AMPM.ordinal()] = 12;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.HOUR_OF_DAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.CLOCK_HOUR_OF_DAY.ordinal()] = 14;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.AMPM_OF_DAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    static {
        int i2 = 0;
        while (true) {
            LocalTime[] localTimeArr = HOURS;
            if (i2 >= localTimeArr.length) {
                LocalTime localTime = localTimeArr[0];
                MIDNIGHT = localTime;
                NOON = localTimeArr[12];
                MIN = localTime;
                MAX = new LocalTime(23, 59, 59, Year.MAX_VALUE);
                return;
            }
            localTimeArr[i2] = new LocalTime(i2, 0, 0, 0);
            i2++;
        }
    }

    private LocalTime(int i2, int i7, int i8, int i9) {
        this.hour = (byte) i2;
        this.minute = (byte) i7;
        this.second = (byte) i8;
        this.nano = i9;
    }

    private static LocalTime create(int i2, int i7, int i8, int i9) {
        return ((i7 | i8) | i9) == 0 ? HOURS[i2] : new LocalTime(i2, i7, i8, i9);
    }

    public static LocalTime from(TemporalAccessor temporalAccessor) {
        LocalTime localTime = (LocalTime) temporalAccessor.query(TemporalQueries.localTime());
        if (localTime != null) {
            return localTime;
        }
        throw new DateTimeException("Unable to obtain LocalTime from TemporalAccessor: " + temporalAccessor + ", type " + temporalAccessor.getClass().getName());
    }

    private int get0(TemporalField temporalField) {
        switch (AnonymousClass2.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                return this.nano;
            case 2:
                throw new DateTimeException(c.n("Field too large for an int: ", temporalField));
            case 3:
                return this.nano / 1000;
            case 4:
                throw new DateTimeException(c.n("Field too large for an int: ", temporalField));
            case 5:
                return this.nano / PlaybackException.CUSTOM_ERROR_CODE_BASE;
            case 6:
                return (int) (toNanoOfDay() / 1000000);
            case 7:
                return this.second;
            case 8:
                return toSecondOfDay();
            case 9:
                return this.minute;
            case 10:
                return (this.hour * 60) + this.minute;
            case 11:
                return this.hour % 12;
            case 12:
                int i2 = this.hour % 12;
                if (i2 % 12 == 0) {
                    return 12;
                }
                return i2;
            case 13:
                return this.hour;
            case 14:
                byte b7 = this.hour;
                if (b7 == 0) {
                    return 24;
                }
                return b7;
            case 15:
                return this.hour / 12;
            default:
                throw new UnsupportedTemporalTypeException(c.n("Unsupported field: ", temporalField));
        }
    }

    public static LocalTime now() {
        return now(Clock.systemDefaultZone());
    }

    public static LocalTime of(int i2, int i7) {
        ChronoField.HOUR_OF_DAY.checkValidValue(i2);
        if (i7 == 0) {
            return HOURS[i2];
        }
        ChronoField.MINUTE_OF_HOUR.checkValidValue(i7);
        return new LocalTime(i2, i7, 0, 0);
    }

    public static LocalTime ofNanoOfDay(long j7) {
        ChronoField.NANO_OF_DAY.checkValidValue(j7);
        int i2 = (int) (j7 / NANOS_PER_HOUR);
        long j8 = j7 - (i2 * NANOS_PER_HOUR);
        int i7 = (int) (j8 / NANOS_PER_MINUTE);
        long j9 = j8 - (i7 * NANOS_PER_MINUTE);
        int i8 = (int) (j9 / 1000000000);
        return create(i2, i7, i8, (int) (j9 - (i8 * 1000000000)));
    }

    public static LocalTime ofSecondOfDay(long j7) {
        ChronoField.SECOND_OF_DAY.checkValidValue(j7);
        int i2 = (int) (j7 / 3600);
        long j8 = j7 - (i2 * SECONDS_PER_HOUR);
        return create(i2, (int) (j8 / 60), (int) (j8 - (r1 * 60)), 0);
    }

    public static LocalTime parse(CharSequence charSequence) {
        return parse(charSequence, DateTimeFormatter.ISO_LOCAL_TIME);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    public static LocalTime readExternal(DataInput dataInput) throws IOException {
        int readInt;
        int i2;
        int readByte = dataInput.readByte();
        byte b7 = 0;
        if (readByte < 0) {
            readByte = ~readByte;
            i2 = 0;
            readInt = 0;
        } else {
            byte readByte2 = dataInput.readByte();
            if (readByte2 < 0) {
                ?? r52 = ~readByte2;
                readInt = 0;
                b7 = r52;
                i2 = 0;
            } else {
                byte readByte3 = dataInput.readByte();
                if (readByte3 < 0) {
                    i2 = ~readByte3;
                    readInt = 0;
                    b7 = readByte2;
                } else {
                    readInt = dataInput.readInt();
                    b7 = readByte2;
                    i2 = readByte3;
                }
            }
        }
        return of(readByte, b7, i2, readInt);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new Ser((byte) 5, this);
    }

    @Override // org.threeten.bp.temporal.TemporalAdjuster
    public Temporal adjustInto(Temporal temporal) {
        return temporal.with(ChronoField.NANO_OF_DAY, toNanoOfDay());
    }

    public LocalDateTime atDate(LocalDate localDate) {
        return LocalDateTime.of(localDate, this);
    }

    public OffsetTime atOffset(ZoneOffset zoneOffset) {
        return OffsetTime.of(this, zoneOffset);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalTime) {
            LocalTime localTime = (LocalTime) obj;
            if (this.hour == localTime.hour && this.minute == localTime.minute && this.second == localTime.second && this.nano == localTime.nano) {
                return true;
            }
        }
        return false;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
    public int get(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? get0(temporalField) : super.get(temporalField);
    }

    public int getHour() {
        return this.hour;
    }

    @Override // org.threeten.bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField == ChronoField.NANO_OF_DAY ? toNanoOfDay() : temporalField == ChronoField.MICRO_OF_DAY ? toNanoOfDay() / 1000 : get0(temporalField) : temporalField.getFrom(this);
    }

    public int getMinute() {
        return this.minute;
    }

    public int getNano() {
        return this.nano;
    }

    public int getSecond() {
        return this.second;
    }

    public int hashCode() {
        long nanoOfDay = toNanoOfDay();
        return (int) (nanoOfDay ^ (nanoOfDay >>> 32));
    }

    public boolean isAfter(LocalTime localTime) {
        return compareTo(localTime) > 0;
    }

    public boolean isBefore(LocalTime localTime) {
        return compareTo(localTime) < 0;
    }

    @Override // org.threeten.bp.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField.isTimeBased() : temporalField != null && temporalField.isSupportedBy(this);
    }

    public LocalTime minusHours(long j7) {
        return plusHours(-(j7 % 24));
    }

    public LocalTime minusMinutes(long j7) {
        return plusMinutes(-(j7 % 1440));
    }

    public LocalTime minusNanos(long j7) {
        return plusNanos(-(j7 % NANOS_PER_DAY));
    }

    public LocalTime minusSeconds(long j7) {
        return plusSeconds(-(j7 % 86400));
    }

    public LocalTime plusHours(long j7) {
        return j7 == 0 ? this : create(((((int) (j7 % 24)) + this.hour) + 24) % 24, this.minute, this.second, this.nano);
    }

    public LocalTime plusMinutes(long j7) {
        if (j7 != 0) {
            int i2 = (this.hour * 60) + this.minute;
            int i7 = ((((int) (j7 % 1440)) + i2) + MINUTES_PER_DAY) % MINUTES_PER_DAY;
            if (i2 != i7) {
                return create(i7 / 60, i7 % 60, this.second, this.nano);
            }
        }
        return this;
    }

    public LocalTime plusNanos(long j7) {
        if (j7 != 0) {
            long nanoOfDay = toNanoOfDay();
            long j8 = (((j7 % NANOS_PER_DAY) + nanoOfDay) + NANOS_PER_DAY) % NANOS_PER_DAY;
            if (nanoOfDay != j8) {
                return create((int) (j8 / NANOS_PER_HOUR), (int) ((j8 / NANOS_PER_MINUTE) % 60), (int) ((j8 / 1000000000) % 60), (int) (j8 % 1000000000));
            }
        }
        return this;
    }

    public LocalTime plusSeconds(long j7) {
        if (j7 != 0) {
            int i2 = (this.minute * 60) + (this.hour * 3600) + this.second;
            int i7 = ((((int) (j7 % 86400)) + i2) + SECONDS_PER_DAY) % SECONDS_PER_DAY;
            if (i2 != i7) {
                return create(i7 / SECONDS_PER_HOUR, (i7 / 60) % 60, i7 % 60, this.nano);
            }
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
    public <R> R query(TemporalQuery<R> temporalQuery) {
        if (temporalQuery == TemporalQueries.precision()) {
            return (R) ChronoUnit.NANOS;
        }
        if (temporalQuery == TemporalQueries.localTime()) {
            return this;
        }
        if (temporalQuery == TemporalQueries.chronology() || temporalQuery == TemporalQueries.zoneId() || temporalQuery == TemporalQueries.zone() || temporalQuery == TemporalQueries.offset() || temporalQuery == TemporalQueries.localDate()) {
            return null;
        }
        return temporalQuery.queryFrom(this);
    }

    @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        return super.range(temporalField);
    }

    public long toNanoOfDay() {
        return (this.second * 1000000000) + (this.minute * NANOS_PER_MINUTE) + (this.hour * NANOS_PER_HOUR) + this.nano;
    }

    public int toSecondOfDay() {
        return (this.minute * 60) + (this.hour * 3600) + this.second;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b7 = this.hour;
        byte b8 = this.minute;
        byte b9 = this.second;
        int i2 = this.nano;
        sb.append(b7 < 10 ? "0" : "");
        sb.append((int) b7);
        sb.append(b8 < 10 ? ":0" : ":");
        sb.append((int) b8);
        if (b9 > 0 || i2 > 0) {
            sb.append(b9 < 10 ? ":0" : ":");
            sb.append((int) b9);
            if (i2 > 0) {
                sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
                if (i2 % PlaybackException.CUSTOM_ERROR_CODE_BASE == 0) {
                    sb.append(Integer.toString((i2 / PlaybackException.CUSTOM_ERROR_CODE_BASE) + 1000).substring(1));
                } else if (i2 % 1000 == 0) {
                    sb.append(Integer.toString((i2 / 1000) + PlaybackException.CUSTOM_ERROR_CODE_BASE).substring(1));
                } else {
                    sb.append(Integer.toString(i2 + Http2Connection.DEGRADED_PONG_TIMEOUT_NS).substring(1));
                }
            }
        }
        return sb.toString();
    }

    public LocalTime truncatedTo(TemporalUnit temporalUnit) {
        if (temporalUnit == ChronoUnit.NANOS) {
            return this;
        }
        Duration duration = temporalUnit.getDuration();
        if (duration.getSeconds() > 86400) {
            throw new DateTimeException("Unit is too large to be used for truncation");
        }
        long nanos = duration.toNanos();
        if (NANOS_PER_DAY % nanos == 0) {
            return ofNanoOfDay((toNanoOfDay() / nanos) * nanos);
        }
        throw new DateTimeException("Unit must divide into a standard day without remainder");
    }

    @Override // org.threeten.bp.temporal.Temporal
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        LocalTime from = from(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, from);
        }
        long nanoOfDay = from.toNanoOfDay() - toNanoOfDay();
        switch (AnonymousClass2.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return nanoOfDay;
            case 2:
                return nanoOfDay / 1000;
            case 3:
                return nanoOfDay / 1000000;
            case 4:
                return nanoOfDay / 1000000000;
            case 5:
                return nanoOfDay / NANOS_PER_MINUTE;
            case 6:
                return nanoOfDay / NANOS_PER_HOUR;
            case 7:
                return nanoOfDay / 43200000000000L;
            default:
                throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
        }
    }

    public LocalTime withHour(int i2) {
        if (this.hour == i2) {
            return this;
        }
        ChronoField.HOUR_OF_DAY.checkValidValue(i2);
        return create(i2, this.minute, this.second, this.nano);
    }

    public LocalTime withMinute(int i2) {
        if (this.minute == i2) {
            return this;
        }
        ChronoField.MINUTE_OF_HOUR.checkValidValue(i2);
        return create(this.hour, i2, this.second, this.nano);
    }

    public LocalTime withNano(int i2) {
        if (this.nano == i2) {
            return this;
        }
        ChronoField.NANO_OF_SECOND.checkValidValue(i2);
        return create(this.hour, this.minute, this.second, i2);
    }

    public LocalTime withSecond(int i2) {
        if (this.second == i2) {
            return this;
        }
        ChronoField.SECOND_OF_MINUTE.checkValidValue(i2);
        return create(this.hour, this.minute, i2, this.nano);
    }

    public void writeExternal(DataOutput dataOutput) throws IOException {
        if (this.nano != 0) {
            dataOutput.writeByte(this.hour);
            dataOutput.writeByte(this.minute);
            dataOutput.writeByte(this.second);
            dataOutput.writeInt(this.nano);
            return;
        }
        if (this.second != 0) {
            dataOutput.writeByte(this.hour);
            dataOutput.writeByte(this.minute);
            dataOutput.writeByte(~this.second);
        } else if (this.minute == 0) {
            dataOutput.writeByte(~this.hour);
        } else {
            dataOutput.writeByte(this.hour);
            dataOutput.writeByte(~this.minute);
        }
    }

    public static LocalTime now(ZoneId zoneId) {
        return now(Clock.system(zoneId));
    }

    public static LocalTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Jdk8Methods.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalTime) dateTimeFormatter.parse(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(LocalTime localTime) {
        int compareInts = Jdk8Methods.compareInts(this.hour, localTime.hour);
        return (compareInts == 0 && (compareInts = Jdk8Methods.compareInts(this.minute, localTime.minute)) == 0 && (compareInts = Jdk8Methods.compareInts(this.second, localTime.second)) == 0) ? Jdk8Methods.compareInts(this.nano, localTime.nano) : compareInts;
    }

    public static LocalTime now(Clock clock) {
        Jdk8Methods.requireNonNull(clock, "clock");
        Instant instant = clock.instant();
        long epochSecond = ((instant.getEpochSecond() % 86400) + clock.getZone().getRules().getOffset(instant).getTotalSeconds()) % 86400;
        if (epochSecond < 0) {
            epochSecond += 86400;
        }
        return ofSecondOfDay(epochSecond, instant.getNano());
    }

    @Override // org.threeten.bp.temporal.Temporal
    public LocalTime minus(TemporalAmount temporalAmount) {
        return (LocalTime) temporalAmount.subtractFrom(this);
    }

    @Override // org.threeten.bp.temporal.Temporal
    public LocalTime plus(TemporalAmount temporalAmount) {
        return (LocalTime) temporalAmount.addTo(this);
    }

    @Override // org.threeten.bp.temporal.Temporal
    public LocalTime with(TemporalAdjuster temporalAdjuster) {
        if (temporalAdjuster instanceof LocalTime) {
            return (LocalTime) temporalAdjuster;
        }
        return (LocalTime) temporalAdjuster.adjustInto(this);
    }

    @Override // org.threeten.bp.temporal.Temporal
    public boolean isSupported(TemporalUnit temporalUnit) {
        if (temporalUnit instanceof ChronoUnit) {
            return temporalUnit.isTimeBased();
        }
        return temporalUnit != null && temporalUnit.isSupportedBy(this);
    }

    @Override // org.threeten.bp.temporal.Temporal
    public LocalTime minus(long j7, TemporalUnit temporalUnit) {
        return j7 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, temporalUnit).plus(1L, temporalUnit) : plus(-j7, temporalUnit);
    }

    @Override // org.threeten.bp.temporal.Temporal
    public LocalTime plus(long j7, TemporalUnit temporalUnit) {
        if (temporalUnit instanceof ChronoUnit) {
            switch (AnonymousClass2.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
                case 1:
                    return plusNanos(j7);
                case 2:
                    return plusNanos((j7 % MICROS_PER_DAY) * 1000);
                case 3:
                    return plusNanos((j7 % 86400000) * 1000000);
                case 4:
                    return plusSeconds(j7);
                case 5:
                    return plusMinutes(j7);
                case 6:
                    return plusHours(j7);
                case 7:
                    return plusHours((j7 % 2) * 12);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
            }
        }
        return (LocalTime) temporalUnit.addTo(this, j7);
    }

    public static LocalTime of(int i2, int i7, int i8) {
        ChronoField.HOUR_OF_DAY.checkValidValue(i2);
        if ((i7 | i8) == 0) {
            return HOURS[i2];
        }
        ChronoField.MINUTE_OF_HOUR.checkValidValue(i7);
        ChronoField.SECOND_OF_MINUTE.checkValidValue(i8);
        return new LocalTime(i2, i7, i8, 0);
    }

    public static LocalTime ofSecondOfDay(long j7, int i2) {
        ChronoField.SECOND_OF_DAY.checkValidValue(j7);
        ChronoField.NANO_OF_SECOND.checkValidValue(i2);
        int i7 = (int) (j7 / 3600);
        long j8 = j7 - (i7 * SECONDS_PER_HOUR);
        return create(i7, (int) (j8 / 60), (int) (j8 - (r1 * 60)), i2);
    }

    @Override // org.threeten.bp.temporal.Temporal
    public LocalTime with(TemporalField temporalField, long j7) {
        if (temporalField instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) temporalField;
            chronoField.checkValidValue(j7);
            switch (AnonymousClass2.$SwitchMap$org$threeten$bp$temporal$ChronoField[chronoField.ordinal()]) {
                case 1:
                    return withNano((int) j7);
                case 2:
                    return ofNanoOfDay(j7);
                case 3:
                    return withNano(((int) j7) * 1000);
                case 4:
                    return ofNanoOfDay(j7 * 1000);
                case 5:
                    return withNano(((int) j7) * PlaybackException.CUSTOM_ERROR_CODE_BASE);
                case 6:
                    return ofNanoOfDay(j7 * 1000000);
                case 7:
                    return withSecond((int) j7);
                case 8:
                    return plusSeconds(j7 - toSecondOfDay());
                case 9:
                    return withMinute((int) j7);
                case 10:
                    return plusMinutes(j7 - ((this.hour * 60) + this.minute));
                case 11:
                    return plusHours(j7 - (this.hour % 12));
                case 12:
                    if (j7 == 12) {
                        j7 = 0;
                    }
                    return plusHours(j7 - (this.hour % 12));
                case 13:
                    return withHour((int) j7);
                case 14:
                    if (j7 == 24) {
                        j7 = 0;
                    }
                    return withHour((int) j7);
                case 15:
                    return plusHours((j7 - (this.hour / 12)) * 12);
                default:
                    throw new UnsupportedTemporalTypeException(c.n("Unsupported field: ", temporalField));
            }
        }
        return (LocalTime) temporalField.adjustInto(this, j7);
    }

    public static LocalTime of(int i2, int i7, int i8, int i9) {
        ChronoField.HOUR_OF_DAY.checkValidValue(i2);
        ChronoField.MINUTE_OF_HOUR.checkValidValue(i7);
        ChronoField.SECOND_OF_MINUTE.checkValidValue(i8);
        ChronoField.NANO_OF_SECOND.checkValidValue(i9);
        return create(i2, i7, i8, i9);
    }
}
