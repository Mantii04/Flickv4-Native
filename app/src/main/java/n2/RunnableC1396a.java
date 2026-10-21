package n2;

import android.os.Process;

/* renamed from: n2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1396a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Runnable f18938b;

    public RunnableC1396a(Runnable runnable) {
        this.f18938b = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        this.f18938b.run();
    }
}
