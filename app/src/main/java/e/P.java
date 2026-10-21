package e;

import android.app.Notification;
import android.app.NotificationChannel;
import com.ax.altpop.sdk_actions.AltSrvc;
import java.lang.invoke.MethodHandles;

/* loaded from: classes.dex */
public abstract /* synthetic */ class P {
    public static /* synthetic */ Notification.Builder d(AltSrvc altSrvc, String str) {
        return new Notification.Builder(altSrvc, str);
    }

    public static /* synthetic */ NotificationChannel e() {
        return new NotificationChannel("hopmn_service_chan_fallback", "Background service", 2);
    }

    public static /* synthetic */ NotificationChannel g(String str) {
        return new NotificationChannel("hopmn_service_chan", str, 2);
    }

    public static /* synthetic */ NotificationChannel h(String str, String str2) {
        return new NotificationChannel(str, str2, 4);
    }

    public static /* bridge */ /* synthetic */ Class k() {
        return MethodHandles.Lookup.class;
    }

    public static /* bridge */ /* synthetic */ MethodHandles.Lookup q(Object obj) {
        return (MethodHandles.Lookup) obj;
    }
}
