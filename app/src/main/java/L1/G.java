package L1;

import C1.C0066d;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class G {

    /* renamed from: e, reason: collision with root package name */
    public static final String f1854e = B1.t.tagWithPrefix("WorkTimer");

    /* renamed from: a, reason: collision with root package name */
    public final B1.G f1855a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1856b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f1857c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final Object f1858d = new Object();

    public G(B1.G g7) {
        this.f1855a = g7;
    }

    public void startTimer(K1.r rVar, long j7, E e3) {
        synchronized (this.f1858d) {
            B1.t.get().debug(f1854e, "Starting timer for " + rVar);
            stopTimer(rVar);
            F f3 = new F(this, rVar);
            this.f1856b.put(rVar, f3);
            this.f1857c.put(rVar, e3);
            ((C0066d) this.f1855a).scheduleWithDelay(j7, f3);
        }
    }

    public void stopTimer(K1.r rVar) {
        synchronized (this.f1858d) {
            try {
                if (((F) this.f1856b.remove(rVar)) != null) {
                    B1.t.get().debug(f1854e, "Stopping timer for " + rVar);
                    this.f1857c.remove(rVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
