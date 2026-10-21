package W5;

import R5.AbstractC0261a;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public class C extends AbstractC0261a implements A5.c {

    /* renamed from: j, reason: collision with root package name */
    public final InterfaceC1944c f4175j;

    public C(InterfaceC1952k interfaceC1952k, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1952k, true, true);
        this.f4175j = interfaceC1944c;
    }

    @Override // R5.A0
    public void afterCompletion(Object obj) {
        InterfaceC1944c interfaceC1944c = this.f4175j;
        AbstractC0363j.resumeCancellableWith$default(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), R5.D.recoverResult(obj, interfaceC1944c), null, 2, null);
    }

    @Override // R5.AbstractC0261a
    public void afterResume(Object obj) {
        InterfaceC1944c interfaceC1944c = this.f4175j;
        interfaceC1944c.resumeWith(R5.D.recoverResult(obj, interfaceC1944c));
    }

    @Override // A5.c
    public final A5.c getCallerFrame() {
        InterfaceC1944c interfaceC1944c = this.f4175j;
        if (interfaceC1944c instanceof A5.c) {
            return (A5.c) interfaceC1944c;
        }
        return null;
    }

    @Override // R5.A0
    public final boolean isScopedCoroutine() {
        return true;
    }
}
