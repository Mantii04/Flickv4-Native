package Z2;

import android.app.job.JobInfo;
import c3.InterfaceC0724a;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$Flag;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public abstract class h {
    public static e builder() {
        return new e();
    }

    public static h getDefault(InterfaceC0724a interfaceC0724a) {
        return builder().addConfig(Priority.f9478b, g.builder().setDelta(30000L).setMaxAllowedDelay(DateUtils.MILLIS_PER_DAY).build()).addConfig(Priority.f9480f, g.builder().setDelta(1000L).setMaxAllowedDelay(DateUtils.MILLIS_PER_DAY).build()).addConfig(Priority.f9479e, g.builder().setDelta(DateUtils.MILLIS_PER_DAY).setMaxAllowedDelay(DateUtils.MILLIS_PER_DAY).setFlags(Collections.unmodifiableSet(new HashSet(Arrays.asList(SchedulerConfig$Flag.f9512e)))).build()).setClock(interfaceC0724a).build();
    }

    public JobInfo.Builder configureJob(JobInfo.Builder builder, Priority priority, long j7, int i2) {
        builder.setMinimumLatency(getScheduleDelay(priority, j7, i2));
        Set set = ((c) ((g) ((a) this).f4467b.get(priority))).f4473c;
        if (set.contains(SchedulerConfig$Flag.f9511b)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(SchedulerConfig$Flag.f9513f)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(SchedulerConfig$Flag.f9512e)) {
            builder.setRequiresDeviceIdle(true);
        }
        return builder;
    }

    public long getScheduleDelay(Priority priority, long j7, int i2) {
        a aVar = (a) this;
        long time = j7 - aVar.f4466a.getTime();
        c cVar = (c) ((g) aVar.f4467b.get(priority));
        long j8 = cVar.f4471a;
        return Math.min(Math.max((long) (Math.pow(3.0d, i2 - 1) * j8 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j8 > 1 ? j8 : 2L) * r12))), time), cVar.f4472b);
    }
}
