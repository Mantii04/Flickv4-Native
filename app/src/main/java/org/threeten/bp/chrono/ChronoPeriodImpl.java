package org.threeten.bp.chrono;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.Temporal;
import org.threeten.bp.temporal.TemporalAmount;
import org.threeten.bp.temporal.TemporalQueries;
import org.threeten.bp.temporal.TemporalUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;

/* loaded from: classes2.dex */
final class ChronoPeriodImpl extends ChronoPeriod implements Serializable {
    private static final long serialVersionUID = 275618735781L;
    private final Chronology chronology;
    private final int days;
    private final int months;
    private final int years;

    public ChronoPeriodImpl(Chronology chronology, int i2, int i7, int i8) {
        this.chronology = chronology;
        this.years = i2;
        this.months = i7;
        this.days = i8;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod, org.threeten.bp.temporal.TemporalAmount
    public Temporal addTo(Temporal temporal) {
        Jdk8Methods.requireNonNull(temporal, "temporal");
        Chronology chronology = (Chronology) temporal.query(TemporalQueries.chronology());
        if (chronology != null && !this.chronology.equals(chronology)) {
            throw new DateTimeException("Invalid chronology, required: " + this.chronology.getId() + ", but was: " + chronology.getId());
        }
        int i2 = this.years;
        if (i2 != 0) {
            temporal = temporal.plus(i2, ChronoUnit.YEARS);
        }
        int i7 = this.months;
        if (i7 != 0) {
            temporal = temporal.plus(i7, ChronoUnit.MONTHS);
        }
        int i8 = this.days;
        return i8 != 0 ? temporal.plus(i8, ChronoUnit.DAYS) : temporal;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChronoPeriodImpl) {
            ChronoPeriodImpl chronoPeriodImpl = (ChronoPeriodImpl) obj;
            if (this.years == chronoPeriodImpl.years && this.months == chronoPeriodImpl.months && this.days == chronoPeriodImpl.days && this.chronology.equals(chronoPeriodImpl.chronology)) {
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
        return this.chronology;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod, org.threeten.bp.temporal.TemporalAmount
    public List<TemporalUnit> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS));
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public int hashCode() {
        return Integer.rotateLeft(this.months, 8) + Integer.rotateLeft(this.years, 16) + this.chronology.hashCode() + this.days;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public ChronoPeriod minus(TemporalAmount temporalAmount) {
        if (temporalAmount instanceof ChronoPeriodImpl) {
            ChronoPeriodImpl chronoPeriodImpl = (ChronoPeriodImpl) temporalAmount;
            if (chronoPeriodImpl.getChronology().equals(getChronology())) {
                return new ChronoPeriodImpl(this.chronology, Jdk8Methods.safeSubtract(this.years, chronoPeriodImpl.years), Jdk8Methods.safeSubtract(this.months, chronoPeriodImpl.months), Jdk8Methods.safeSubtract(this.days, chronoPeriodImpl.days));
            }
        }
        throw new DateTimeException("Unable to subtract amount: " + temporalAmount);
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public ChronoPeriod multipliedBy(int i2) {
        return new ChronoPeriodImpl(this.chronology, Jdk8Methods.safeMultiply(this.years, i2), Jdk8Methods.safeMultiply(this.months, i2), Jdk8Methods.safeMultiply(this.days, i2));
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public ChronoPeriod normalized() {
        Chronology chronology = this.chronology;
        ChronoField chronoField = ChronoField.MONTH_OF_YEAR;
        if (!chronology.range(chronoField).isFixed()) {
            return this;
        }
        long maximum = (this.chronology.range(chronoField).getMaximum() - this.chronology.range(chronoField).getMinimum()) + 1;
        long j7 = (this.years * maximum) + this.months;
        return new ChronoPeriodImpl(this.chronology, Jdk8Methods.safeToInt(j7 / maximum), Jdk8Methods.safeToInt(j7 % maximum), this.days);
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public ChronoPeriod plus(TemporalAmount temporalAmount) {
        if (temporalAmount instanceof ChronoPeriodImpl) {
            ChronoPeriodImpl chronoPeriodImpl = (ChronoPeriodImpl) temporalAmount;
            if (chronoPeriodImpl.getChronology().equals(getChronology())) {
                return new ChronoPeriodImpl(this.chronology, Jdk8Methods.safeAdd(this.years, chronoPeriodImpl.years), Jdk8Methods.safeAdd(this.months, chronoPeriodImpl.months), Jdk8Methods.safeAdd(this.days, chronoPeriodImpl.days));
            }
        }
        throw new DateTimeException("Unable to add amount: " + temporalAmount);
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod, org.threeten.bp.temporal.TemporalAmount
    public Temporal subtractFrom(Temporal temporal) {
        Jdk8Methods.requireNonNull(temporal, "temporal");
        Chronology chronology = (Chronology) temporal.query(TemporalQueries.chronology());
        if (chronology != null && !this.chronology.equals(chronology)) {
            throw new DateTimeException("Invalid chronology, required: " + this.chronology.getId() + ", but was: " + chronology.getId());
        }
        int i2 = this.years;
        if (i2 != 0) {
            temporal = temporal.minus(i2, ChronoUnit.YEARS);
        }
        int i7 = this.months;
        if (i7 != 0) {
            temporal = temporal.minus(i7, ChronoUnit.MONTHS);
        }
        int i8 = this.days;
        return i8 != 0 ? temporal.minus(i8, ChronoUnit.DAYS) : temporal;
    }

    @Override // org.threeten.bp.chrono.ChronoPeriod
    public String toString() {
        if (isZero()) {
            return this.chronology + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.chronology);
        sb.append(" P");
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
}
