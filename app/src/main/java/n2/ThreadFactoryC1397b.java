package n2;

import java.util.concurrent.ThreadFactory;

/* renamed from: n2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ThreadFactoryC1397b implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(new RunnableC1396a(runnable), "glide-active-resources");
    }
}
