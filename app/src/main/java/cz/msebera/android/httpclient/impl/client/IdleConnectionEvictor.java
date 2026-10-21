package cz.msebera.android.httpclient.impl.client;

import cz.msebera.android.httpclient.conn.HttpClientConnectionManager;
import cz.msebera.android.httpclient.util.Args;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class IdleConnectionEvictor {
    private final HttpClientConnectionManager connectionManager;
    private volatile Exception exception;
    private final long maxIdleTimeMs;
    private final long sleepTimeMs;
    private final Thread thread;
    private final ThreadFactory threadFactory;

    public static class DefaultThreadFactory implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "Connection evictor");
            thread.setDaemon(true);
            return thread;
        }
    }

    public IdleConnectionEvictor(final HttpClientConnectionManager httpClientConnectionManager, ThreadFactory threadFactory, long j7, TimeUnit timeUnit, long j8, TimeUnit timeUnit2) {
        this.connectionManager = (HttpClientConnectionManager) Args.notNull(httpClientConnectionManager, "Connection manager");
        threadFactory = threadFactory == null ? new DefaultThreadFactory() : threadFactory;
        this.threadFactory = threadFactory;
        this.sleepTimeMs = timeUnit != null ? timeUnit.toMillis(j7) : j7;
        this.maxIdleTimeMs = timeUnit2 != null ? timeUnit2.toMillis(j8) : j8;
        this.thread = threadFactory.newThread(new Runnable() { // from class: cz.msebera.android.httpclient.impl.client.IdleConnectionEvictor.1
            @Override // java.lang.Runnable
            public void run() {
                while (!Thread.currentThread().isInterrupted()) {
                    try {
                        Thread.sleep(IdleConnectionEvictor.this.sleepTimeMs);
                        httpClientConnectionManager.closeExpiredConnections();
                        if (IdleConnectionEvictor.this.maxIdleTimeMs > 0) {
                            httpClientConnectionManager.closeIdleConnections(IdleConnectionEvictor.this.maxIdleTimeMs, TimeUnit.MILLISECONDS);
                        }
                    } catch (Exception e3) {
                        IdleConnectionEvictor.this.exception = e3;
                        return;
                    }
                }
            }
        });
    }

    public void awaitTermination(long j7, TimeUnit timeUnit) throws InterruptedException {
        Thread thread = this.thread;
        if (timeUnit == null) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        thread.join(timeUnit.toMillis(j7));
    }

    public boolean isRunning() {
        return this.thread.isAlive();
    }

    public void shutdown() {
        this.thread.interrupt();
    }

    public void start() {
        this.thread.start();
    }

    public IdleConnectionEvictor(HttpClientConnectionManager httpClientConnectionManager, long j7, TimeUnit timeUnit, long j8, TimeUnit timeUnit2) {
        this(httpClientConnectionManager, null, j7, timeUnit, j8, timeUnit2);
    }

    public IdleConnectionEvictor(HttpClientConnectionManager httpClientConnectionManager, long j7, TimeUnit timeUnit) {
        this(httpClientConnectionManager, null, j7 > 0 ? j7 : 5L, timeUnit != null ? timeUnit : TimeUnit.SECONDS, j7, timeUnit);
    }
}
