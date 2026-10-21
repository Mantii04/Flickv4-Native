package E1;

import B1.t;
import K1.r;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f939b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h f940e;

    public /* synthetic */ g(h hVar, int i2) {
        this.f939b = i2;
        this.f940e = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f939b) {
            case 0:
                h.a(this.f940e);
                break;
            default:
                h hVar = this.f940e;
                int i2 = hVar.f948p;
                String str = h.f941v;
                r rVar = hVar.f944f;
                if (i2 != 0) {
                    t.get().debug(str, "Already started work for " + rVar);
                    break;
                } else {
                    hVar.f948p = 1;
                    t.get().debug(str, "onAllConstraintsMet for " + rVar);
                    m mVar = hVar.f945j;
                    if (!mVar.f963j.startWork(hVar.f953u)) {
                        hVar.b();
                        break;
                    } else {
                        mVar.f962f.startTimer(rVar, 600000L, hVar);
                        break;
                    }
                }
        }
    }
}
