package R5;

import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class P0 extends E {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f3155f = 0;

    static {
        new P0();
    }

    @Override // R5.E
    public void dispatch(InterfaceC1952k interfaceC1952k, Runnable runnable) {
        if (interfaceC1952k.get(U0.f3162e) != null) {
            throw new ClassCastException();
        }
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // R5.E
    public boolean isDispatchNeeded(InterfaceC1952k interfaceC1952k) {
        return false;
    }

    @Override // R5.E
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
