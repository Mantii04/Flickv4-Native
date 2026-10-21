package L;

import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class g extends f {

    /* renamed from: c, reason: collision with root package name */
    public final Object f1824c;

    public g(int i2) {
        super(i2);
        this.f1824c = new Object();
    }

    @Override // L.f, L.e
    public Object acquire() {
        Object acquire;
        synchronized (this.f1824c) {
            acquire = super.acquire();
        }
        return acquire;
    }

    @Override // L.f, L.e
    public boolean release(Object instance) {
        boolean release;
        j.checkNotNullParameter(instance, "instance");
        synchronized (this.f1824c) {
            release = super.release(instance);
        }
        return release;
    }
}
