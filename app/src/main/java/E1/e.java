package E1;

import B1.t;
import L1.p;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxy$BatteryChargingProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxy$BatteryNotLowProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxy$NetworkStateProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxy$StorageNotLowProxy;
import androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver;

/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Intent f932b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f933e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BroadcastReceiver.PendingResult f934f;

    public e(Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
        this.f932b = intent;
        this.f933e = context;
        this.f934f = pendingResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        BroadcastReceiver.PendingResult pendingResult = this.f934f;
        Context context = this.f933e;
        Intent intent = this.f932b;
        try {
            boolean booleanExtra = intent.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
            boolean booleanExtra2 = intent.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
            boolean booleanExtra3 = intent.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
            boolean booleanExtra4 = intent.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
            t.get().debug(ConstraintProxyUpdateReceiver.f8296a, "Updating proxies: (BatteryNotLowProxy (" + booleanExtra + "), BatteryChargingProxy (" + booleanExtra2 + "), StorageNotLowProxy (" + booleanExtra3 + "), NetworkStateProxy (" + booleanExtra4 + "), ");
            p.setComponentEnabled(context, ConstraintProxy$BatteryNotLowProxy.class, booleanExtra);
            p.setComponentEnabled(context, ConstraintProxy$BatteryChargingProxy.class, booleanExtra2);
            p.setComponentEnabled(context, ConstraintProxy$StorageNotLowProxy.class, booleanExtra3);
            p.setComponentEnabled(context, ConstraintProxy$NetworkStateProxy.class, booleanExtra4);
        } finally {
            pendingResult.finish();
        }
    }
}
