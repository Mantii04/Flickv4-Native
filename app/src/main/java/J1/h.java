package J1;

import android.app.Notification;
import android.app.Service;

/* loaded from: classes.dex */
public abstract class h {
    public static void a(Service service, int i2, Notification notification, int i7) {
        service.startForeground(i2, notification, i7);
    }
}
