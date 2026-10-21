package J1;

import androidx.work.impl.foreground.SystemForegroundService;

/* loaded from: classes.dex */
public final class g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1498b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SystemForegroundService f1499e;

    public g(SystemForegroundService systemForegroundService, int i2) {
        this.f1499e = systemForegroundService;
        this.f1498b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1499e.f8310m.cancel(this.f1498b);
    }
}
