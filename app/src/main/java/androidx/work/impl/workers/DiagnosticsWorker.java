package androidx.work.impl.workers;

import B1.AbstractC0037q;
import B1.t;
import C1.G;
import K1.E;
import K1.F;
import K1.InterfaceC0121l;
import K1.InterfaceC0128t;
import K1.U;
import K1.Y;
import O1.b;
import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import cz.msebera.android.httpclient.HttpStatus;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters parameters) {
        super(context, parameters);
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(parameters, "parameters");
    }

    @Override // androidx.work.Worker
    public AbstractC0037q doWork() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        G g7 = G.getInstance(getApplicationContext());
        j.checkNotNullExpressionValue(g7, "getInstance(applicationContext)");
        WorkDatabase workDatabase = g7.getWorkDatabase();
        j.checkNotNullExpressionValue(workDatabase, "workManager.workDatabase");
        F workSpecDao = workDatabase.workSpecDao();
        InterfaceC0128t workNameDao = workDatabase.workNameDao();
        Y workTagDao = workDatabase.workTagDao();
        InterfaceC0121l systemIdInfoDao = workDatabase.systemIdInfoDao();
        U u6 = (U) workSpecDao;
        List<E> recentlyCompletedWork = u6.getRecentlyCompletedWork(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List<E> runningWork = u6.getRunningWork();
        List<E> allEligibleWorkSpecsForScheduling = u6.getAllEligibleWorkSpecsForScheduling(HttpStatus.SC_OK);
        if (!recentlyCompletedWork.isEmpty()) {
            t tVar = t.get();
            str5 = b.f2400a;
            tVar.info(str5, "Recently completed work:\n\n");
            t tVar2 = t.get();
            str6 = b.f2400a;
            tVar2.info(str6, b.access$workSpecRows(workNameDao, workTagDao, systemIdInfoDao, recentlyCompletedWork));
        }
        if (!runningWork.isEmpty()) {
            t tVar3 = t.get();
            str3 = b.f2400a;
            tVar3.info(str3, "Running work:\n\n");
            t tVar4 = t.get();
            str4 = b.f2400a;
            tVar4.info(str4, b.access$workSpecRows(workNameDao, workTagDao, systemIdInfoDao, runningWork));
        }
        if (!allEligibleWorkSpecsForScheduling.isEmpty()) {
            t tVar5 = t.get();
            str = b.f2400a;
            tVar5.info(str, "Enqueued work:\n\n");
            t tVar6 = t.get();
            str2 = b.f2400a;
            tVar6.info(str2, b.access$workSpecRows(workNameDao, workTagDao, systemIdInfoDao, allEligibleWorkSpecsForScheduling));
        }
        AbstractC0037q success = AbstractC0037q.success();
        j.checkNotNullExpressionValue(success, "success()");
        return success;
    }
}
