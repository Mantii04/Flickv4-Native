package com.ax.altpop.boot;

import Q1.b;
import Q1.c;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.annotation.Keep;
import com.ax.altpop.AltConfig;
import com.ax.altpop.AltPop;

@Keep
/* loaded from: classes.dex */
public class BootReceiver extends BroadcastReceiver {
    private static final String TAG = "com.ax.altpop.boot.BootReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
                Log.d(TAG, "On Boot " + intent.getAction());
                if (b.a(context) != null) {
                    if (b.f2805a.getBoolean(c.f2828u, false)) {
                        String str = c.f2812e;
                        if (b.f2805a.getBoolean(str, false)) {
                            AltConfig altConfig = new AltConfig();
                            altConfig.setPublisher(b.f2805a.getString(c.f2811d, null));
                            altConfig.setFg(b.f2805a.getBoolean(str, false));
                            altConfig.setLoggable(b.f2805a.getBoolean(c.f2810c, false));
                            AltPop.initialize(context.getApplicationContext(), altConfig).start();
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
