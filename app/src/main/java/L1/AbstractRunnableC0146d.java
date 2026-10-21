package L1;

import K1.C0113d;
import K1.InterfaceC0111b;
import K1.U;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkDatabase;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;

/* renamed from: L1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC0146d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final C1.o f1865b = new C1.o();

    public static void a(C1.G g7, String str) {
        WorkDatabase workDatabase = g7.getWorkDatabase();
        K1.F workSpecDao = workDatabase.workSpecDao();
        InterfaceC0111b dependencyDao = workDatabase.dependencyDao();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            U u6 = (U) workSpecDao;
            WorkInfo$State state = u6.getState(str2);
            if (state != WorkInfo$State.f8270f && state != WorkInfo$State.f8271j) {
                u6.setState(WorkInfo$State.f8273n, str2);
            }
            linkedList.addAll(((C0113d) dependencyDao).getDependentWorkIds(str2));
        }
        g7.getProcessor().stopAndCancelWork(str);
        Iterator<C1.t> it = g7.getSchedulers().iterator();
        while (it.hasNext()) {
            it.next().cancel(str);
        }
    }

    public static AbstractRunnableC0146d forId(UUID uuid, C1.G g7) {
        return new C0144b(uuid, g7);
    }

    public static AbstractRunnableC0146d forName(String str, C1.G g7, boolean z6) {
        return new C0145c(str, g7, z6);
    }

    public abstract void b();

    public B1.B getOperation() {
        return this.f1865b;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1.o oVar = this.f1865b;
        try {
            b();
            oVar.markState(B1.B.f143a);
        } catch (Throwable th) {
            oVar.markState(new B1.x(th));
        }
    }
}
