package J1;

import K1.E;
import K1.V;

/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1479b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f1480e;

    public b(d dVar, String str) {
        this.f1480e = dVar;
        this.f1479b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        E runningWorkSpec = this.f1480e.f1482b.getProcessor().getRunningWorkSpec(this.f1479b);
        if (runningWorkSpec == null || !runningWorkSpec.hasConstraints()) {
            return;
        }
        synchronized (this.f1480e.f1484f) {
            this.f1480e.f1487n.put(V.generationalId(runningWorkSpec), runningWorkSpec);
            this.f1480e.f1488p.add(runningWorkSpec);
            d dVar = this.f1480e;
            dVar.f1489q.replace(dVar.f1488p);
        }
    }
}
