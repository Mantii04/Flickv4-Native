package b4;

import java.util.concurrent.ThreadFactory;

/* renamed from: b4.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ThreadFactoryC0662l implements ThreadFactory {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8505b;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f8505b) {
            case 0:
                Thread thread = new Thread(runnable);
                thread.setName("IMSDK-Worker-" + thread.getId());
                thread.setDaemon(true);
                return thread;
            default:
                Thread thread2 = new Thread(runnable, "IMSDK-RemoteLog");
                thread2.setDaemon(true);
                return thread2;
        }
    }
}
