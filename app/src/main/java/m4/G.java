package m4;

import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes2.dex */
public final class G extends ThreadPoolExecutor {
    public final void a(int i2) {
        setCorePoolSize(i2);
        setMaximumPoolSize(i2);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        F f3 = new F((com.squareup.picasso.a) runnable);
        execute(f3);
        return f3;
    }
}
