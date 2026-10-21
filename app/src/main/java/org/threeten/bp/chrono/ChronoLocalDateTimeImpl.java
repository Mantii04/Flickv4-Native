package org.threeten.bp.chrono;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import org.threeten.bp.LocalTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.chrono.ChronoLocalDate;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.Temporal;
import org.threeten.bp.temporal.TemporalAdjuster;
import org.threeten.bp.temporal.TemporalField;
import org.threeten.bp.temporal.TemporalUnit;
import org.threeten.bp.temporal.ValueRange;

/* loaded from: classes2.dex */
final class ChronoLocalDateTimeImpl<D extends ChronoLocalDate> extends ChronoLocalDateTime<D> implements Temporal, TemporalAdjuster, Serializable {
    private static final int HOURS_PER_DAY = 24;
    private static final long MICROS_PER_DAY = 86400000000L;
    private static final long MILLIS_PER_DAY = 86400000;
    private static final int MINUTES_PER_DAY = 1440;
    private static final int MINUTES_PER_HOUR = 60;
    private static final long NANOS_PER_DAY = 86400000000000L;
    private static final long NANOS_PER_HOUR = 3600000000000L;
    private static final long NANOS_PER_MINUTE = 60000000000L;
    private static final long NANOS_PER_SECOND = 1000000000;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final long serialVersionUID = 4556003607393004514L;
    private final D date;
    private final LocalTime time;

    /* renamed from: org.threeten.bp.chrono.ChronoLocalDateTimeImpl$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
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

    private ChronoLocalDateTimeImpl(D d7, LocalTime localTime) {
        Jdk8Methods.requireNonNull(d7, "date");
        Jdk8Methods.requireNonNull(localTime, "time");
        this.date = d7;
        this.time = localTime;
    }

    public static <R extends ChronoLocalDate> ChronoLocalDateTimeImpl<R> of(R r6, LocalTime localTime) {
        return new ChronoLocalDateTimeImpl<>(r6, localTime);
    }

    private ChronoLocalDateTimeImpl<D> plusDays(long j7) {
        return with(this.date.plus(j7, ChronoUnit.DAYS), this.time);
    }

    private ChronoLocalDateTimeImpl<D> plusHours(long j7) {
        return plusWithOverflow(this.date, j7, 0L, 0L, 0L);
    }

    private ChronoLocalDateTimeImpl<D> plusMinutes(long j7) {
        return plusWithOverflow(this.date, 0L, j7, 0L, 0L);
    }

    private ChronoLocalDateTimeImpl<D> plusNanos(long j7) {
        return plusWithOverflow(this.date, 0L, 0L, 0L, j7);
    }

    private ChronoLocalDateTimeImpl<D> plusWithOverflow(D d7, long j7, long j8, long j9, long j10) {
        if ((j7 | j8 | j9 | j10) == 0) {
            return with(d7, this.time);
        }
        long j11 = j7 / 24;
        long j12 = j11 + (j8 / 1440) + (j9 / 86400) + (j10 / NANOS_PER_DAY);
        long j13 = ((j7 % 24) * NANOS_PER_HOUR) + ((j8 % 1440) * NANOS_PER_MINUTE) + ((j9 % 86400) * 1000000000) + (j10 % NANOS_PER_DAY);
        long nanoOfDay = this.time.toNanoOfDay();
        long j14 = j13 + nanoOfDay;
        long floorDiv = Jdk8Methods.floorDiv(j14, NANOS_PER_DAY) + j12;
        long floorMod = Jdk8Methods.floorMod(j14, NANOS_PER_DAY);
        return with(d7.plus(floorDiv, ChronoUnit.DAYS), floorMod == nanoOfDay ? this.time : LocalTime.ofNanoOfDay(floorMod));
    }

    public static ChronoLocalDateTime<?> readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        return ((ChronoLocalDate) objectInput.readObject()).atTime((LocalTime) objectInput.readObject());
    }

    private Object writeReplace() {
        return new Ser((byte) 12, this);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    /* renamed from: atZone */
    public ChronoZonedDateTime<D> atZone2(ZoneId zoneId) {
        return ChronoZonedDateTimeImpl.ofBest(this, zoneId, null);
    }

    @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
    public int get(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField.isTimeBased() ? this.time.get(temporalField) : this.date.get(temporalField) : range(temporalField).checkValidIntValue(getLong(temporalField), temporalField);
    }

    @Override // org.threeten.bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField.isTimeBased() ? this.time.getLong(temporalField) : this.date.getLong(temporalField) : temporalField.getFrom(this);
    }

    @Override // org.threeten.bp.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField.isDateBased() || temporalField.isTimeBased() : temporalField != null && temporalField.isSupportedBy(this);
    }

    public ChronoLocalDateTimeImpl<D> plusSeconds(long j7) {
        return plusWithOverflow(this.date, 0L, 0L, j7, 0L);
    }

    @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        return temporalField instanceof ChronoField ? temporalField.isTimeBased() ? this.time.range(temporalField) : this.date.range(temporalField) : temporalField.rangeRefinedBy(this);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public D toLocalDate() {
        return this.date;
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime
    public LocalTime toLocalTime() {
        return this.time;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [org.threeten.bp.chrono.ChronoLocalDate] */
    @Override // org.threeten.bp.temporal.Temporal
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        ChronoLocalDateTime<?> localDateTime = toLocalDate().getChronology().localDateTime(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, localDateTime);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        if (!chronoUnit.isTimeBased()) {
            ?? localDate = localDateTime.toLocalDate();
            ChronoLocalDate chronoLocalDate = localDate;
            if (localDateTime.toLocalTime().isBefore(this.time)) {
                chronoLocalDate = localDate.minus(1L, ChronoUnit.DAYS);
            }
            return this.date.until(chronoLocalDate, temporalUnit);
        }
        ChronoField chronoField = ChronoField.EPOCH_DAY;
        long j7 = localDateTime.getLong(chronoField) - this.date.getLong(chronoField);
        switch (AnonymousClass1.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[chronoUnit.ordinal()]) {
            case 1:
                j7 = Jdk8Methods.safeMultiply(j7, NANOS_PER_DAY);
                break;
            case 2:
                j7 = Jdk8Methods.safeMultiply(j7, MICROS_PER_DAY);
                break;
            case 3:
                j7 = Jdk8Methods.safeMultiply(j7, 86400000L);
                break;
            case 4:
                j7 = Jdk8Methods.safeMultiply(j7, SECONDS_PER_DAY);
                break;
            case 5:
                j7 = Jdk8Methods.safeMultiply(j7, MINUTES_PER_DAY);
                break;
            case 6:
                j7 = Jdk8Methods.safeMultiply(j7, 24);
                break;
            case 7:
                j7 = Jdk8Methods.safeMultiply(j7, 2);
                break;
        }
        return Jdk8Methods.safeAdd(j7, this.time.until(localDateTime.toLocalTime(), temporalUnit));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.date);
        objectOutput.writeObject(this.time);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.temporal.Temporal
    public ChronoLocalDateTimeImpl<D> plus(long j7, TemporalUnit temporalUnit) {
        if (temporalUnit instanceof ChronoUnit) {
            switch (AnonymousClass1.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
                case 1:
                    return plusNanos(j7);
                case 2:
                    return plusDays(j7 / MICROS_PER_DAY).plusNanos((j7 % MICROS_PER_DAY) * 1000);
                case 3:
                    return plusDays(j7 / 86400000).plusNanos((j7 % 86400000) * 1000000);
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
        return this.date.getChronology().ensureChronoLocalDateTime(temporalUnit.addTo(this, j7));
    }

    @Override // org.threeten.bp.temporal.Temporal
    public boolean isSupported(TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? temporalUnit.isDateBased() || temporalUnit.isTimeBased() : temporalUnit != null && temporalUnit.isSupportedBy(this);
    }

    private ChronoLocalDateTimeImpl<D> with(Temporal temporal, LocalTime localTime) {
        D d7 = this.date;
        return (d7 == temporal && this.time == localTime) ? this : new ChronoLocalDateTimeImpl<>(d7.getChronology().ensureChronoLocalDate(temporal), localTime);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.jdk8.DefaultInterfaceTemporal, org.threeten.bp.temporal.Temporal
    public ChronoLocalDateTimeImpl<D> with(TemporalAdjuster temporalAdjuster) {
        if (temporalAdjuster instanceof ChronoLocalDate) {
            return with((ChronoLocalDate) temporalAdjuster, this.time);
        }
        if (temporalAdjuster instanceof LocalTime) {
            return with(this.date, (LocalTime) temporalAdjuster);
        }
        if (temporalAdjuster instanceof ChronoLocalDateTimeImpl) {
            return this.date.getChronology().ensureChronoLocalDateTime((ChronoLocalDateTimeImpl) temporalAdjuster);
        }
        return this.date.getChronology().ensureChronoLocalDateTime((ChronoLocalDateTimeImpl) temporalAdjuster.adjustInto(this));
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDateTime, org.threeten.bp.temporal.Temporal
    public ChronoLocalDateTimeImpl<D> with(TemporalField temporalField, long j7) {
        if (temporalField instanceof ChronoField) {
            if (temporalField.isTimeBased()) {
                return with(this.date, this.time.with(temporalField, j7));
            }
            return with(this.date.with(temporalField, j7), this.time);
        }
        return this.date.getChronology().ensureChronoLocalDateTime(temporalField.adjustInto(this, j7));
    }
}
