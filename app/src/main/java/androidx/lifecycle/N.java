package androidx.lifecycle;

import android.app.Activity;
import androidx.lifecycle.O;

/* loaded from: classes.dex */
public final class N {
    public N(kotlin.jvm.internal.g gVar) {
    }

    public final void registerIn(Activity activity) {
        kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
        activity.registerActivityLifecycleCallbacks(new O.a());
    }
}
