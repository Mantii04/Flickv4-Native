package kotlinx.coroutines.flow;

import A5.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2", f = "Errors.kt", l = {158}, m = "emit")
/* loaded from: classes2.dex */
public final class FlowKt__ErrorsKt$catchImpl$2$emit$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public FlowKt__ErrorsKt$catchImpl$2 f17558b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f17559e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ FlowKt__ErrorsKt$catchImpl$2 f17560f;

    /* renamed from: j, reason: collision with root package name */
    public int f17561j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ErrorsKt$catchImpl$2$emit$1(FlowKt__ErrorsKt$catchImpl$2 flowKt__ErrorsKt$catchImpl$2, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f17560f = flowKt__ErrorsKt$catchImpl$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f17559e = obj;
        this.f17561j |= Integer.MIN_VALUE;
        return this.f17560f.emit(null, this);
    }
}
