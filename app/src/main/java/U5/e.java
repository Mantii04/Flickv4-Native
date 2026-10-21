package U5;

import H5.p;
import kotlinx.coroutines.flow.CallbackFlowBuilder;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class e {
    public static final <T> b callbackFlow(p pVar) {
        return new CallbackFlowBuilder(pVar, null, 0, null, 14, null);
    }

    public static final <T> b flow(p pVar) {
        return new l(pVar);
    }
}
