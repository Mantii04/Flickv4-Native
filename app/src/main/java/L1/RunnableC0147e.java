package L1;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;

/* renamed from: L1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0147e implements Runnable {

    /* renamed from: f, reason: collision with root package name */
    public static final String f1866f = B1.t.tagWithPrefix("EnqueueRunnable");

    /* renamed from: b, reason: collision with root package name */
    public final C1.x f1867b;

    /* renamed from: e, reason: collision with root package name */
    public final C1.o f1868e;

    public RunnableC0147e(C1.x xVar) {
        this(xVar, new C1.o());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e5  */
    /* JADX WARN: Type inference failed for: r11v7, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(C1.x r24) {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: L1.RunnableC0147e.a(C1.x):boolean");
    }

    public boolean addToDatabase() {
        C1.x xVar = this.f1867b;
        WorkDatabase workDatabase = xVar.getWorkManagerImpl().getWorkDatabase();
        workDatabase.beginTransaction();
        try {
            boolean a7 = a(xVar);
            workDatabase.setTransactionSuccessful();
            return a7;
        } finally {
            workDatabase.endTransaction();
        }
    }

    public B1.B getOperation() {
        return this.f1868e;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1.o oVar = this.f1868e;
        C1.x xVar = this.f1867b;
        try {
            if (xVar.hasCycles()) {
                throw new IllegalStateException("WorkContinuation has cycles (" + xVar + ")");
            }
            if (addToDatabase()) {
                p.setComponentEnabled(xVar.getWorkManagerImpl().getApplicationContext(), RescheduleReceiver.class, true);
                scheduleWorkInBackground();
            }
            oVar.markState(B1.B.f143a);
        } catch (Throwable th) {
            oVar.markState(new B1.x(th));
        }
    }

    public void scheduleWorkInBackground() {
        C1.G workManagerImpl = this.f1867b.getWorkManagerImpl();
        C1.u.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }

    public RunnableC0147e(C1.x xVar, C1.o oVar) {
        this.f1867b = xVar;
        this.f1868e = oVar;
    }
}
