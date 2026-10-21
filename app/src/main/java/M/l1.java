package M;

import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;
import android.media.MediaRouter2$RouteCallback;
import android.media.RouteDiscoveryPreference;
import com.google.common.collect.ImmutableList;

/* loaded from: classes.dex */
public abstract /* synthetic */ class l1 {
    public static /* bridge */ /* synthetic */ MediaRoute2Info c(Object obj) {
        return (MediaRoute2Info) obj;
    }

    public static /* bridge */ /* synthetic */ MediaRouter2$ControllerCallback d(Object obj) {
        return (MediaRouter2$ControllerCallback) obj;
    }

    public static /* bridge */ /* synthetic */ MediaRouter2$RouteCallback e(Object obj) {
        return (MediaRouter2$RouteCallback) obj;
    }

    public static /* bridge */ /* synthetic */ MediaRouter2 h(Object obj) {
        return (MediaRouter2) obj;
    }

    public static /* synthetic */ RouteDiscoveryPreference.Builder i(ImmutableList immutableList) {
        return new RouteDiscoveryPreference.Builder(immutableList, false);
    }

    public static /* synthetic */ void n() {
    }
}
