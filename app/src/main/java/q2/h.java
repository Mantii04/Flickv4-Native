package q2;

import androidx.media3.common.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class h implements ExecutorService {

    /* renamed from: e, reason: collision with root package name */
    public static final long f19575e = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: f, reason: collision with root package name */
    public static volatile int f19576f;

    /* renamed from: b, reason: collision with root package name */
    public final ThreadPoolExecutor f19577b;

    public h(ThreadPoolExecutor threadPoolExecutor) {
        this.f19577b = threadPoolExecutor;
    }

    public static int calculateBestThreadCount() {
        if (f19576f == 0) {
            f19576f = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        return f19576f;
    }

    public static C1513a newAnimationBuilder() {
        return new C1513a(true).setThreadCount(calculateBestThreadCount() >= 4 ? 2 : 1).setName("animation");
    }

    public static h newAnimationExecutor() {
        return newAnimationBuilder().build();
    }

    public static C1513a newDiskCacheBuilder() {
        return new C1513a(true).setThreadCount(1).setName("disk-cache");
    }

    public static h newDiskCacheExecutor() {
        return newDiskCacheBuilder().build();
    }

    public static C1513a newSourceBuilder() {
        return new C1513a(false).setThreadCount(calculateBestThreadCount()).setName(FirebaseAnalytics.Param.SOURCE);
    }

    public static h newSourceExecutor() {
        return newSourceBuilder().build();
    }

    public static h newUnlimitedSourceExecutor() {
        return new h(new ThreadPoolExecutor(0, Log.LOG_LEVEL_OFF, f19575e, TimeUnit.MILLISECONDS, new SynchronousQueue(), new e(new ThreadFactoryC1515c(), "source-unlimited", false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j7, TimeUnit timeUnit) throws InterruptedException {
        return this.f19577b.awaitTermination(j7, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f19577b.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f19577b.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f19577b.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f19577b.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f19577b.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f19577b.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return this.f19577b.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.f19577b.submit(runnable);
    }

    public String toString() {
        return this.f19577b.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j7, TimeUnit timeUnit) throws InterruptedException {
        return this.f19577b.invokeAll(collection, j7, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j7, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f19577b.invokeAny(collection, j7, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t6) {
        return this.f19577b.submit(runnable, t6);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f19577b.submit(callable);
    }
}
