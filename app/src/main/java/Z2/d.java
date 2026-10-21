package Z2;

import S2.E;
import a3.InterfaceC0386d;
import a3.r;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import d3.AbstractC0806a;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.zip.Adler32;

/* loaded from: classes.dex */
public final class d implements q {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4474a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0386d f4475b;

    /* renamed from: c, reason: collision with root package name */
    public final h f4476c;

    public d(Context context, InterfaceC0386d interfaceC0386d, h hVar) {
        this.f4474a = context;
        this.f4475b = interfaceC0386d;
        this.f4476c = hVar;
    }

    public void schedule(E e3, int i2) {
        schedule(e3, i2, false);
    }

    public void schedule(E e3, int i2, boolean z6) {
        Context context = this.f4474a;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(e3.getBackendName().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(AbstractC0806a.toInt(e3.getPriority())).array());
        if (e3.getExtras() != null) {
            adler32.update(e3.getExtras());
        }
        int value = (int) adler32.getValue();
        if (!z6) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int i7 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    if (i7 >= i2) {
                        W2.a.d("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", e3);
                        return;
                    }
                }
            }
        }
        long nextCallTime = ((r) this.f4475b).getNextCallTime(e3);
        JobInfo.Builder configureJob = this.f4476c.configureJob(new JobInfo.Builder(value, componentName), e3.getPriority(), nextCallTime, i2);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i2);
        persistableBundle.putString("backendName", e3.getBackendName());
        persistableBundle.putInt("priority", AbstractC0806a.toInt(e3.getPriority()));
        if (e3.getExtras() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(e3.getExtras(), 0));
        }
        configureJob.setExtras(persistableBundle);
        W2.a.d("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", e3, Integer.valueOf(value), Long.valueOf(this.f4476c.getScheduleDelay(e3.getPriority(), nextCallTime, i2)), Long.valueOf(nextCallTime), Integer.valueOf(i2));
        jobScheduler.schedule(configureJob.build());
    }
}
