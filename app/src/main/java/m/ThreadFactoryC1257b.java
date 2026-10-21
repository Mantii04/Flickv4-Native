package m;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: m.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ThreadFactoryC1257b implements ThreadFactory {

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f18195b = new AtomicInteger(0);

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("arch_disk_io_" + this.f18195b.getAndIncrement());
        return thread;
    }
}
