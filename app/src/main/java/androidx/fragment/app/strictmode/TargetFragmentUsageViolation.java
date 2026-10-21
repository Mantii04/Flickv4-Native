package androidx.fragment.app.strictmode;

import androidx.fragment.app.C;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public abstract class TargetFragmentUsageViolation extends Violation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TargetFragmentUsageViolation(C fragment, String str) {
        super(fragment, str);
        j.checkNotNullParameter(fragment, "fragment");
    }
}
