package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import A4.n;
import S2.D;
import S2.E;
import S2.H;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import d3.AbstractC0806a;

/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f9510b = 0;

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i2 = jobParameters.getExtras().getInt("priority");
        int i7 = jobParameters.getExtras().getInt("attemptNumber");
        H.initialize(getApplicationContext());
        D priority = E.builder().setBackendName(string).setPriority(AbstractC0806a.valueOf(i2));
        if (string2 != null) {
            priority.setExtras(Base64.decode(string2, 0));
        }
        H.getInstance().getUploader().upload(priority.build(), i7, new n(14, this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
