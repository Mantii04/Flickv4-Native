package W5;

import y5.InterfaceC1952k;

/* renamed from: W5.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0359f implements R5.I {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1952k f4190b;

    public C0359f(InterfaceC1952k interfaceC1952k) {
        this.f4190b = interfaceC1952k;
    }

    @Override // R5.I
    public InterfaceC1952k getCoroutineContext() {
        return this.f4190b;
    }

    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }
}
