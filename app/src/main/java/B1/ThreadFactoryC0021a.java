package B1;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: B1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ThreadFactoryC0021a implements ThreadFactory {

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f158b = new AtomicInteger(0);

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f159e;

    public ThreadFactoryC0021a(boolean z6) {
        this.f159e = z6;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        StringBuilder o6 = b.c.o(this.f159e ? "WM.task-" : "androidx.work-");
        o6.append(this.f158b.incrementAndGet());
        return new Thread(runnable, o6.toString());
    }
}
