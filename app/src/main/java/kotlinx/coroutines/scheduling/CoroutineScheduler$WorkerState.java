package kotlinx.coroutines.scheduling;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class CoroutineScheduler$WorkerState {

    /* renamed from: b, reason: collision with root package name */
    public static final CoroutineScheduler$WorkerState f17618b;

    /* renamed from: e, reason: collision with root package name */
    public static final CoroutineScheduler$WorkerState f17619e;

    /* renamed from: f, reason: collision with root package name */
    public static final CoroutineScheduler$WorkerState f17620f;

    /* renamed from: j, reason: collision with root package name */
    public static final CoroutineScheduler$WorkerState f17621j;

    /* renamed from: m, reason: collision with root package name */
    public static final CoroutineScheduler$WorkerState f17622m;

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ CoroutineScheduler$WorkerState[] f17623n;

    static {
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState = new CoroutineScheduler$WorkerState("CPU_ACQUIRED", 0);
        f17618b = coroutineScheduler$WorkerState;
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState2 = new CoroutineScheduler$WorkerState("BLOCKING", 1);
        f17619e = coroutineScheduler$WorkerState2;
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState3 = new CoroutineScheduler$WorkerState("PARKING", 2);
        f17620f = coroutineScheduler$WorkerState3;
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState4 = new CoroutineScheduler$WorkerState("DORMANT", 3);
        f17621j = coroutineScheduler$WorkerState4;
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState5 = new CoroutineScheduler$WorkerState("TERMINATED", 4);
        f17622m = coroutineScheduler$WorkerState5;
        f17623n = new CoroutineScheduler$WorkerState[]{coroutineScheduler$WorkerState, coroutineScheduler$WorkerState2, coroutineScheduler$WorkerState3, coroutineScheduler$WorkerState4, coroutineScheduler$WorkerState5};
    }

    public static CoroutineScheduler$WorkerState valueOf(String str) {
        return (CoroutineScheduler$WorkerState) Enum.valueOf(CoroutineScheduler$WorkerState.class, str);
    }

    public static CoroutineScheduler$WorkerState[] values() {
        return (CoroutineScheduler$WorkerState[]) f17623n.clone();
    }
}
