package Q5;

import M5.g;
import androidx.media3.common.PlaybackException;
import kotlin.jvm.internal.j;
import kotlin.time.DurationUnit;

/* loaded from: classes2.dex */
public abstract class d {
    public static final long access$millisToNanos(long j7) {
        return j7 * PlaybackException.CUSTOM_ERROR_CODE_BASE;
    }

    public static final long toDuration(int i2, DurationUnit unit) {
        j.checkNotNullParameter(unit, "unit");
        return unit.compareTo(DurationUnit.f17471j) <= 0 ? b.m5constructorimpl(e.convertDurationUnitOverflow(i2, unit, DurationUnit.f17469e) << 1) : toDuration(i2, unit);
    }

    public static final long toDuration(long j7, DurationUnit unit) {
        j.checkNotNullParameter(unit, "unit");
        DurationUnit durationUnit = DurationUnit.f17469e;
        long convertDurationUnitOverflow = e.convertDurationUnitOverflow(4611686018426999999L, durationUnit, unit);
        if ((-convertDurationUnitOverflow) <= j7 && j7 <= convertDurationUnitOverflow) {
            return b.m5constructorimpl(e.convertDurationUnitOverflow(j7, unit, durationUnit) << 1);
        }
        return b.m5constructorimpl((g.coerceIn(e.convertDurationUnit(j7, unit, DurationUnit.f17470f), -4611686018427387903L, 4611686018427387903L) << 1) + 1);
    }
}
