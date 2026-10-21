package kotlinx.coroutines.flow;

import A5.d;
import cz.msebera.android.httpclient.util.LangUtils;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1", f = "Limit.kt", l = {LangUtils.HASH_OFFSET, 38, 40}, m = "emit")
/* loaded from: classes2.dex */
public final class FlowKt__LimitKt$dropWhile$1$1$emit$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public FlowKt__LimitKt$dropWhile$1$1 f17565b;

    /* renamed from: e, reason: collision with root package name */
    public Object f17566e;

    /* renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f17567f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ FlowKt__LimitKt$dropWhile$1$1 f17568j;

    /* renamed from: m, reason: collision with root package name */
    public int f17569m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__LimitKt$dropWhile$1$1$emit$1(FlowKt__LimitKt$dropWhile$1$1 flowKt__LimitKt$dropWhile$1$1, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f17568j = flowKt__LimitKt$dropWhile$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f17567f = obj;
        this.f17569m |= Integer.MIN_VALUE;
        return this.f17568j.emit(null, this);
    }
}
