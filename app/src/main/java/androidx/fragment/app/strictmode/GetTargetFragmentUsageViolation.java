package androidx.fragment.app.strictmode;

import androidx.fragment.app.C;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class GetTargetFragmentUsageViolation extends TargetFragmentUsageViolation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTargetFragmentUsageViolation(C fragment) {
        super(fragment, "Attempting to get target fragment from fragment " + fragment);
        j.checkNotNullParameter(fragment, "fragment");
    }
}
