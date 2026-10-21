package io.reactivex.internal.operators.parallel;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import m6.c;
import m6.d;

/* loaded from: classes2.dex */
public final class ParallelRunOn<T> extends ParallelFlowable<T> {
    final int prefetch;
    final Scheduler scheduler;
    final ParallelFlowable<? extends T> source;

    public static abstract class BaseRunOnSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, d, Runnable {
        private static final long serialVersionUID = 9222303586456402150L;
        volatile boolean cancelled;
        int consumed;
        volatile boolean done;
        Throwable error;
        final int limit;
        final int prefetch;
        final SpscArrayQueue<T> queue;
        final AtomicLong requested = new AtomicLong();
        d upstream;
        final Scheduler.Worker worker;

        public BaseRunOnSubscriber(int i2, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            this.prefetch = i2;
            this.queue = spscArrayQueue;
            this.limit = i2 - (i2 >> 2);
            this.worker = worker;
        }

        @Override // m6.d
        public final void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public final void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            schedule();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public final void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            schedule();
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public final void onNext(T t6) {
            if (this.done) {
                return;
            }
            if (this.queue.offer(t6)) {
                schedule();
            } else {
                this.upstream.cancel();
                onError(new MissingBackpressureException("Queue is full?!"));
            }
        }

        @Override // m6.d
        public final void request(long j7) {
            if (SubscriptionHelper.validate(j7)) {
                BackpressureHelper.add(this.requested, j7);
                schedule();
            }
        }

        public final void schedule() {
            if (getAndIncrement() == 0) {
                this.worker.schedule(this);
            }
        }
    }

    public final class MultiWorkerCallback implements SchedulerMultiWorkerSupport.WorkerCallback {
        final c[] parents;
        final c[] subscribers;

        public MultiWorkerCallback(c[] cVarArr, c[] cVarArr2) {
            this.subscribers = cVarArr;
            this.parents = cVarArr2;
        }

        @Override // io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport.WorkerCallback
        public void onWorker(int i2, Scheduler.Worker worker) {
            ParallelRunOn.this.createSubscriber(i2, this.subscribers, this.parents, worker);
        }
    }

    public static final class RunOnConditionalSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;
        final ConditionalSubscriber<? super T> downstream;

        public RunOnConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, int i2, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            super(i2, spscArrayQueue, worker);
            this.downstream = conditionalSubscriber;
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(this.prefetch);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th;
            int i2 = this.consumed;
            SpscArrayQueue<T> spscArrayQueue = this.queue;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
            int i7 = this.limit;
            int i8 = 1;
            while (true) {
                long j7 = this.requested.get();
                long j8 = 0;
                while (j8 != j7) {
                    if (this.cancelled) {
                        spscArrayQueue.clear();
                        return;
                    }
                    boolean z6 = this.done;
                    if (z6 && (th = this.error) != null) {
                        spscArrayQueue.clear();
                        conditionalSubscriber.onError(th);
                        this.worker.dispose();
                        return;
                    }
                    T poll = spscArrayQueue.poll();
                    boolean z7 = poll == null;
                    if (z6 && z7) {
                        conditionalSubscriber.onComplete();
                        this.worker.dispose();
                        return;
                    } else {
                        if (z7) {
                            break;
                        }
                        if (conditionalSubscriber.tryOnNext(poll)) {
                            j8++;
                        }
                        i2++;
                        if (i2 == i7) {
                            this.upstream.request(i2);
                            i2 = 0;
                        }
                    }
                }
                if (j8 == j7) {
                    if (this.cancelled) {
                        spscArrayQueue.clear();
                        return;
                    }
                    if (this.done) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            spscArrayQueue.clear();
                            conditionalSubscriber.onError(th2);
                            this.worker.dispose();
                            return;
                        } else if (spscArrayQueue.isEmpty()) {
                            conditionalSubscriber.onComplete();
                            this.worker.dispose();
                            return;
                        }
                    }
                }
                if (j8 != 0 && j7 != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j8);
                }
                int i9 = get();
                if (i9 == i8) {
                    this.consumed = i2;
                    i8 = addAndGet(-i8);
                    if (i8 == 0) {
                        return;
                    }
                } else {
                    i8 = i9;
                }
            }
        }
    }

    public static final class RunOnSubscriber<T> extends BaseRunOnSubscriber<T> {
        private static final long serialVersionUID = 1075119423897941642L;
        final c downstream;

        public RunOnSubscriber(c cVar, int i2, SpscArrayQueue<T> spscArrayQueue, Scheduler.Worker worker) {
            super(i2, spscArrayQueue, worker);
            this.downstream = cVar;
        }

        @Override // io.reactivex.FlowableSubscriber, m6.c
        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(this.prefetch);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th;
            int i2 = this.consumed;
            SpscArrayQueue<T> spscArrayQueue = this.queue;
            c cVar = this.downstream;
            int i7 = this.limit;
            int i8 = 1;
            while (true) {
                long j7 = this.requested.get();
                long j8 = 0;
                while (j8 != j7) {
                    if (this.cancelled) {
                        spscArrayQueue.clear();
                        return;
                    }
                    boolean z6 = this.done;
                    if (z6 && (th = this.error) != null) {
                        spscArrayQueue.clear();
                        cVar.onError(th);
                        this.worker.dispose();
                        return;
                    }
                    T poll = spscArrayQueue.poll();
                    boolean z7 = poll == null;
                    if (z6 && z7) {
                        cVar.onComplete();
                        this.worker.dispose();
                        return;
                    } else {
                        if (z7) {
                            break;
                        }
                        cVar.onNext(poll);
                        j8++;
                        i2++;
                        if (i2 == i7) {
                            this.upstream.request(i2);
                            i2 = 0;
                        }
                    }
                }
                if (j8 == j7) {
                    if (this.cancelled) {
                        spscArrayQueue.clear();
                        return;
                    }
                    if (this.done) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            spscArrayQueue.clear();
                            cVar.onError(th2);
                            this.worker.dispose();
                            return;
                        } else if (spscArrayQueue.isEmpty()) {
                            cVar.onComplete();
                            this.worker.dispose();
                            return;
                        }
                    }
                }
                if (j8 != 0 && j7 != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j8);
                }
                int i9 = get();
                if (i9 == i8) {
                    this.consumed = i2;
                    i8 = addAndGet(-i8);
                    if (i8 == 0) {
                        return;
                    }
                } else {
                    i8 = i9;
                }
            }
        }
    }

    public ParallelRunOn(ParallelFlowable<? extends T> parallelFlowable, Scheduler scheduler, int i2) {
        this.source = parallelFlowable;
        this.scheduler = scheduler;
        this.prefetch = i2;
    }

    public void createSubscriber(int i2, c[] cVarArr, c[] cVarArr2, Scheduler.Worker worker) {
        c cVar = cVarArr[i2];
        SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.prefetch);
        if (cVar instanceof ConditionalSubscriber) {
            cVarArr2[i2] = new RunOnConditionalSubscriber((ConditionalSubscriber) cVar, this.prefetch, spscArrayQueue, worker);
        } else {
            cVarArr2[i2] = new RunOnSubscriber(cVar, this.prefetch, spscArrayQueue, worker);
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.source.parallelism();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(c[] cVarArr) {
        if (validate(cVarArr)) {
            int length = cVarArr.length;
            c[] cVarArr2 = new c[length];
            Object obj = this.scheduler;
            if (obj instanceof SchedulerMultiWorkerSupport) {
                ((SchedulerMultiWorkerSupport) obj).createWorkers(length, new MultiWorkerCallback(cVarArr, cVarArr2));
            } else {
                for (int i2 = 0; i2 < length; i2++) {
                    createSubscriber(i2, cVarArr, cVarArr2, this.scheduler.createWorker());
                }
            }
            this.source.subscribe(cVarArr2);
        }
    }
}
