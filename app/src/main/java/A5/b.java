package A5;

import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class b implements InterfaceC1944c {

    /* renamed from: b, reason: collision with root package name */
    public static final b f106b = new b();

    @Override // y5.InterfaceC1944c
    public InterfaceC1952k getContext() {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override // y5.InterfaceC1944c
    public void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
