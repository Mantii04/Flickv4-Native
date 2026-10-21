package J1;

import android.app.Notification;
import android.os.Build;
import androidx.work.impl.foreground.SystemForegroundService;

/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1491b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Notification f1492e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f1493f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SystemForegroundService f1494j;

    public e(SystemForegroundService systemForegroundService, int i2, Notification notification, int i7) {
        this.f1494j = systemForegroundService;
        this.f1491b = i2;
        this.f1492e = notification;
        this.f1493f = i7;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2 = Build.VERSION.SDK_INT;
        int i7 = this.f1493f;
        Notification notification = this.f1492e;
        int i8 = this.f1491b;
        SystemForegroundService systemForegroundService = this.f1494j;
        if (i2 >= 31) {
            i.a(systemForegroundService, i8, notification, i7);
        } else if (i2 >= 29) {
            h.a(systemForegroundService, i8, notification, i7);
        } else {
            systemForegroundService.startForeground(i8, notification);
        }
    }
}
