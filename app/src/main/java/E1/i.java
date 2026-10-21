package E1;

import B1.t;
import L1.x;
import android.content.Intent;
import android.os.PowerManager;

/* loaded from: classes.dex */
public final class i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f954b;

    public i(m mVar) {
        this.f954b = mVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f954b.f966p) {
            m mVar = this.f954b;
            mVar.f967q = (Intent) mVar.f966p.get(0);
        }
        Intent intent = this.f954b.f967q;
        if (intent != null) {
            String action = intent.getAction();
            int intExtra = this.f954b.f967q.getIntExtra("KEY_START_ID", 0);
            t tVar = t.get();
            String str = m.f959s;
            tVar.debug(str, "Processing command " + this.f954b.f967q + ", " + intExtra);
            PowerManager.WakeLock newWakeLock = x.newWakeLock(this.f954b.f960b, action + " (" + intExtra + ")");
            try {
                t.get().debug(str, "Acquiring operation wake lock (" + action + ") " + newWakeLock);
                newWakeLock.acquire();
                m mVar2 = this.f954b;
                mVar2.f965n.b(intExtra, mVar2, mVar2.f967q);
                t.get().debug(str, "Releasing operation wake lock (" + action + ") " + newWakeLock);
                newWakeLock.release();
                ((N1.e) this.f954b.f961e).getMainThreadExecutor().execute(new l(this.f954b));
            } catch (Throwable th) {
                try {
                    t tVar2 = t.get();
                    String str2 = m.f959s;
                    tVar2.error(str2, "Unexpected error in onHandleIntent", th);
                    t.get().debug(str2, "Releasing operation wake lock (" + action + ") " + newWakeLock);
                    newWakeLock.release();
                    ((N1.e) this.f954b.f961e).getMainThreadExecutor().execute(new l(this.f954b));
                } catch (Throwable th2) {
                    t.get().debug(m.f959s, "Releasing operation wake lock (" + action + ") " + newWakeLock);
                    newWakeLock.release();
                    ((N1.e) this.f954b.f961e).getMainThreadExecutor().execute(new l(this.f954b));
                    throw th2;
                }
            }
        }
    }
}
