package Q5;

import kotlin.jvm.internal.j;
import kotlin.time.DurationUnit;

/* loaded from: classes2.dex */
public abstract class e {
    public static final long convertDurationUnit(long j7, DurationUnit sourceUnit, DurationUnit targetUnit) {
        j.checkNotNullParameter(sourceUnit, "sourceUnit");
        j.checkNotNullParameter(targetUnit, "targetUnit");
        return targetUnit.getTimeUnit$kotlin_stdlib().convert(j7, sourceUnit.getTimeUnit$kotlin_stdlib());
    }

    public static final long convertDurationUnitOverflow(long j7, DurationUnit sourceUnit, DurationUnit targetUnit) {
        j.checkNotNullParameter(sourceUnit, "sourceUnit");
        j.checkNotNullParameter(targetUnit, "targetUnit");
        return targetUnit.getTimeUnit$kotlin_stdlib().convert(j7, sourceUnit.getTimeUnit$kotlin_stdlib());
    }
}
