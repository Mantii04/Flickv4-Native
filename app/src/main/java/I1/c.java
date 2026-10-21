package I1;

import B1.t;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes.dex */
public final class c extends f {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context, N1.c taskExecutor) {
        super(context, taskExecutor);
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(taskExecutor, "taskExecutor");
    }

    @Override // I1.f
    public IntentFilter getIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // I1.f
    public void onBroadcastReceive(Intent intent) {
        String str;
        kotlin.jvm.internal.j.checkNotNullParameter(intent, "intent");
        if (intent.getAction() == null) {
            return;
        }
        t tVar = t.get();
        str = d.f1243a;
        tVar.debug(str, "Received " + intent.getAction());
        String action = intent.getAction();
        if (action != null) {
            int hashCode = action.hashCode();
            if (hashCode == -1980154005) {
                if (action.equals("android.intent.action.BATTERY_OKAY")) {
                    setState(Boolean.TRUE);
                }
            } else if (hashCode == 490310653 && action.equals("android.intent.action.BATTERY_LOW")) {
                setState(Boolean.FALSE);
            }
        }
    }

    @Override // I1.h
    public Boolean getInitialState() {
        String str;
        Intent registerReceiver = getAppContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            t tVar = t.get();
            str = d.f1243a;
            tVar.error(str, "getInitialState - null intent received");
            return Boolean.FALSE;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        float intExtra2 = registerReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
        boolean z6 = true;
        if (intExtra != 1 && intExtra2 <= 0.15f) {
            z6 = false;
        }
        return Boolean.valueOf(z6);
    }
}
