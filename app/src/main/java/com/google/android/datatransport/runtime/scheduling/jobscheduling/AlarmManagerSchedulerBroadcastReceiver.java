package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import B4.RunnableC0044g;
import S2.D;
import S2.E;
import S2.H;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import d3.AbstractC0806a;

/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9509a = 0;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i2 = intent.getExtras().getInt("attemptNumber");
        H.initialize(context);
        D priority = E.builder().setBackendName(queryParameter).setPriority(AbstractC0806a.valueOf(intValue));
        if (queryParameter2 != null) {
            priority.setExtras(Base64.decode(queryParameter2, 0));
        }
        H.getInstance().getUploader().upload(priority.build(), i2, new RunnableC0044g(1));
    }
}
