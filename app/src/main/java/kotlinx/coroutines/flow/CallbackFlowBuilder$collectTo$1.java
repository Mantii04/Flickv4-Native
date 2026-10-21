package kotlinx.coroutines.flow;

import A5.d;
import T5.p;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "kotlinx.coroutines.flow.CallbackFlowBuilder", f = "Builders.kt", l = {334}, m = "collectTo")
/* loaded from: classes2.dex */
public final class CallbackFlowBuilder$collectTo$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public p f17536b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f17537e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CallbackFlowBuilder f17538f;

    /* renamed from: j, reason: collision with root package name */
    public int f17539j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallbackFlowBuilder$collectTo$1(CallbackFlowBuilder callbackFlowBuilder, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f17538f = callbackFlowBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f17537e = obj;
        this.f17539j |= Integer.MIN_VALUE;
        return this.f17538f.collectTo(null, this);
    }
}
