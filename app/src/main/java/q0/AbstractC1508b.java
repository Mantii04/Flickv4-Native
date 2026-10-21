package q0;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;

/* renamed from: q0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1508b {
    @SuppressLint({"MissingPermission"})
    public static Notification.MediaStyle a(Notification.MediaStyle mediaStyle, CharSequence charSequence, int i2, PendingIntent pendingIntent, Boolean bool) {
        if (bool.booleanValue()) {
            mediaStyle.setRemotePlaybackInfo(charSequence, i2, pendingIntent);
        }
        return mediaStyle;
    }
}
