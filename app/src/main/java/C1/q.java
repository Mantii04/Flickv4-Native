package C1;

import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class q implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final r f441b;

    /* renamed from: e, reason: collision with root package name */
    public final K1.r f442e;

    /* renamed from: f, reason: collision with root package name */
    public final V3.F f443f;

    public q(r rVar, K1.r rVar2, V3.F f3) {
        this.f441b = rVar;
        this.f442e = rVar2;
        this.f443f = f3;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z6;
        try {
            z6 = ((Boolean) this.f443f.get()).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            z6 = true;
        }
        this.f441b.onExecuted(this.f442e, z6);
    }
}
