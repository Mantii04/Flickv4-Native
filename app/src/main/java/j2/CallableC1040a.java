package j2;

import java.util.concurrent.Callable;

/* renamed from: j2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC1040a implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1045f f16944b;

    public CallableC1040a(C1045f c1045f) {
        this.f16944b = c1045f;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        synchronized (this.f16944b) {
            try {
                C1045f c1045f = this.f16944b;
                if (c1045f.f16965r == null) {
                    return null;
                }
                c1045f.k();
                if (this.f16944b.e()) {
                    this.f16944b.i();
                    this.f16944b.f16967t = 0;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
