package j2;

import java.util.concurrent.ThreadFactory;

/* renamed from: j2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ThreadFactoryC1041b implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public synchronized Thread newThread(Runnable runnable) {
        Thread thread;
        thread = new Thread(runnable, "glide-disk-lru-cache-thread");
        thread.setPriority(1);
        return thread;
    }
}
