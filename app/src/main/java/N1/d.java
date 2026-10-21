package N1;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class d implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f2291b;

    public d(e eVar) {
        this.f2291b = eVar;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f2291b.f2293b.post(runnable);
    }
}
