package kotlinx.coroutines.flow;

import H5.p;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.g;
import kotlinx.coroutines.channels.BufferOverflow;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class CallbackFlowBuilder extends U5.a {
    public /* synthetic */ CallbackFlowBuilder(p pVar, InterfaceC1952k interfaceC1952k, int i2, BufferOverflow bufferOverflow, int i7, g gVar) {
        this(pVar, (i7 & 2) != 0 ? EmptyCoroutineContext.f17433b : interfaceC1952k, (i7 & 4) != 0 ? -2 : i2, (i7 & 8) != 0 ? BufferOverflow.f17486b : bufferOverflow);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // U5.a, kotlinx.coroutines.flow.internal.ChannelFlow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collectTo(T5.p r5, y5.InterfaceC1944c r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = (kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1) r0
            int r1 = r0.f17539j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f17539j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = new kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f17537e
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f17539j
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            T5.p r5 = r0.f17536b
            kotlin.b.throwOnFailure(r6)
            goto L41
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.b.throwOnFailure(r6)
            r0.f17536b = r5
            r0.f17539j = r3
            java.lang.Object r6 = super.collectTo(r5, r0)
            if (r6 != r1) goto L41
            return r1
        L41:
            T5.d r5 = (T5.d) r5
            boolean r5 = r5.isClosedForSend()
            if (r5 == 0) goto L4c
            u5.j r5 = u5.C1711j.f20329a
            return r5
        L4c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.CallbackFlowBuilder.collectTo(T5.p, y5.c):java.lang.Object");
    }

    public CallbackFlowBuilder(p pVar, InterfaceC1952k interfaceC1952k, int i2, BufferOverflow bufferOverflow) {
        super(pVar, interfaceC1952k, i2, bufferOverflow);
    }
}
