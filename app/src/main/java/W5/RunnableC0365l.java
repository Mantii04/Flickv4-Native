package W5;

import kotlin.coroutines.EmptyCoroutineContext;

/* renamed from: W5.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC0365l implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public Runnable f4199b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0366m f4200e;

    public RunnableC0365l(C0366m c0366m, Runnable runnable) {
        this.f4200e = c0366m;
        this.f4199b = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable a7;
        R5.E e3;
        R5.E e7;
        int i2 = 0;
        while (true) {
            try {
                this.f4199b.run();
            } catch (Throwable th) {
                R5.G.handleCoroutineException(EmptyCoroutineContext.f17433b, th);
            }
            C0366m c0366m = this.f4200e;
            a7 = c0366m.a();
            if (a7 == null) {
                return;
            }
            this.f4199b = a7;
            i2++;
            if (i2 >= 16) {
                e3 = c0366m.f4202f;
                if (e3.isDispatchNeeded(c0366m)) {
                    e7 = c0366m.f4202f;
                    e7.dispatch(c0366m, this);
                    return;
                }
            }
        }
    }
}
