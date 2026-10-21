package kotlinx.coroutines.channels;

import A5.d;
import H5.p;
import R5.I;
import T5.j;
import T5.s;
import kotlin.Result;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", l = {39}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class ChannelsKt__ChannelsKt$trySendBlocking$2 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f17524b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f17525e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ s f17526f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f17527j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__ChannelsKt$trySendBlocking$2(s sVar, Object obj, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f17526f = sVar;
        this.f17527j = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        ChannelsKt__ChannelsKt$trySendBlocking$2 channelsKt__ChannelsKt$trySendBlocking$2 = new ChannelsKt__ChannelsKt$trySendBlocking$2(this.f17526f, this.f17527j, interfaceC1944c);
        channelsKt__ChannelsKt$trySendBlocking$2.f17525e = obj;
        return channelsKt__ChannelsKt$trySendBlocking$2;
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((ChannelsKt__ChannelsKt$trySendBlocking$2) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object m103constructorimpl;
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f17524b;
        C1711j c1711j = C1711j.f20329a;
        try {
            if (i2 == 0) {
                b.throwOnFailure(obj);
                s sVar = this.f17526f;
                Object obj2 = this.f17527j;
                int i7 = Result.f17390b;
                this.f17524b = 1;
                if (sVar.send(obj2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                b.throwOnFailure(obj);
            }
            m103constructorimpl = Result.m103constructorimpl(c1711j);
        } catch (Throwable th) {
            int i8 = Result.f17390b;
            m103constructorimpl = Result.m103constructorimpl(b.createFailure(th));
        }
        return j.m33boximpl(Result.m106isSuccessimpl(m103constructorimpl) ? j.f3732b.m32successJP2dKIU(c1711j) : j.f3732b.m30closedJP2dKIU(Result.m104exceptionOrNullimpl(m103constructorimpl)));
    }
}
