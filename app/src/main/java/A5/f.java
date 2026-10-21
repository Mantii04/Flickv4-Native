package A5;

import kotlin.jvm.internal.j;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public abstract class f {
    public static final <T> InterfaceC1944c probeCoroutineCreated(InterfaceC1944c completion) {
        j.checkNotNullParameter(completion, "completion");
        return completion;
    }

    public static final void probeCoroutineResumed(InterfaceC1944c frame) {
        j.checkNotNullParameter(frame, "frame");
    }

    public static final void probeCoroutineSuspended(InterfaceC1944c frame) {
        j.checkNotNullParameter(frame, "frame");
    }
}
