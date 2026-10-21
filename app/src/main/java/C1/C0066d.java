package C1;

import android.os.Handler;
import android.os.Looper;

/* renamed from: C1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0066d implements B1.G {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f426a = I.l.createAsync(Looper.getMainLooper());

    public void cancel(Runnable runnable) {
        this.f426a.removeCallbacks(runnable);
    }

    public void scheduleWithDelay(long j7, Runnable runnable) {
        this.f426a.postDelayed(runnable, j7);
    }
}
