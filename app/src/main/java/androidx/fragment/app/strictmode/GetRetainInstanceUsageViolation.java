package androidx.fragment.app.strictmode;

import androidx.fragment.app.C;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class GetRetainInstanceUsageViolation extends RetainInstanceUsageViolation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetRetainInstanceUsageViolation(C fragment) {
        super(fragment, "Attempting to get retain instance for fragment " + fragment);
        j.checkNotNullParameter(fragment, "fragment");
    }
}
