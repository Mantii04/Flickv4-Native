package m4;

import android.os.Process;

/* loaded from: classes2.dex */
public final class U extends Thread {
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        super.run();
    }
}
