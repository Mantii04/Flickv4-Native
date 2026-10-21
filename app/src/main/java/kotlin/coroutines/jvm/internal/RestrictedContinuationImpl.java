package kotlin.coroutines.jvm.internal;

import kotlin.coroutines.EmptyCoroutineContext;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class RestrictedContinuationImpl extends BaseContinuationImpl {
    public RestrictedContinuationImpl(InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        if (interfaceC1944c != null && interfaceC1944c.getContext() != EmptyCoroutineContext.f17433b) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    @Override // y5.InterfaceC1944c
    public InterfaceC1952k getContext() {
        return EmptyCoroutineContext.f17433b;
    }
}
