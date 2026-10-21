package q2;

import java.util.concurrent.ThreadFactory;

/* renamed from: q2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ThreadFactoryC1515c implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new C1514b(runnable);
    }
}
