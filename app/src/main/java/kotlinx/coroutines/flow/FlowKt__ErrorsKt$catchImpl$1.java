package kotlinx.coroutines.flow;

import A5.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;

@d(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", f = "Errors.kt", l = {156}, m = "catchImpl")
/* loaded from: classes2.dex */
public final class FlowKt__ErrorsKt$catchImpl$1<T> extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public Ref$ObjectRef f17553b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f17554e;

    /* renamed from: f, reason: collision with root package name */
    public int f17555f;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f17554e = obj;
        this.f17555f |= Integer.MIN_VALUE;
        return U5.d.catchImpl(null, null, this);
    }
}
