package E1;

import B1.t;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.SystemAlarmService;

/* loaded from: classes.dex */
public abstract class d extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f931a = t.tagWithPrefix("ConstraintProxy");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        t.get().debug(f931a, "onReceive : " + intent);
        String str = c.f926m;
        Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent2.setAction("ACTION_CONSTRAINTS_CHANGED");
        context.startService(intent2);
    }
}
