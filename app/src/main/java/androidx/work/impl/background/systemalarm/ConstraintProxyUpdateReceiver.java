package androidx.work.impl.background.systemalarm;

import A.i;
import B1.t;
import C1.G;
import E1.e;
import N1.b;
import N1.c;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8296a = t.tagWithPrefix("ConstrntProxyUpdtRecvr");

    public static Intent newConstraintProxyUpdateIntent(Context context, boolean z6, boolean z7, boolean z8, boolean z9) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z6).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z7).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z8).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z9);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            t.get().debug(f8296a, i.k("Ignoring unknown action ", action));
            return;
        }
        BroadcastReceiver.PendingResult goAsync = goAsync();
        c workTaskExecutor = G.getInstance(context).getWorkTaskExecutor();
        e eVar = new e(intent, context, goAsync);
        N1.e eVar2 = (N1.e) workTaskExecutor;
        eVar2.getClass();
        b.a(eVar2, eVar);
    }
}
