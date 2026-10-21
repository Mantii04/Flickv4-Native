package q2;

import android.os.Process;

/* renamed from: q2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1514b extends Thread {
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(9);
        super.run();
    }
}
