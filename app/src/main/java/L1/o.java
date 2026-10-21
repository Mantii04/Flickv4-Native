package L1;

import android.net.ConnectivityManager;

/* loaded from: classes.dex */
public abstract class o {
    public static final void registerDefaultNetworkCallbackCompat(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback) {
        kotlin.jvm.internal.j.checkNotNullParameter(connectivityManager, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(networkCallback, "networkCallback");
        connectivityManager.registerDefaultNetworkCallback(networkCallback);
    }
}
