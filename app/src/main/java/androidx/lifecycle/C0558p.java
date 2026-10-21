package androidx.lifecycle;

import android.app.Activity;
import android.os.Bundle;

/* renamed from: androidx.lifecycle.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0558p extends AbstractC0550h {
    @Override // androidx.lifecycle.AbstractC0550h, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
        O.f6973e.injectIfNeededIn(activity);
    }
}
