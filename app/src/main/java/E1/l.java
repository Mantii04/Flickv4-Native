package E1;

import B1.t;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.SystemAlarmService;

/* loaded from: classes.dex */
public final class l implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final m f958b;

    public l(m mVar) {
        this.f958b = mVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        m mVar = this.f958b;
        mVar.getClass();
        t tVar = t.get();
        String str = m.f959s;
        tVar.debug(str, "Checking if commands are complete.");
        m.a();
        synchronized (mVar.f966p) {
            try {
                if (mVar.f967q != null) {
                    t.get().debug(str, "Removing command " + mVar.f967q);
                    if (!((Intent) mVar.f966p.remove(0)).equals(mVar.f967q)) {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                    mVar.f967q = null;
                }
                N1.a m1getSerialTaskExecutor = ((N1.e) mVar.f961e).m1getSerialTaskExecutor();
                if (!mVar.f965n.a() && mVar.f966p.isEmpty() && !((L1.t) m1getSerialTaskExecutor).hasPendingTasks()) {
                    t.get().debug(str, "No more commands & intents.");
                    SystemAlarmService systemAlarmService = mVar.f968r;
                    if (systemAlarmService != null) {
                        systemAlarmService.onAllCommandsCompleted();
                    }
                } else if (!mVar.f966p.isEmpty()) {
                    mVar.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
