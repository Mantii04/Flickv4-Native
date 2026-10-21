package M5;

import kotlin.jvm.internal.j;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes2.dex */
public abstract class f {
    public static final void checkStepIsPositive(boolean z6, Number step) {
        j.checkNotNullParameter(step, "step");
        if (z6) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + ClassUtils.PACKAGE_SEPARATOR_CHAR);
    }
}
