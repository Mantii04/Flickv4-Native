package L1;

import K1.U;
import androidx.work.impl.WorkDatabase;
import java.util.Iterator;

/* renamed from: L1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0145c extends AbstractRunnableC0146d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1.G f1862e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f1863f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f1864j;

    public C0145c(String str, C1.G g7, boolean z6) {
        this.f1862e = g7;
        this.f1863f = str;
        this.f1864j = z6;
    }

    @Override // L1.AbstractRunnableC0146d
    public final void b() {
        C1.G g7 = this.f1862e;
        WorkDatabase workDatabase = g7.getWorkDatabase();
        workDatabase.beginTransaction();
        try {
            Iterator<String> it = ((U) workDatabase.workSpecDao()).getUnfinishedWorkWithName(this.f1863f).iterator();
            while (it.hasNext()) {
                AbstractRunnableC0146d.a(g7, it.next());
            }
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            if (this.f1864j) {
                C1.u.schedule(g7.getConfiguration(), g7.getWorkDatabase(), g7.getSchedulers());
            }
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }
}
