package I;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public final class i implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final Handler f1222b;

    public i(Handler handler) {
        this.f1222b = (Handler) L.h.checkNotNull(handler);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Runnable runnable2 = (Runnable) L.h.checkNotNull(runnable);
        Handler handler = this.f1222b;
        if (handler.post(runnable2)) {
            return;
        }
        throw new RejectedExecutionException(handler + " is shutting down");
    }
}
