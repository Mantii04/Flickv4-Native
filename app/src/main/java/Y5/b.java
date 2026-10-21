package Y5;

import androidx.media3.common.util.Log;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState;

/* loaded from: classes2.dex */
public final class b extends Thread {

    /* renamed from: r, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4398r = AtomicIntegerFieldUpdater.newUpdater(b.class, "workerCtl");

    /* renamed from: b, reason: collision with root package name */
    public final p f4399b;

    /* renamed from: e, reason: collision with root package name */
    public final Ref$ObjectRef f4400e;

    /* renamed from: f, reason: collision with root package name */
    public CoroutineScheduler$WorkerState f4401f;
    private volatile int indexInArray;

    /* renamed from: j, reason: collision with root package name */
    public long f4402j;

    /* renamed from: m, reason: collision with root package name */
    public long f4403m;

    /* renamed from: n, reason: collision with root package name */
    public int f4404n;
    private volatile Object nextParkedWorker;

    /* renamed from: p, reason: collision with root package name */
    public boolean f4405p;

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ c f4406q;
    private volatile int workerCtl;

    public b(c cVar, int i2) {
        this.f4406q = cVar;
        setDaemon(true);
        this.f4399b = new p();
        this.f4400e = new Ref$ObjectRef();
        this.f4401f = CoroutineScheduler$WorkerState.f17621j;
        this.nextParkedWorker = c.f4410t;
        this.f4404n = K5.d.f1818b.nextInt();
        setIndexInArray(i2);
    }

    public final j a() {
        int nextInt = nextInt(2);
        c cVar = this.f4406q;
        if (nextInt == 0) {
            j jVar = (j) cVar.f4415m.removeFirstOrNull();
            return jVar != null ? jVar : (j) cVar.f4416n.removeFirstOrNull();
        }
        j jVar2 = (j) cVar.f4416n.removeFirstOrNull();
        return jVar2 != null ? jVar2 : (j) cVar.f4415m.removeFirstOrNull();
    }

    public final j b(int i2) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = c.f4408r;
        c cVar = this.f4406q;
        int i7 = (int) (atomicLongFieldUpdater.get(cVar) & 2097151);
        if (i7 < 2) {
            return null;
        }
        int nextInt = nextInt(i7);
        long j7 = Long.MAX_VALUE;
        for (int i8 = 0; i8 < i7; i8++) {
            nextInt++;
            if (nextInt > i7) {
                nextInt = 1;
            }
            b bVar = (b) cVar.f4417p.get(nextInt);
            if (bVar != null && bVar != this) {
                p pVar = bVar.f4399b;
                Ref$ObjectRef<j> ref$ObjectRef = this.f4400e;
                long trySteal = pVar.trySteal(i2, ref$ObjectRef);
                if (trySteal == -1) {
                    j jVar = (j) ref$ObjectRef.f17447b;
                    ref$ObjectRef.f17447b = null;
                    return jVar;
                }
                if (trySteal > 0) {
                    j7 = Math.min(j7, trySteal);
                }
            }
        }
        if (j7 == Long.MAX_VALUE) {
            j7 = 0;
        }
        this.f4403m = j7;
        return null;
    }

    public final j findTask(boolean z6) {
        j a7;
        j a8;
        c cVar;
        long j7;
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState = this.f4401f;
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState2 = CoroutineScheduler$WorkerState.f17618b;
        p pVar = this.f4399b;
        c cVar2 = this.f4406q;
        if (coroutineScheduler$WorkerState != coroutineScheduler$WorkerState2) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = c.f4408r;
            do {
                cVar = this.f4406q;
                j7 = atomicLongFieldUpdater.get(cVar);
                if (((int) ((9223367638808264704L & j7) >> 42)) == 0) {
                    j pollBlocking = pVar.pollBlocking();
                    if (pollBlocking != null) {
                        return pollBlocking;
                    }
                    j jVar = (j) cVar2.f4416n.removeFirstOrNull();
                    return jVar == null ? b(1) : jVar;
                }
            } while (!c.f4408r.compareAndSet(cVar, j7, j7 - 4398046511104L));
            this.f4401f = coroutineScheduler$WorkerState2;
        }
        if (z6) {
            boolean z7 = nextInt(cVar2.f4411b * 2) == 0;
            if (z7 && (a8 = a()) != null) {
                return a8;
            }
            j poll = pVar.poll();
            if (poll != null) {
                return poll;
            }
            if (!z7 && (a7 = a()) != null) {
                return a7;
            }
        } else {
            j a9 = a();
            if (a9 != null) {
                return a9;
            }
        }
        return b(3);
    }

    public final int getIndexInArray() {
        return this.indexInArray;
    }

    public final Object getNextParkedWorker() {
        return this.nextParkedWorker;
    }

    public final int nextInt(int i2) {
        int i7 = this.f4404n;
        int i8 = i7 ^ (i7 << 13);
        int i9 = i8 ^ (i8 >> 17);
        int i10 = i9 ^ (i9 << 5);
        this.f4404n = i10;
        int i11 = i2 - 1;
        return (i11 & i2) == 0 ? i10 & i11 : (i10 & Log.LOG_LEVEL_OFF) % i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0002, code lost:
    
        continue;
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Y5.b.run():void");
    }

    public final void setIndexInArray(int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4406q.f4414j);
        sb.append("-worker-");
        sb.append(i2 == 0 ? "TERMINATED" : String.valueOf(i2));
        setName(sb.toString());
        this.indexInArray = i2;
    }

    public final void setNextParkedWorker(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean tryReleaseCpu(CoroutineScheduler$WorkerState coroutineScheduler$WorkerState) {
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState2 = this.f4401f;
        boolean z6 = coroutineScheduler$WorkerState2 == CoroutineScheduler$WorkerState.f17618b;
        if (z6) {
            c.f4408r.addAndGet(this.f4406q, 4398046511104L);
        }
        if (coroutineScheduler$WorkerState2 != coroutineScheduler$WorkerState) {
            this.f4401f = coroutineScheduler$WorkerState;
        }
        return z6;
    }
}
