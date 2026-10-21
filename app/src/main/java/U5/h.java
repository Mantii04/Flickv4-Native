package U5;

import H5.p;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class h implements b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f3798b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ p f3799e;

    public h(b bVar, p pVar) {
        this.f3798b = bVar;
        this.f3799e = pVar;
    }

    @Override // U5.b
    public Object collect(c cVar, InterfaceC1944c interfaceC1944c) {
        Object collect = this.f3798b.collect(new FlowKt__LimitKt$dropWhile$1$1(new Ref$BooleanRef(), cVar, this.f3799e), interfaceC1944c);
        return collect == AbstractC2008a.getCOROUTINE_SUSPENDED() ? collect : C1711j.f20329a;
    }
}
