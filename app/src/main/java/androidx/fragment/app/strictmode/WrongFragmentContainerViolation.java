package androidx.fragment.app.strictmode;

import android.view.ViewGroup;
import androidx.fragment.app.C;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class WrongFragmentContainerViolation extends Violation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrongFragmentContainerViolation(C fragment, ViewGroup container) {
        super(fragment, "Attempting to add fragment " + fragment + " to container " + container + " which is not a FragmentContainerView");
        j.checkNotNullParameter(fragment, "fragment");
        j.checkNotNullParameter(container, "container");
    }
}
