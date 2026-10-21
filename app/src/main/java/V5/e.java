package V5;

import kotlinx.coroutines.flow.internal.AbortFlowException;

/* loaded from: classes2.dex */
public abstract class e {
    public static final void checkOwnership(AbortFlowException abortFlowException, U5.c cVar) {
        if (abortFlowException.f17584b != cVar) {
            throw abortFlowException;
        }
    }
}
