package L1;

import android.net.ConnectivityManager;
import android.net.Network;

/* loaded from: classes.dex */
public abstract class n {
    public static final Network getActiveNetworkCompat(ConnectivityManager connectivityManager) {
        kotlin.jvm.internal.j.checkNotNullParameter(connectivityManager, "<this>");
        return connectivityManager.getActiveNetwork();
    }
}
