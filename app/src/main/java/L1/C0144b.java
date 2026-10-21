package L1;

import androidx.work.impl.WorkDatabase;
import java.util.UUID;

/* renamed from: L1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0144b extends AbstractRunnableC0146d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1.G f1860e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ UUID f1861f;

    public C0144b(UUID uuid, C1.G g7) {
        this.f1860e = g7;
        this.f1861f = uuid;
    }

    @Override // L1.AbstractRunnableC0146d
    public final void b() {
        C1.G g7 = this.f1860e;
        WorkDatabase workDatabase = g7.getWorkDatabase();
        workDatabase.beginTransaction();
        try {
            AbstractRunnableC0146d.a(g7, this.f1861f.toString());
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            C1.u.schedule(g7.getConfiguration(), g7.getWorkDatabase(), g7.getSchedulers());
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }
}
