package b4;

import android.app.NotificationChannel;
import java.nio.file.Path;

/* renamed from: b4.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0658h {
    public static /* synthetic */ NotificationChannel C(String str) {
        return new NotificationChannel("cast_media_notification", str, 2);
    }

    public static /* synthetic */ NotificationChannel D(String str) {
        return new NotificationChannel("com.google.android.gms.availability", str, 4);
    }

    public static /* synthetic */ NotificationChannel e(String str) {
        return new NotificationChannel("cast_remote_display_local_service", str, 2);
    }

    public static /* bridge */ /* synthetic */ Class i() {
        return Path.class;
    }

    public static /* bridge */ /* synthetic */ Path m(Object obj) {
        return (Path) obj;
    }
}
