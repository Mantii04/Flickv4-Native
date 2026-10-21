package H;

import android.net.ConnectivityManager;

/* loaded from: classes.dex */
public abstract class a {
    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        return connectivityManager.isActiveNetworkMetered();
    }
}
