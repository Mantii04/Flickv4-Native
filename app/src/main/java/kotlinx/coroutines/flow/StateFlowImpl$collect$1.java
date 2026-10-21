package kotlinx.coroutines.flow;

import A5.d;
import R5.InterfaceC0294q0;
import U5.c;
import U5.n;
import androidx.media3.exoplayer.RendererCapabilities;
import cz.msebera.android.httpclient.HttpStatus;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {RendererCapabilities.DECODER_SUPPORT_MASK, 396, HttpStatus.SC_UNAUTHORIZED}, m = "collect")
/* loaded from: classes2.dex */
public final class StateFlowImpl$collect$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public StateFlowImpl f17576b;

    /* renamed from: e, reason: collision with root package name */
    public c f17577e;

    /* renamed from: f, reason: collision with root package name */
    public n f17578f;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC0294q0 f17579j;

    /* renamed from: m, reason: collision with root package name */
    public Object f17580m;

    /* renamed from: n, reason: collision with root package name */
    public /* synthetic */ Object f17581n;

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ StateFlowImpl f17582p;

    /* renamed from: q, reason: collision with root package name */
    public int f17583q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateFlowImpl$collect$1(StateFlowImpl stateFlowImpl, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f17582p = stateFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f17581n = obj;
        this.f17583q |= Integer.MIN_VALUE;
        return this.f17582p.collect(null, this);
    }
}
