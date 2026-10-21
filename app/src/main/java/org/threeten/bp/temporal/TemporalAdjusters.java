package org.threeten.bp.temporal;

import org.threeten.bp.DayOfWeek;
import org.threeten.bp.jdk8.Jdk8Methods;

/* loaded from: classes2.dex */
public final class TemporalAdjusters {

    public static final class DayOfWeekInMonth implements TemporalAdjuster {
        private final int dowValue;
        private final int ordinal;

        @Override // org.threeten.bp.temporal.TemporalAdjuster
        public Temporal adjustInto(Temporal temporal) {
            if (this.ordinal >= 0) {
                return temporal.with(ChronoField.DAY_OF_MONTH, 1L).plus(((this.ordinal - 1) * 7) + (((this.dowValue - r10.get(ChronoField.DAY_OF_WEEK)) + 7) % 7), ChronoUnit.DAYS);
            }
            ChronoField chronoField = ChronoField.DAY_OF_MONTH;
            Temporal with = temporal.with(chronoField, temporal.range(chronoField).getMaximum());
            long j7 = this.dowValue - with.get(ChronoField.DAY_OF_WEEK);
            if (j7 == 0) {
                j7 = 0;
            } else if (j7 > 0) {
                j7 -= 7;
            }
            return with.plus(j7 - (((-this.ordinal) - 1) * 7), ChronoUnit.DAYS);
        }

        private DayOfWeekInMonth(int i2, DayOfWeek dayOfWeek) {
            this.ordinal = i2;
            this.dowValue = dayOfWeek.getValue();
        }
    }

    public static class Impl implements TemporalAdjuster {
        private final int ordinal;
        private static final Impl FIRST_DAY_OF_MONTH = new Impl(0);
        private static final Impl LAST_DAY_OF_MONTH = new Impl(1);
        private static final Impl FIRST_DAY_OF_NEXT_MONTH = new Impl(2);
        private static final Impl FIRST_DAY_OF_YEAR = new Impl(3);
        private static final Impl LAST_DAY_OF_YEAR = new Impl(4);
        private static final Impl FIRST_DAY_OF_NEXT_YEAR = new Impl(5);

        private Impl(int i2) {
            this.ordinal = i2;
        }

        @Override // org.threeten.bp.temporal.TemporalAdjuster
        public Temporal adjustInto(Temporal temporal) {
            int i2 = this.ordinal;
            if (i2 == 0) {
                return temporal.with(ChronoField.DAY_OF_MONTH, 1L);
            }
            if (i2 == 1) {
                ChronoField chronoField = ChronoField.DAY_OF_MONTH;
                return temporal.with(chronoField, temporal.range(chronoField).getMaximum());
            }
            if (i2 == 2) {
                return temporal.with(ChronoField.DAY_OF_MONTH, 1L).plus(1L, ChronoUnit.MONTHS);
            }
            if (i2 == 3) {
                return temporal.with(ChronoField.DAY_OF_YEAR, 1L);
            }
            if (i2 == 4) {
                ChronoField chronoField2 = ChronoField.DAY_OF_YEAR;
                return temporal.with(chronoField2, temporal.range(chronoField2).getMaximum());
            }
            if (i2 == 5) {
                return temporal.with(ChronoField.DAY_OF_YEAR, 1L).plus(1L, ChronoUnit.YEARS);
            }
            throw new IllegalStateException("Unreachable");
        }
    }

    public static final class RelativeDayOfWeek implements TemporalAdjuster {
        private final int dowValue;
        private final int relative;

        @Override // org.threeten.bp.temporal.TemporalAdjuster
        public Temporal adjustInto(Temporal temporal) {
            int i2 = temporal.get(ChronoField.DAY_OF_WEEK);
            int i7 = this.relative;
            if (i7 < 2 && i2 == this.dowValue) {
                return temporal;
            }
            if ((i7 & 1) == 0) {
                return temporal.plus(i2 - this.dowValue >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
            }
            return temporal.minus(this.dowValue - i2 >= 0 ? 7 - r1 : -r1, ChronoUnit.DAYS);
        }

        private RelativeDayOfWeek(int i2, DayOfWeek dayOfWeek) {
            Jdk8Methods.requireNonNull(dayOfWeek, "dayOfWeek");
            this.relative = i2;
            this.dowValue = dayOfWeek.getValue();
        }
    }

    private TemporalAdjusters() {
    }

    public static TemporalAdjuster dayOfWeekInMonth(int i2, DayOfWeek dayOfWeek) {
        Jdk8Methods.requireNonNull(dayOfWeek, "dayOfWeek");
        return new DayOfWeekInMonth(i2, dayOfWeek);
    }

    public static TemporalAdjuster firstDayOfMonth() {
        return Impl.FIRST_DAY_OF_MONTH;
    }

    public static TemporalAdjuster firstDayOfNextMonth() {
        return Impl.FIRST_DAY_OF_NEXT_MONTH;
    }

    public static TemporalAdjuster firstDayOfNextYear() {
        return Impl.FIRST_DAY_OF_NEXT_YEAR;
    }

    public static TemporalAdjuster firstDayOfYear() {
        return Impl.FIRST_DAY_OF_YEAR;
    }

    public static TemporalAdjuster firstInMonth(DayOfWeek dayOfWeek) {
        Jdk8Methods.requireNonNull(dayOfWeek, "dayOfWeek");
        return new DayOfWeekInMonth(1, dayOfWeek);
    }

    public static TemporalAdjuster lastDayOfMonth() {
        return Impl.LAST_DAY_OF_MONTH;
    }

    public static TemporalAdjuster lastDayOfYear() {
        return Impl.LAST_DAY_OF_YEAR;
    }

    public static TemporalAdjuster lastInMonth(DayOfWeek dayOfWeek) {
        Jdk8Methods.requireNonNull(dayOfWeek, "dayOfWeek");
        return new DayOfWeekInMonth(-1, dayOfWeek);
    }

    public static TemporalAdjuster next(DayOfWeek dayOfWeek) {
        return new RelativeDayOfWeek(2, dayOfWeek);
    }

    public static TemporalAdjuster nextOrSame(DayOfWeek dayOfWeek) {
        return new RelativeDayOfWeek(0, dayOfWeek);
    }

    public static TemporalAdjuster previous(DayOfWeek dayOfWeek) {
        return new RelativeDayOfWeek(3, dayOfWeek);
    }

    public static TemporalAdjuster previousOrSame(DayOfWeek dayOfWeek) {
        return new RelativeDayOfWeek(1, dayOfWeek);
    }
}
