package V3;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class J extends v implements G {

    /* renamed from: e, reason: collision with root package name */
    public final ScheduledFuture f3983e;

    public J(F f3, ScheduledFuture<?> scheduledFuture) {
        super(f3);
        this.f3983e = scheduledFuture;
    }

    @Override // V3.u, java.util.concurrent.Future
    public boolean cancel(boolean z6) {
        boolean cancel = super.cancel(z6);
        if (cancel) {
            this.f3983e.cancel(z6);
        }
        return cancel;
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return this.f3983e.getDelay(timeUnit);
    }

    @Override // java.lang.Comparable
    public int compareTo(Delayed delayed) {
        return this.f3983e.compareTo(delayed);
    }
}
