package androidx.lifecycle;

/* renamed from: androidx.lifecycle.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0555m {
    public C0555m(kotlin.jvm.internal.g gVar) {
    }

    public final Lifecycle$Event downFrom(Lifecycle$State state) {
        kotlin.jvm.internal.j.checkNotNullParameter(state, "state");
        int ordinal = state.ordinal();
        if (ordinal == 2) {
            return Lifecycle$Event.ON_DESTROY;
        }
        if (ordinal == 3) {
            return Lifecycle$Event.ON_STOP;
        }
        if (ordinal != 4) {
            return null;
        }
        return Lifecycle$Event.ON_PAUSE;
    }

    public final Lifecycle$Event upFrom(Lifecycle$State state) {
        kotlin.jvm.internal.j.checkNotNullParameter(state, "state");
        int ordinal = state.ordinal();
        if (ordinal == 1) {
            return Lifecycle$Event.ON_CREATE;
        }
        if (ordinal == 2) {
            return Lifecycle$Event.ON_START;
        }
        if (ordinal != 3) {
            return null;
        }
        return Lifecycle$Event.ON_RESUME;
    }

    public final Lifecycle$Event upTo(Lifecycle$State state) {
        kotlin.jvm.internal.j.checkNotNullParameter(state, "state");
        int ordinal = state.ordinal();
        if (ordinal == 2) {
            return Lifecycle$Event.ON_CREATE;
        }
        if (ordinal == 3) {
            return Lifecycle$Event.ON_START;
        }
        if (ordinal != 4) {
            return null;
        }
        return Lifecycle$Event.ON_RESUME;
    }
}
