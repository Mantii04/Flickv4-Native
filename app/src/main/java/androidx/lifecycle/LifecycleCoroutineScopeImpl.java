package androidx.lifecycle;

import R5.AbstractC0301u0;
import y5.InterfaceC1952k;

/* loaded from: classes.dex */
public final class LifecycleCoroutineScopeImpl implements r, R5.I {
    @Override // R5.I
    public InterfaceC1952k getCoroutineContext() {
        return null;
    }

    public AbstractC0557o getLifecycle$lifecycle_common() {
        return null;
    }

    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        if (getLifecycle$lifecycle_common().getCurrentState().compareTo(Lifecycle$State.f6967b) <= 0) {
            getLifecycle$lifecycle_common().removeObserver(this);
            AbstractC0301u0.cancel$default(getCoroutineContext(), null, 1, null);
        }
    }
}
