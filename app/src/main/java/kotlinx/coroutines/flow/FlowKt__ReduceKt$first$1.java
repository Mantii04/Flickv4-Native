package kotlinx.coroutines.flow;

import A5.d;
import U5.j;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;

@d(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {183}, m = "first")
/* loaded from: classes2.dex */
public final class FlowKt__ReduceKt$first$1<T> extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public Ref$ObjectRef f17570b;

    /* renamed from: e, reason: collision with root package name */
    public j f17571e;

    /* renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f17572f;

    /* renamed from: j, reason: collision with root package name */
    public int f17573j;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f17572f = obj;
        this.f17573j |= Integer.MIN_VALUE;
        return U5.d.first(null, this);
    }
}
