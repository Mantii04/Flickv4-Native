package J;

import android.os.Process;

/* loaded from: classes.dex */
public final class t extends Thread {

    /* renamed from: b, reason: collision with root package name */
    public final int f1428b;

    public t(Runnable runnable) {
        super(runnable, "fonts-androidx");
        this.f1428b = 10;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(this.f1428b);
        super.run();
    }
}
