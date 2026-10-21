package androidx.fragment.app.strictmode;

import android.view.ViewGroup;
import androidx.fragment.app.C;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class FragmentTagUsageViolation extends Violation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentTagUsageViolation(C fragment, ViewGroup viewGroup) {
        super(fragment, "Attempting to use <fragment> tag to add fragment " + fragment + " to container " + viewGroup);
        j.checkNotNullParameter(fragment, "fragment");
    }
}
