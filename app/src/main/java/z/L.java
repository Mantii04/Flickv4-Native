package z;

import android.app.Notification;

/* loaded from: classes.dex */
public abstract class L {
    public static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z6) {
        return builder.setAuthenticationRequired(z6);
    }

    public static Notification.Builder b(Notification.Builder builder, int i2) {
        return builder.setForegroundServiceBehavior(i2);
    }
}
