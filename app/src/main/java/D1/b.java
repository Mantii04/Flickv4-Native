package D1;

import B1.G;
import B1.t;
import C1.C0066d;
import K1.E;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: d, reason: collision with root package name */
    public static final String f854d = t.tagWithPrefix("DelayedWorkTracker");

    /* renamed from: a, reason: collision with root package name */
    public final c f855a;

    /* renamed from: b, reason: collision with root package name */
    public final G f856b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f857c = new HashMap();

    public b(c cVar, G g7) {
        this.f855a = cVar;
        this.f856b = g7;
    }

    public void schedule(E e3) {
        HashMap hashMap = this.f857c;
        Runnable runnable = (Runnable) hashMap.remove(e3.f1594a);
        G g7 = this.f856b;
        if (runnable != null) {
            ((C0066d) g7).cancel(runnable);
        }
        a aVar = new a(this, e3);
        hashMap.put(e3.f1594a, aVar);
        C0066d c0066d = (C0066d) g7;
        c0066d.scheduleWithDelay(e3.calculateNextRunTime() - System.currentTimeMillis(), aVar);
    }

    public void unschedule(String str) {
        Runnable runnable = (Runnable) this.f857c.remove(str);
        if (runnable != null) {
            ((C0066d) this.f856b).cancel(runnable);
        }
    }
}
