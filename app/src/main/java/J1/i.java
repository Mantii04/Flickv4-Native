package J1;

import B1.t;
import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.Service;
import androidx.work.impl.foreground.SystemForegroundService;

/* loaded from: classes.dex */
public abstract class i {
    public static void a(Service service, int i2, Notification notification, int i7) {
        try {
            service.startForeground(i2, notification, i7);
        } catch (ForegroundServiceStartNotAllowedException e3) {
            t.get().warning(SystemForegroundService.f8306n, "Unable to start foreground service", e3);
        }
    }
}
