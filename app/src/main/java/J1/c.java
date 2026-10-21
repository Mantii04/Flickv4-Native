package J1;

import android.app.Notification;

/* loaded from: classes.dex */
public interface c {
    void cancelNotification(int i2);

    void notify(int i2, Notification notification);

    void startForeground(int i2, int i7, Notification notification);

    void stop();
}
