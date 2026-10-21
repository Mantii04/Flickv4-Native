package io.reactivex.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class TestScheduler extends Scheduler {
    long counter;
    final Queue<TimedRunnable> queue = new PriorityBlockingQueue(11);
    volatile long time;

    public static final class TimedRunnable implements Comparable<TimedRunnable> {
        final long count;
        final Runnable run;
        final TestWorker scheduler;
        final long time;

        public TimedRunnable(TestWorker testWorker, long j7, Runnable runnable, long j8) {
            this.time = j7;
            this.run = runnable;
            this.scheduler = testWorker;
            this.count = j8;
        }

        public String toString() {
            return String.format("TimedRunnable(time = %d, run = %s)", Long.valueOf(this.time), this.run.toString());
        }

        @Override // java.lang.Comparable
        public int compareTo(TimedRunnable timedRunnable) {
            long j7 = this.time;
            long j8 = timedRunnable.time;
            return j7 == j8 ? ObjectHelper.compare(this.count, timedRunnable.count) : ObjectHelper.compare(j7, j8);
        }
    }

    public TestScheduler() {
    }

    public void advanceTimeBy(long j7, TimeUnit timeUnit) {
        advanceTimeTo(timeUnit.toNanos(j7) + this.time, TimeUnit.NANOSECONDS);
    }

    public void advanceTimeTo(long j7, TimeUnit timeUnit) {
        triggerActions(timeUnit.toNanos(j7));
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        return new TestWorker();
    }

    @Override // io.reactivex.Scheduler
    public long now(@NonNull TimeUnit timeUnit) {
        return timeUnit.convert(this.time, TimeUnit.NANOSECONDS);
    }

    public void triggerActions() {
        triggerActions(this.time);
    }

    private void triggerActions(long j7) {
        while (true) {
            TimedRunnable peek = this.queue.peek();
            if (peek == null) {
                break;
            }
            long j8 = peek.time;
            if (j8 > j7) {
                break;
            }
            if (j8 == 0) {
                j8 = this.time;
            }
            this.time = j8;
            this.queue.remove(peek);
            if (!peek.scheduler.disposed) {
                peek.run.run();
            }
        }
        this.time = j7;
    }

    public TestScheduler(long j7, TimeUnit timeUnit) {
        this.time = timeUnit.toNanos(j7);
    }

    public final class TestWorker extends Scheduler.Worker {
        volatile boolean disposed;

        public final class QueueRemove implements Runnable {
            final TimedRunnable timedAction;

            public QueueRemove(TimedRunnable timedRunnable) {
                this.timedAction = timedRunnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                TestScheduler.this.queue.remove(this.timedAction);
            }
        }

        public TestWorker() {
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.Scheduler.Worker
        public long now(@NonNull TimeUnit timeUnit) {
            return TestScheduler.this.now(timeUnit);
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable runnable, long j7, @NonNull TimeUnit timeUnit) {
            if (this.disposed) {
                return EmptyDisposable.INSTANCE;
            }
            long nanos = timeUnit.toNanos(j7) + TestScheduler.this.time;
            TestScheduler testScheduler = TestScheduler.this;
            long j8 = testScheduler.counter;
            testScheduler.counter = 1 + j8;
            TimedRunnable timedRunnable = new TimedRunnable(this, nanos, runnable, j8);
            TestScheduler.this.queue.add(timedRunnable);
            return Disposables.fromRunnable(new QueueRemove(timedRunnable));
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable runnable) {
            if (this.disposed) {
                return EmptyDisposable.INSTANCE;
            }
            TestScheduler testScheduler = TestScheduler.this;
            long j7 = testScheduler.counter;
            testScheduler.counter = 1 + j7;
            TimedRunnable timedRunnable = new TimedRunnable(this, 0L, runnable, j7);
            TestScheduler.this.queue.add(timedRunnable);
            return Disposables.fromRunnable(new QueueRemove(timedRunnable));
        }
    }
}
