package C1;

import B1.C0023c;
import K1.U;
import androidx.work.impl.WorkDatabase;
import cz.msebera.android.httpclient.HttpStatus;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class u {

    /* renamed from: a, reason: collision with root package name */
    public static final String f458a = B1.t.tagWithPrefix("Schedulers");

    public static void schedule(C0023c c0023c, WorkDatabase workDatabase, List<t> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        K1.F workSpecDao = workDatabase.workSpecDao();
        workDatabase.beginTransaction();
        try {
            U u6 = (U) workSpecDao;
            List<K1.E> eligibleWorkForScheduling = u6.getEligibleWorkForScheduling(c0023c.getMaxSchedulerLimit());
            List<K1.E> allEligibleWorkSpecsForScheduling = u6.getAllEligibleWorkSpecsForScheduling(HttpStatus.SC_OK);
            if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                Iterator<K1.E> it = eligibleWorkForScheduling.iterator();
                while (it.hasNext()) {
                    u6.markWorkSpecScheduled(it.next().f1594a, currentTimeMillis);
                }
            }
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            if (eligibleWorkForScheduling != null && eligibleWorkForScheduling.size() > 0) {
                K1.E[] eArr = (K1.E[]) eligibleWorkForScheduling.toArray(new K1.E[eligibleWorkForScheduling.size()]);
                for (t tVar : list) {
                    if (tVar.hasLimitedSchedulingSlots()) {
                        tVar.schedule(eArr);
                    }
                }
            }
            if (allEligibleWorkSpecsForScheduling == null || allEligibleWorkSpecsForScheduling.size() <= 0) {
                return;
            }
            K1.E[] eArr2 = (K1.E[]) allEligibleWorkSpecsForScheduling.toArray(new K1.E[allEligibleWorkSpecsForScheduling.size()]);
            for (t tVar2 : list) {
                if (!tVar2.hasLimitedSchedulingSlots()) {
                    tVar2.schedule(eArr2);
                }
            }
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }
}
