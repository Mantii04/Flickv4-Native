package L1;

import B1.C0029i;
import K1.U;
import K1.V;
import android.content.Context;
import java.util.UUID;

/* loaded from: classes.dex */
public final class B implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ M1.g f1844b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UUID f1845e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0029i f1846f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Context f1847j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ C f1848m;

    public B(C c7, M1.g gVar, UUID uuid, C0029i c0029i, Context context) {
        this.f1848m = c7;
        this.f1844b = gVar;
        this.f1845e = uuid;
        this.f1846f = c0029i;
        this.f1847j = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context = this.f1847j;
        C0029i c0029i = this.f1846f;
        C c7 = this.f1848m;
        M1.g gVar = this.f1844b;
        try {
            if (!gVar.isCancelled()) {
                String uuid = this.f1845e.toString();
                K1.E workSpec = ((U) c7.f1851c).getWorkSpec(uuid);
                if (workSpec == null || workSpec.f1595b.isFinished()) {
                    throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                }
                ((C1.r) c7.f1850b).startForeground(uuid, c0029i);
                context.startService(J1.d.createNotifyIntent(context, V.generationalId(workSpec), c0029i));
            }
            gVar.set(null);
        } catch (Throwable th) {
            gVar.setException(th);
        }
    }
}
