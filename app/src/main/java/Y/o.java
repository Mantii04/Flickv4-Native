package Y;

import androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes.dex */
public final class o implements U5.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ U5.b f4263b;

    public o(U5.b bVar) {
        this.f4263b = bVar;
    }

    @Override // U5.b
    public Object collect(U5.c cVar, InterfaceC1944c interfaceC1944c) {
        Object collect = this.f4263b.collect(new SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2(cVar), interfaceC1944c);
        return collect == AbstractC2008a.getCOROUTINE_SUSPENDED() ? collect : C1711j.f20329a;
    }
}
