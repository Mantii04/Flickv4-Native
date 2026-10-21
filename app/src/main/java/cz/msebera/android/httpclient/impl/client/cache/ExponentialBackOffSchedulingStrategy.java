package cz.msebera.android.httpclient.impl.client.cache;

import A.i;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.util.Args;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes2.dex */
public class ExponentialBackOffSchedulingStrategy implements SchedulingStrategy {
    public static final long DEFAULT_BACK_OFF_RATE = 10;
    public static final long DEFAULT_INITIAL_EXPIRY_IN_MILLIS;
    public static final long DEFAULT_MAX_EXPIRY_IN_MILLIS;
    private final long backOffRate;
    private final ScheduledExecutorService executor;
    private final long initialExpiryInMillis;
    private final long maxExpiryInMillis;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        DEFAULT_INITIAL_EXPIRY_IN_MILLIS = timeUnit.toMillis(6L);
        DEFAULT_MAX_EXPIRY_IN_MILLIS = timeUnit.toMillis(86400L);
    }

    public ExponentialBackOffSchedulingStrategy(CacheConfig cacheConfig) {
        this(cacheConfig, 10L, DEFAULT_INITIAL_EXPIRY_IN_MILLIS, DEFAULT_MAX_EXPIRY_IN_MILLIS);
    }

    @Deprecated
    public static long checkNotNegative(String str, long j7) {
        if (j7 >= 0) {
            return j7;
        }
        throw new IllegalArgumentException(i.B(str, " may not be negative"));
    }

    @Deprecated
    public static <T> T checkNotNull(String str, T t6) {
        if (t6 != null) {
            return t6;
        }
        throw new IllegalArgumentException(i.B(str, " may not be null"));
    }

    private static ScheduledThreadPoolExecutor createThreadPoolFromCacheConfig(CacheConfig cacheConfig) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(cacheConfig.getAsynchronousWorkersMax());
        scheduledThreadPoolExecutor.setExecuteExistingDelayedTasksAfterShutdownPolicy(false);
        return scheduledThreadPoolExecutor;
    }

    public long calculateDelayInMillis(int i2) {
        if (i2 <= 0) {
            return 0L;
        }
        return Math.min((long) (Math.pow(this.backOffRate, i2 - 1) * this.initialExpiryInMillis), this.maxExpiryInMillis);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.executor.shutdown();
    }

    public long getBackOffRate() {
        return this.backOffRate;
    }

    public long getInitialExpiryInMillis() {
        return this.initialExpiryInMillis;
    }

    public long getMaxExpiryInMillis() {
        return this.maxExpiryInMillis;
    }

    @Override // cz.msebera.android.httpclient.impl.client.cache.SchedulingStrategy
    public void schedule(AsynchronousValidationRequest asynchronousValidationRequest) {
        Args.notNull(asynchronousValidationRequest, "RevalidationRequest");
        this.executor.schedule(asynchronousValidationRequest, calculateDelayInMillis(asynchronousValidationRequest.getConsecutiveFailedAttempts()), TimeUnit.MILLISECONDS);
    }

    public ExponentialBackOffSchedulingStrategy(CacheConfig cacheConfig, long j7, long j8, long j9) {
        this(createThreadPoolFromCacheConfig(cacheConfig), j7, j8, j9);
    }

    public ExponentialBackOffSchedulingStrategy(ScheduledExecutorService scheduledExecutorService, long j7, long j8, long j9) {
        this.executor = (ScheduledExecutorService) Args.notNull(scheduledExecutorService, "Executor");
        this.backOffRate = Args.notNegative(j7, "BackOffRate");
        this.initialExpiryInMillis = Args.notNegative(j8, "InitialExpiryInMillis");
        this.maxExpiryInMillis = Args.notNegative(j9, "MaxExpiryInMillis");
    }
}
