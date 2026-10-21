package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import androidx.lifecycle.O;

/* loaded from: classes.dex */
public final class M {
    public M(kotlin.jvm.internal.g gVar) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void dispatch$lifecycle_runtime_release(Activity activity, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        if (activity instanceof InterfaceC0561t) {
            AbstractC0557o lifecycle = ((InterfaceC0561t) activity).getLifecycle();
            if (lifecycle instanceof C0564w) {
                ((C0564w) lifecycle).handleLifecycleEvent(event);
            }
        }
    }

    public final O get(Activity activity) {
        kotlin.jvm.internal.j.checkNotNullParameter(activity, "<this>");
        Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
        kotlin.jvm.internal.j.checkNotNull(findFragmentByTag, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment");
        return (O) findFragmentByTag;
    }

    public final void injectIfNeededIn(Activity activity) {
        kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
        if (Build.VERSION.SDK_INT >= 29) {
            O.a.Companion.registerIn(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new O(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }
}
