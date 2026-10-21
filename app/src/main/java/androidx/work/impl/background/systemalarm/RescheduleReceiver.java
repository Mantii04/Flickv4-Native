package androidx.work.impl.background.systemalarm;

import B1.t;
import C1.G;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8297a = t.tagWithPrefix("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str = f8297a;
        t.get().debug(str, "Received intent " + intent);
        try {
            G.getInstance(context).setReschedulePendingResult(goAsync());
        } catch (IllegalStateException e3) {
            t.get().error(str, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e3);
        }
    }
}
