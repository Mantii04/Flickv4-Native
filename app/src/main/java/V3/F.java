package V3;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public interface F extends Future {
    void addListener(Runnable runnable, Executor executor);
}
