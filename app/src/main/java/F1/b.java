package F1;

import C1.G;
import C1.t;
import K1.AbstractC0126q;
import K1.C0119j;
import K1.C0125p;
import K1.E;
import K1.F;
import K1.U;
import K1.V;
import K1.r;
import L1.k;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class b implements t {

    /* renamed from: m, reason: collision with root package name */
    public static final String f982m = B1.t.tagWithPrefix("SystemJobScheduler");

    /* renamed from: b, reason: collision with root package name */
    public final Context f983b;

    /* renamed from: e, reason: collision with root package name */
    public final JobScheduler f984e;

    /* renamed from: f, reason: collision with root package name */
    public final G f985f;

    /* renamed from: j, reason: collision with root package name */
    public final a f986j;

    public b(Context context, G g7) {
        this(context, g7, (JobScheduler) context.getSystemService("jobscheduler"), new a(context));
    }

    public static void a(JobScheduler jobScheduler, int i2) {
        try {
            jobScheduler.cancel(i2);
        } catch (Throwable th) {
            B1.t.get().error(f982m, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i2)), th);
        }
    }

    public static ArrayList b(Context context, JobScheduler jobScheduler, String str) {
        ArrayList c7 = c(context, jobScheduler);
        if (c7 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        Iterator it = c7.iterator();
        while (it.hasNext()) {
            JobInfo jobInfo = (JobInfo) it.next();
            r d7 = d(jobInfo);
            if (d7 != null && str.equals(d7.getWorkSpecId())) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    public static ArrayList c(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            B1.t.get().error(f982m, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static void cancelAll(Context context) {
        ArrayList c7;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (c7 = c(context, jobScheduler)) == null || c7.isEmpty()) {
            return;
        }
        Iterator it = c7.iterator();
        while (it.hasNext()) {
            a(jobScheduler, ((JobInfo) it.next()).getId());
        }
    }

    public static r d(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new r(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public static boolean reconcileJobs(Context context, G g7) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        ArrayList c7 = c(context, jobScheduler);
        List<String> workSpecIds = ((C0125p) g7.getWorkDatabase().systemIdInfoDao()).getWorkSpecIds();
        boolean z6 = false;
        HashSet hashSet = new HashSet(c7 != null ? c7.size() : 0);
        if (c7 != null && !c7.isEmpty()) {
            Iterator it = c7.iterator();
            while (it.hasNext()) {
                JobInfo jobInfo = (JobInfo) it.next();
                r d7 = d(jobInfo);
                if (d7 != null) {
                    hashSet.add(d7.getWorkSpecId());
                } else {
                    a(jobScheduler, jobInfo.getId());
                }
            }
        }
        Iterator<String> it2 = workSpecIds.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if (!hashSet.contains(it2.next())) {
                B1.t.get().debug(f982m, "Reconciling jobs");
                z6 = true;
                break;
            }
        }
        if (!z6) {
            return z6;
        }
        WorkDatabase workDatabase = g7.getWorkDatabase();
        workDatabase.beginTransaction();
        try {
            F workSpecDao = workDatabase.workSpecDao();
            Iterator<String> it3 = workSpecIds.iterator();
            while (it3.hasNext()) {
                ((U) workSpecDao).markWorkSpecScheduled(it3.next(), -1L);
            }
            workDatabase.setTransactionSuccessful();
            workDatabase.endTransaction();
            return z6;
        } catch (Throwable th) {
            workDatabase.endTransaction();
            throw th;
        }
    }

    @Override // C1.t
    public void cancel(String str) {
        Context context = this.f983b;
        JobScheduler jobScheduler = this.f984e;
        ArrayList b7 = b(context, jobScheduler, str);
        if (b7 == null || b7.isEmpty()) {
            return;
        }
        Iterator it = b7.iterator();
        while (it.hasNext()) {
            a(jobScheduler, ((Integer) it.next()).intValue());
        }
        ((C0125p) this.f985f.getWorkDatabase().systemIdInfoDao()).removeSystemIdInfo(str);
    }

    @Override // C1.t
    public boolean hasLimitedSchedulingSlots() {
        return true;
    }

    @Override // C1.t
    public void schedule(E... eArr) {
        ArrayList b7;
        G g7 = this.f985f;
        WorkDatabase workDatabase = g7.getWorkDatabase();
        k kVar = new k(workDatabase);
        for (E e3 : eArr) {
            workDatabase.beginTransaction();
            try {
                E workSpec = ((U) workDatabase.workSpecDao()).getWorkSpec(e3.f1594a);
                String str = f982m;
                String str2 = e3.f1594a;
                if (workSpec == null) {
                    B1.t.get().warning(str, "Skipping scheduling " + str2 + " because it's no longer in the DB");
                    workDatabase.setTransactionSuccessful();
                } else if (workSpec.f1595b != WorkInfo$State.f8268b) {
                    B1.t.get().warning(str, "Skipping scheduling " + str2 + " because it is no longer enqueued");
                    workDatabase.setTransactionSuccessful();
                } else {
                    r generationalId = V.generationalId(e3);
                    C0119j systemIdInfo = ((C0125p) workDatabase.systemIdInfoDao()).getSystemIdInfo(generationalId);
                    int nextJobSchedulerIdWithRange = systemIdInfo != null ? systemIdInfo.f1641c : kVar.nextJobSchedulerIdWithRange(g7.getConfiguration().getMinJobSchedulerId(), g7.getConfiguration().getMaxJobSchedulerId());
                    if (systemIdInfo == null) {
                        ((C0125p) g7.getWorkDatabase().systemIdInfoDao()).insertSystemIdInfo(AbstractC0126q.systemIdInfo(generationalId, nextJobSchedulerIdWithRange));
                    }
                    scheduleInternal(e3, nextJobSchedulerIdWithRange);
                    if (Build.VERSION.SDK_INT == 23 && (b7 = b(this.f983b, this.f984e, str2)) != null) {
                        int indexOf = b7.indexOf(Integer.valueOf(nextJobSchedulerIdWithRange));
                        if (indexOf >= 0) {
                            b7.remove(indexOf);
                        }
                        scheduleInternal(e3, !b7.isEmpty() ? ((Integer) b7.get(0)).intValue() : kVar.nextJobSchedulerIdWithRange(g7.getConfiguration().getMinJobSchedulerId(), g7.getConfiguration().getMaxJobSchedulerId()));
                    }
                    workDatabase.setTransactionSuccessful();
                }
            } finally {
                workDatabase.endTransaction();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0086, code lost:
    
        if (r11 < 26) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void scheduleInternal(K1.E r21, int r22) {
        /*
            Method dump skipped, instructions count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: F1.b.scheduleInternal(K1.E, int):void");
    }

    public b(Context context, G g7, JobScheduler jobScheduler, a aVar) {
        this.f983b = context;
        this.f985f = g7;
        this.f984e = jobScheduler;
        this.f986j = aVar;
    }
}
