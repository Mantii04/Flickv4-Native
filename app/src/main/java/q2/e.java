package q2;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class e implements ThreadFactory {

    /* renamed from: b, reason: collision with root package name */
    public final ThreadFactoryC1515c f19569b;

    /* renamed from: e, reason: collision with root package name */
    public final String f19570e;

    /* renamed from: f, reason: collision with root package name */
    public final f f19571f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f19572j;

    /* renamed from: m, reason: collision with root package name */
    public final AtomicInteger f19573m;

    public e(ThreadFactoryC1515c threadFactoryC1515c, String str, boolean z6) {
        f fVar = g.f19574a;
        this.f19573m = new AtomicInteger();
        this.f19569b = threadFactoryC1515c;
        this.f19570e = str;
        this.f19571f = fVar;
        this.f19572j = z6;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f19569b.newThread(new RunnableC1516d(this, runnable));
        newThread.setName("glide-" + this.f19570e + "-thread-" + this.f19573m.getAndIncrement());
        return newThread;
    }
}
