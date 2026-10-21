package Y5;

import R5.AbstractC0265c;
import R5.K;
import W5.B;
import W5.G;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.exoplayer.Renderer;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState;

/* loaded from: classes2.dex */
public final class c implements Executor, Closeable {

    /* renamed from: q, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f4407q;

    /* renamed from: r, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f4408r;

    /* renamed from: s, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4409s;

    /* renamed from: t, reason: collision with root package name */
    public static final G f4410t;
    private volatile int _isTerminated;

    /* renamed from: b, reason: collision with root package name */
    public final int f4411b;
    private volatile long controlState;

    /* renamed from: e, reason: collision with root package name */
    public final int f4412e;

    /* renamed from: f, reason: collision with root package name */
    public final long f4413f;

    /* renamed from: j, reason: collision with root package name */
    public final String f4414j;

    /* renamed from: m, reason: collision with root package name */
    public final f f4415m;

    /* renamed from: n, reason: collision with root package name */
    public final f f4416n;

    /* renamed from: p, reason: collision with root package name */
    public final B f4417p;
    private volatile long parkedWorkersStack;

    static {
        new a(null);
        f4407q = AtomicLongFieldUpdater.newUpdater(c.class, "parkedWorkersStack");
        f4408r = AtomicLongFieldUpdater.newUpdater(c.class, "controlState");
        f4409s = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isTerminated");
        f4410t = new G("NOT_IN_STACK");
    }

    public c(int i2, int i7, long j7, String str) {
        this.f4411b = i2;
        this.f4412e = i7;
        this.f4413f = j7;
        this.f4414j = str;
        if (i2 < 1) {
            throw new IllegalArgumentException(A.i.g(i2, "Core pool size ", " should be at least 1").toString());
        }
        if (i7 < i2) {
            throw new IllegalArgumentException(A.i.e(i7, i2, "Max pool size ", " should be greater than or equals to core pool size ").toString());
        }
        if (i7 > 2097150) {
            throw new IllegalArgumentException(A.i.g(i7, "Max pool size ", " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j7 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j7 + " must be positive").toString());
        }
        this.f4415m = new f();
        this.f4416n = new f();
        this.f4417p = new B((i2 + 1) * 2);
        this.controlState = i2 << 42;
        this._isTerminated = 0;
    }

    public static /* synthetic */ void dispatch$default(c cVar, Runnable runnable, k kVar, boolean z6, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            kVar = n.f4433g;
        }
        if ((i2 & 4) != 0) {
            z6 = false;
        }
        cVar.dispatch(runnable, kVar, z6);
    }

    public final int a() {
        synchronized (this.f4417p) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f4408r;
                long j7 = atomicLongFieldUpdater.get(this);
                int i2 = (int) (j7 & 2097151);
                int coerceAtLeast = M5.g.coerceAtLeast(i2 - ((int) ((j7 & 4398044413952L) >> 21)), 0);
                if (coerceAtLeast >= this.f4411b) {
                    return 0;
                }
                if (i2 >= this.f4412e) {
                    return 0;
                }
                int i7 = ((int) (f4408r.get(this) & 2097151)) + 1;
                if (i7 <= 0 || this.f4417p.get(i7) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                b bVar = new b(this, i7);
                this.f4417p.setSynchronized(i7, bVar);
                if (i7 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i8 = coerceAtLeast + 1;
                bVar.start();
                return i8;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b(long j7) {
        int coerceAtLeast = M5.g.coerceAtLeast(((int) (2097151 & j7)) - ((int) ((j7 & 4398044413952L) >> 21)), 0);
        int i2 = this.f4411b;
        if (coerceAtLeast < i2) {
            int a7 = a();
            if (a7 == 1 && i2 > 1) {
                a();
            }
            if (a7 > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean c() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        G g7;
        int i2;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f4407q;
            long j7 = atomicLongFieldUpdater.get(this);
            b bVar = (b) this.f4417p.get((int) (2097151 & j7));
            if (bVar == null) {
                bVar = null;
            } else {
                long j8 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j7) & (-2097152);
                Object nextParkedWorker = bVar.getNextParkedWorker();
                while (true) {
                    g7 = f4410t;
                    if (nextParkedWorker == g7) {
                        i2 = -1;
                        break;
                    }
                    if (nextParkedWorker == null) {
                        i2 = 0;
                        break;
                    }
                    b bVar2 = (b) nextParkedWorker;
                    i2 = bVar2.getIndexInArray();
                    if (i2 != 0) {
                        break;
                    }
                    nextParkedWorker = bVar2.getNextParkedWorker();
                }
                if (i2 >= 0 && atomicLongFieldUpdater.compareAndSet(this, j7, j8 | i2)) {
                    bVar.setNextParkedWorker(g7);
                }
            }
            if (bVar == null) {
                return false;
            }
            atomicIntegerFieldUpdater = b.f4398r;
            if (atomicIntegerFieldUpdater.compareAndSet(bVar, -1, 0)) {
                LockSupport.unpark(bVar);
                return true;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        shutdown(Renderer.DEFAULT_DURATION_TO_PROGRESS_US);
    }

    public final j createTask(Runnable runnable, k kVar) {
        long nanoTime = n.f4432f.nanoTime();
        if (!(runnable instanceof j)) {
            return new m(runnable, nanoTime, kVar);
        }
        j jVar = (j) runnable;
        jVar.f4423b = nanoTime;
        jVar.f4424e = kVar;
        return jVar;
    }

    public final void dispatch(Runnable runnable, k kVar, boolean z6) {
        c cVar;
        AbstractC0265c.getTimeSource();
        j createTask = createTask(runnable, kVar);
        boolean z7 = false;
        boolean z8 = ((l) createTask.f4424e).getTaskMode() == 1;
        long addAndGet = z8 ? f4408r.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) : 0L;
        Thread currentThread = Thread.currentThread();
        b bVar = null;
        b bVar2 = currentThread instanceof b ? (b) currentThread : null;
        if (bVar2 != null) {
            cVar = bVar2.f4406q;
            if (kotlin.jvm.internal.j.areEqual(cVar, this)) {
                bVar = bVar2;
            }
        }
        if (bVar != null && bVar.f4401f != CoroutineScheduler$WorkerState.f17622m && (((l) createTask.f4424e).getTaskMode() != 0 || bVar.f4401f != CoroutineScheduler$WorkerState.f17619e)) {
            bVar.f4405p = true;
            createTask = bVar.f4399b.add(createTask, z6);
        }
        if (createTask != null) {
            if (!(((l) createTask.f4424e).getTaskMode() == 1 ? this.f4416n.addLast(createTask) : this.f4415m.addLast(createTask))) {
                throw new RejectedExecutionException(A.i.o(new StringBuilder(), this.f4414j, " was terminated"));
            }
        }
        if (z6 && bVar != null) {
            z7 = true;
        }
        if (!z8) {
            if (z7) {
                return;
            }
            signalCpuWork();
        } else {
            if (z7 || c() || b(addAndGet)) {
                return;
            }
            c();
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        dispatch$default(this, runnable, null, false, 6, null);
    }

    public final boolean isTerminated() {
        return f4409s.get(this) != 0;
    }

    public final boolean parkedWorkersStackPush(b bVar) {
        long j7;
        long j8;
        int indexInArray;
        if (bVar.getNextParkedWorker() != f4410t) {
            return false;
        }
        do {
            j7 = f4407q.get(this);
            j8 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j7) & (-2097152);
            indexInArray = bVar.getIndexInArray();
            bVar.setNextParkedWorker(this.f4417p.get((int) (2097151 & j7)));
        } while (!f4407q.compareAndSet(this, j7, indexInArray | j8));
        return true;
    }

    public final void parkedWorkersStackTopUpdate(b bVar, int i2, int i7) {
        while (true) {
            long j7 = f4407q.get(this);
            int i8 = (int) (2097151 & j7);
            long j8 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j7) & (-2097152);
            if (i8 == i2) {
                if (i7 == 0) {
                    Object nextParkedWorker = bVar.getNextParkedWorker();
                    while (true) {
                        if (nextParkedWorker == f4410t) {
                            i8 = -1;
                            break;
                        }
                        if (nextParkedWorker == null) {
                            i8 = 0;
                            break;
                        }
                        b bVar2 = (b) nextParkedWorker;
                        int indexInArray = bVar2.getIndexInArray();
                        if (indexInArray != 0) {
                            i8 = indexInArray;
                            break;
                        }
                        nextParkedWorker = bVar2.getNextParkedWorker();
                    }
                } else {
                    i8 = i7;
                }
            }
            if (i8 >= 0) {
                if (f4407q.compareAndSet(this, j7, i8 | j8)) {
                    return;
                }
            }
        }
    }

    public final void runSafely(j jVar) {
        try {
            jVar.run();
        } catch (Throwable th) {
            try {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
            } finally {
                AbstractC0265c.getTimeSource();
            }
        }
    }

    public final void shutdown(long j7) {
        int i2;
        j jVar;
        c cVar;
        if (f4409s.compareAndSet(this, 0, 1)) {
            Thread currentThread = Thread.currentThread();
            b bVar = null;
            b bVar2 = currentThread instanceof b ? (b) currentThread : null;
            if (bVar2 != null) {
                cVar = bVar2.f4406q;
                if (kotlin.jvm.internal.j.areEqual(cVar, this)) {
                    bVar = bVar2;
                }
            }
            synchronized (this.f4417p) {
                i2 = (int) (f4408r.get(this) & 2097151);
            }
            if (1 <= i2) {
                int i7 = 1;
                while (true) {
                    Object obj = this.f4417p.get(i7);
                    kotlin.jvm.internal.j.checkNotNull(obj);
                    b bVar3 = (b) obj;
                    if (bVar3 != bVar) {
                        while (bVar3.isAlive()) {
                            LockSupport.unpark(bVar3);
                            bVar3.join(j7);
                        }
                        bVar3.f4399b.offloadAllWorkTo(this.f4416n);
                    }
                    if (i7 == i2) {
                        break;
                    } else {
                        i7++;
                    }
                }
            }
            this.f4416n.close();
            this.f4415m.close();
            while (true) {
                if (bVar != null) {
                    jVar = bVar.findTask(true);
                    if (jVar != null) {
                        continue;
                        runSafely(jVar);
                    }
                }
                jVar = (j) this.f4415m.removeFirstOrNull();
                if (jVar == null && (jVar = (j) this.f4416n.removeFirstOrNull()) == null) {
                    break;
                }
                runSafely(jVar);
            }
            if (bVar != null) {
                bVar.tryReleaseCpu(CoroutineScheduler$WorkerState.f17622m);
            }
            f4407q.set(this, 0L);
            f4408r.set(this, 0L);
        }
    }

    public final void signalCpuWork() {
        if (c() || b(f4408r.get(this))) {
            return;
        }
        c();
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        B b7 = this.f4417p;
        int currentLength = b7.currentLength();
        int i2 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 1; i11 < currentLength; i11++) {
            b bVar = (b) b7.get(i11);
            if (bVar != null) {
                int size$kotlinx_coroutines_core = bVar.f4399b.getSize$kotlinx_coroutines_core();
                int ordinal = bVar.f4401f.ordinal();
                if (ordinal == 0) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(size$kotlinx_coroutines_core);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (ordinal == 1) {
                    i7++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(size$kotlinx_coroutines_core);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (ordinal == 2) {
                    i8++;
                } else if (ordinal == 3) {
                    i9++;
                    if (size$kotlinx_coroutines_core > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(size$kotlinx_coroutines_core);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (ordinal == 4) {
                    i10++;
                }
            }
        }
        long j7 = f4408r.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f4414j);
        sb4.append('@');
        sb4.append(K.getHexAddress(this));
        sb4.append("[Pool Size {core = ");
        int i12 = this.f4411b;
        sb4.append(i12);
        sb4.append(", max = ");
        sb4.append(this.f4412e);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i2);
        sb4.append(", blocking = ");
        sb4.append(i7);
        sb4.append(", parked = ");
        sb4.append(i8);
        sb4.append(", dormant = ");
        sb4.append(i9);
        sb4.append(", terminated = ");
        sb4.append(i10);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f4415m.getSize());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f4416n.getSize());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j7));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j7) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i12 - ((int) ((j7 & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
