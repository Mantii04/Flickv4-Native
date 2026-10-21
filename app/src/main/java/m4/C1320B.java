package m4;

import android.os.Message;
import android.os.Process;
import java.lang.ref.ReferenceQueue;

/* renamed from: m4.B, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1320B extends Thread {

    /* renamed from: b, reason: collision with root package name */
    public final ReferenceQueue f18589b;

    /* renamed from: e, reason: collision with root package name */
    public final y f18590e;

    public C1320B(ReferenceQueue referenceQueue, y yVar) {
        this.f18589b = referenceQueue;
        this.f18590e = yVar;
        setDaemon(true);
        setName("Picasso-refQueue");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        y yVar = this.f18590e;
        Process.setThreadPriority(10);
        while (true) {
            try {
                C1322a c1322a = (C1322a) this.f18589b.remove(1000L);
                Message obtainMessage = yVar.obtainMessage();
                if (c1322a != null) {
                    obtainMessage.what = 3;
                    obtainMessage.obj = c1322a.f18673a;
                    yVar.sendMessage(obtainMessage);
                } else {
                    obtainMessage.recycle();
                }
            } catch (InterruptedException unused) {
                return;
            } catch (Exception e3) {
                yVar.post(new RunnableC1319A(e3));
                return;
            }
        }
    }
}
