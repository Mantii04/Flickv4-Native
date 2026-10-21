package I1;

import B1.t;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

/* loaded from: classes.dex */
public final class j extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f1253a;

    public j(k kVar) {
        this.f1253a = kVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities capabilities) {
        String str;
        ConnectivityManager connectivityManager;
        kotlin.jvm.internal.j.checkNotNullParameter(network, "network");
        kotlin.jvm.internal.j.checkNotNullParameter(capabilities, "capabilities");
        t tVar = t.get();
        str = l.f1256a;
        tVar.debug(str, "Network capabilities changed: " + capabilities);
        k kVar = this.f1253a;
        connectivityManager = kVar.f1254f;
        kVar.setState(l.getActiveNetworkState(connectivityManager));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        String str;
        ConnectivityManager connectivityManager;
        kotlin.jvm.internal.j.checkNotNullParameter(network, "network");
        t tVar = t.get();
        str = l.f1256a;
        tVar.debug(str, "Network connection lost");
        k kVar = this.f1253a;
        connectivityManager = kVar.f1254f;
        kVar.setState(l.getActiveNetworkState(connectivityManager));
    }
}
