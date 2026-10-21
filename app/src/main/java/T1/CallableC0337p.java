package T1;

import java.util.concurrent.Callable;

/* renamed from: T1.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC0337p implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0330i f3633b;

    public CallableC0337p(C0330i c0330i) {
        this.f3633b = c0330i;
    }

    @Override // java.util.concurrent.Callable
    public L call() {
        return new L(this.f3633b);
    }
}
