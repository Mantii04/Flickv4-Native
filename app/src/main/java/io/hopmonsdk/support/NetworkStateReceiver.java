package io.hopmonsdk.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import s5.AbstractC1643b;

/* loaded from: classes2.dex */
public class NetworkStateReceiver extends BroadcastReceiver {
    public boolean isNetworkAvailable(Context context) {
        if (context == null) {
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            if (Build.VERSION.SDK_INT >= 29) {
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                if (networkCapabilities != null && (networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(3))) {
                    return true;
                }
            } else {
                try {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        if (activeNetworkInfo.isConnected()) {
                            return true;
                        }
                    }
                } catch (Exception e3) {
                    AbstractC1643b.i("NetworkStateReceiver", "" + e3.getMessage(), new Object[0]);
                }
            }
        }
        AbstractC1643b.i("NetworkStateReceiver", "Network is available : FALSE ", new Object[0]);
        return false;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null && action.equals("android.net.conn.CONNECTIVITY_CHANGE") && isNetworkAvailable(context)) {
            AbstractC1643b.w("NetworkStateReceiver", "reconnect to network", new Object[0]);
        }
    }
}
