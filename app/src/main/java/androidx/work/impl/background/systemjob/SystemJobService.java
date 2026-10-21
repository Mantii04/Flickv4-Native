package androidx.work.impl.background.systemjob;

import B1.Q;
import B1.t;
import C1.G;
import C1.InterfaceC0067e;
import C1.v;
import C1.w;
import F1.c;
import F1.d;
import K1.r;
import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SystemJobService extends JobService implements InterfaceC0067e {

    /* renamed from: j, reason: collision with root package name */
    public static final String f8301j = t.tagWithPrefix("SystemJobService");

    /* renamed from: b, reason: collision with root package name */
    public G f8302b;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f8303e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final w f8304f = new w();

    public static r a(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new r(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            G g7 = G.getInstance(getApplicationContext());
            this.f8302b = g7;
            g7.getProcessor().addExecutionListener(this);
        } catch (IllegalStateException unused) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            t.get().warning(f8301j, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        G g7 = this.f8302b;
        if (g7 != null) {
            g7.getProcessor().removeExecutionListener(this);
        }
    }

    @Override // C1.InterfaceC0067e
    public void onExecuted(r rVar, boolean z6) {
        JobParameters jobParameters;
        t.get().debug(f8301j, rVar.getWorkSpecId() + " executed on JobScheduler");
        synchronized (this.f8303e) {
            jobParameters = (JobParameters) this.f8303e.remove(rVar);
        }
        this.f8304f.remove(rVar);
        if (jobParameters != null) {
            jobFinished(jobParameters, z6);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        Q q6;
        if (this.f8302b == null) {
            t.get().debug(f8301j, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        r a7 = a(jobParameters);
        if (a7 == null) {
            t.get().error(f8301j, "WorkSpec id not found!");
            return false;
        }
        synchronized (this.f8303e) {
            try {
                if (this.f8303e.containsKey(a7)) {
                    t.get().debug(f8301j, "Job is already being executed by SystemJobService: " + a7);
                    return false;
                }
                t.get().debug(f8301j, "onStartJob for " + a7);
                this.f8303e.put(a7, jobParameters);
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 24) {
                    q6 = new Q();
                    if (c.b(jobParameters) != null) {
                        q6.f157b = Arrays.asList(c.b(jobParameters));
                    }
                    if (c.a(jobParameters) != null) {
                        q6.f156a = Arrays.asList(c.a(jobParameters));
                    }
                    if (i2 >= 28) {
                        d.a(jobParameters);
                    }
                } else {
                    q6 = null;
                }
                this.f8302b.startWork(this.f8304f.tokenFor(a7), q6);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (this.f8302b == null) {
            t.get().debug(f8301j, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        r a7 = a(jobParameters);
        if (a7 == null) {
            t.get().error(f8301j, "WorkSpec id not found!");
            return false;
        }
        t.get().debug(f8301j, "onStopJob for " + a7);
        synchronized (this.f8303e) {
            this.f8303e.remove(a7);
        }
        v remove = this.f8304f.remove(a7);
        if (remove != null) {
            this.f8302b.stopWork(remove);
        }
        return !this.f8302b.getProcessor().isCancelled(a7.getWorkSpecId());
    }
}
