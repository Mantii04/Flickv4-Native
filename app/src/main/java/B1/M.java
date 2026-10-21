package B1;

import androidx.work.Worker;

/* loaded from: classes.dex */
public final class M implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Worker f152b;

    public M(Worker worker) {
        this.f152b = worker;
    }

    @Override // java.lang.Runnable
    public void run() {
        Worker worker = this.f152b;
        try {
            worker.f8276m.set(worker.doWork());
        } catch (Throwable th) {
            worker.f8276m.setException(th);
        }
    }
}
