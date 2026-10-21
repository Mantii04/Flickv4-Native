package N1;

import L1.t;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class e implements c {

    /* renamed from: a, reason: collision with root package name */
    public final t f2292a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f2293b = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    public final d f2294c = new d(this);

    public e(Executor executor) {
        this.f2292a = new t(executor);
    }

    public Executor getMainThreadExecutor() {
        return this.f2294c;
    }

    /* renamed from: getSerialTaskExecutor, reason: merged with bridge method [inline-methods] */
    public t m1getSerialTaskExecutor() {
        return this.f2292a;
    }
}
