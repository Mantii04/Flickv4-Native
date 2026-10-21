package f1;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* loaded from: classes.dex */
public final class Y {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f14209a = new Handler(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    public final RunnableC0883a f14210b;

    /* renamed from: c, reason: collision with root package name */
    public long f14211c;

    /* renamed from: d, reason: collision with root package name */
    public long f14212d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14213e;

    public Y(RunnableC0883a runnableC0883a) {
        this.f14210b = runnableC0883a;
    }

    public boolean finalizeActiveScanAndScheduleSuppressActiveScanRunnable() {
        if (this.f14213e) {
            long j7 = this.f14211c;
            if (j7 > 0) {
                this.f14209a.postDelayed(this.f14210b, j7);
            }
        }
        return this.f14213e;
    }

    public void requestActiveScan(boolean z6, long j7) {
        if (z6) {
            long j8 = this.f14212d;
            if (j8 - j7 >= 30000) {
                return;
            }
            this.f14211c = Math.max(this.f14211c, (j7 + 30000) - j8);
            this.f14213e = true;
        }
    }

    public void reset() {
        this.f14211c = 0L;
        this.f14213e = false;
        this.f14212d = SystemClock.elapsedRealtime();
        this.f14209a.removeCallbacks(this.f14210b);
    }
}
