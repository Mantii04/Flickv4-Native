package B1;

import androidx.work.Worker;

/* loaded from: classes.dex */
public final class N implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ M1.g f153b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Worker f154e;

    public N(Worker worker, M1.g gVar) {
        this.f154e = worker;
        this.f153b = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        M1.g gVar = this.f153b;
        try {
            gVar.set(this.f154e.getForegroundInfo());
        } catch (Throwable th) {
            gVar.setException(th);
        }
    }
}
