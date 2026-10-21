package q2;

import android.os.StrictMode;

/* renamed from: q2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1516d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Runnable f19567b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f19568e;

    public RunnableC1516d(e eVar, Runnable runnable) {
        this.f19568e = eVar;
        this.f19567b = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        e eVar = this.f19568e;
        if (eVar.f19572j) {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
        }
        try {
            this.f19567b.run();
        } catch (Throwable th) {
            eVar.f19571f.handle(th);
        }
    }
}
