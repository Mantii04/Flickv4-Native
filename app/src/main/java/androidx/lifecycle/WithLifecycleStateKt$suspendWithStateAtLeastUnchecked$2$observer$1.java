package androidx.lifecycle;

/* loaded from: classes.dex */
public final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 implements r {
    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        if (event == Lifecycle$Event.Companion.upTo(null)) {
            throw null;
        }
        if (event == Lifecycle$Event.ON_DESTROY) {
            throw null;
        }
    }
}
