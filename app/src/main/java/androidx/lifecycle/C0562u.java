package androidx.lifecycle;

/* renamed from: androidx.lifecycle.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0562u {
    public C0562u(kotlin.jvm.internal.g gVar) {
    }

    public final Lifecycle$State min$lifecycle_runtime_release(Lifecycle$State state1, Lifecycle$State lifecycle$State) {
        kotlin.jvm.internal.j.checkNotNullParameter(state1, "state1");
        return (lifecycle$State == null || lifecycle$State.compareTo(state1) >= 0) ? state1 : lifecycle$State;
    }
}
