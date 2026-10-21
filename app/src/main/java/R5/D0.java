package R5;

import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class D0 extends K0 {

    /* renamed from: j, reason: collision with root package name */
    public final InterfaceC1944c f3144j;

    public D0(InterfaceC1952k interfaceC1952k, H5.p pVar) {
        super(interfaceC1952k, false);
        this.f3144j = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(pVar, this, this);
    }

    @Override // R5.A0
    public void onStart() {
        X5.a.startCoroutineCancellable(this.f3144j, this);
    }
}
