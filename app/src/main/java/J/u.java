package J;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class u implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new t(runnable);
    }
}
