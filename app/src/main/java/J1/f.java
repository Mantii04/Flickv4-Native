package J1;

import android.app.Notification;
import androidx.work.impl.foreground.SystemForegroundService;

/* loaded from: classes.dex */
public final class f implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1495b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Notification f1496e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SystemForegroundService f1497f;

    public f(SystemForegroundService systemForegroundService, int i2, Notification notification) {
        this.f1497f = systemForegroundService;
        this.f1495b = i2;
        this.f1496e = notification;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1497f.f8310m.notify(this.f1495b, this.f1496e);
    }
}
