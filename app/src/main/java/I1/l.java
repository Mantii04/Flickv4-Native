package I1;

import B1.t;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1256a;

    static {
        String tagWithPrefix = t.tagWithPrefix("NetworkStateTracker");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"NetworkStateTracker\")");
        f1256a = tagWithPrefix;
    }

    public static final h NetworkStateTracker(Context context, N1.c taskExecutor) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(taskExecutor, "taskExecutor");
        return Build.VERSION.SDK_INT >= 24 ? new k(context, taskExecutor) : new m(context, taskExecutor);
    }

    public static final G1.b getActiveNetworkState(ConnectivityManager connectivityManager) {
        kotlin.jvm.internal.j.checkNotNullParameter(connectivityManager, "<this>");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        boolean z6 = false;
        boolean z7 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean isActiveNetworkValidated = isActiveNetworkValidated(connectivityManager);
        boolean isActiveNetworkMetered = H.a.isActiveNetworkMetered(connectivityManager);
        if (activeNetworkInfo != null && !activeNetworkInfo.isRoaming()) {
            z6 = true;
        }
        return new G1.b(z7, isActiveNetworkValidated, isActiveNetworkMetered, z6);
    }

    public static final boolean isActiveNetworkValidated(ConnectivityManager connectivityManager) {
        kotlin.jvm.internal.j.checkNotNullParameter(connectivityManager, "<this>");
        try {
            NetworkCapabilities networkCapabilitiesCompat = L1.m.getNetworkCapabilitiesCompat(connectivityManager, L1.n.getActiveNetworkCompat(connectivityManager));
            if (networkCapabilitiesCompat != null) {
                return L1.m.hasCapabilityCompat(networkCapabilitiesCompat, 16);
            }
            return false;
        } catch (SecurityException e3) {
            t.get().error(f1256a, "Unable to validate active network", e3);
            return false;
        }
    }
}
