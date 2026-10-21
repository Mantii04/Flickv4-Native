package androidx.lifecycle;

/* renamed from: androidx.lifecycle.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0567z implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C f7057b;

    public RunnableC0567z(C c7) {
        this.f7057b = c7;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        synchronized (this.f7057b.f6940a) {
            obj = this.f7057b.f6945f;
            this.f7057b.f6945f = C.f6939k;
        }
        this.f7057b.setValue(obj);
    }
}
