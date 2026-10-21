package f1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;

/* loaded from: classes.dex */
public abstract class A0 {
    public static void a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, Handler handler, int i2) {
        context.registerReceiver(broadcastReceiver, intentFilter, null, handler, i2);
    }
}
