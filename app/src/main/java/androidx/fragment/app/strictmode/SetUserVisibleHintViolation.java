package androidx.fragment.app.strictmode;

import androidx.fragment.app.C;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class SetUserVisibleHintViolation extends Violation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetUserVisibleHintViolation(C fragment, boolean z6) {
        super(fragment, "Attempting to set user visible hint to " + z6 + " for fragment " + fragment);
        j.checkNotNullParameter(fragment, "fragment");
    }
}
