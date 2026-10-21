package R5;

/* loaded from: classes2.dex */
public abstract class Y extends E {

    /* renamed from: f, reason: collision with root package name */
    public long f3165f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3166j;

    /* renamed from: m, reason: collision with root package name */
    public v5.k f3167m;

    public static /* synthetic */ void decrementUseCount$default(Y y6, boolean z6, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i2 & 1) != 0) {
            z6 = false;
        }
        y6.decrementUseCount(z6);
    }

    public static /* synthetic */ void incrementUseCount$default(Y y6, boolean z6, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i2 & 1) != 0) {
            z6 = false;
        }
        y6.incrementUseCount(z6);
    }

    public final void decrementUseCount(boolean z6) {
        long j7 = this.f3165f - (z6 ? 4294967296L : 1L);
        this.f3165f = j7;
        if (j7 <= 0 && this.f3166j) {
            shutdown();
        }
    }

    public final void dispatchUnconfined(S s6) {
        v5.k kVar = this.f3167m;
        if (kVar == null) {
            kVar = new v5.k();
            this.f3167m = kVar;
        }
        kVar.addLast(s6);
    }

    public long getNextTime() {
        v5.k kVar = this.f3167m;
        return (kVar == null || kVar.isEmpty()) ? Long.MAX_VALUE : 0L;
    }

    public final void incrementUseCount(boolean z6) {
        this.f3165f = (z6 ? 4294967296L : 1L) + this.f3165f;
        if (z6) {
            return;
        }
        this.f3166j = true;
    }

    public final boolean isUnconfinedLoopActive() {
        return this.f3165f >= 4294967296L;
    }

    public final boolean isUnconfinedQueueEmpty() {
        v5.k kVar = this.f3167m;
        if (kVar != null) {
            return kVar.isEmpty();
        }
        return true;
    }

    public abstract long processNextEvent();

    public final boolean processUnconfinedEvent() {
        S s6;
        v5.k kVar = this.f3167m;
        if (kVar == null || (s6 = (S) kVar.removeFirstOrNull()) == null) {
            return false;
        }
        s6.run();
        return true;
    }

    public boolean shouldBeProcessedFromContext() {
        return false;
    }

    public abstract void shutdown();
}
