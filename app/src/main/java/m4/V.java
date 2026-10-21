package m4;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes2.dex */
public final class V implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new U(runnable);
    }
}
