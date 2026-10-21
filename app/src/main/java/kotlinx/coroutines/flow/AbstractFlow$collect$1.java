package kotlinx.coroutines.flow;

import A5.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.SafeCollector;
import y5.InterfaceC1944c;

@d(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", l = {230}, m = "collect")
/* loaded from: classes2.dex */
public final class AbstractFlow$collect$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public SafeCollector f17532b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f17533e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AbstractFlow f17534f;

    /* renamed from: j, reason: collision with root package name */
    public int f17535j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractFlow$collect$1(AbstractFlow abstractFlow, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f17534f = abstractFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f17533e = obj;
        this.f17535j |= Integer.MIN_VALUE;
        return this.f17534f.collect(null, this);
    }
}
