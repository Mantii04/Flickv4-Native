package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class WorkInfo$State {

    /* renamed from: b, reason: collision with root package name */
    public static final WorkInfo$State f8268b;

    /* renamed from: e, reason: collision with root package name */
    public static final WorkInfo$State f8269e;

    /* renamed from: f, reason: collision with root package name */
    public static final WorkInfo$State f8270f;

    /* renamed from: j, reason: collision with root package name */
    public static final WorkInfo$State f8271j;

    /* renamed from: m, reason: collision with root package name */
    public static final WorkInfo$State f8272m;

    /* renamed from: n, reason: collision with root package name */
    public static final WorkInfo$State f8273n;

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ WorkInfo$State[] f8274p;

    static {
        WorkInfo$State workInfo$State = new WorkInfo$State("ENQUEUED", 0);
        f8268b = workInfo$State;
        WorkInfo$State workInfo$State2 = new WorkInfo$State("RUNNING", 1);
        f8269e = workInfo$State2;
        WorkInfo$State workInfo$State3 = new WorkInfo$State("SUCCEEDED", 2);
        f8270f = workInfo$State3;
        WorkInfo$State workInfo$State4 = new WorkInfo$State("FAILED", 3);
        f8271j = workInfo$State4;
        WorkInfo$State workInfo$State5 = new WorkInfo$State("BLOCKED", 4);
        f8272m = workInfo$State5;
        WorkInfo$State workInfo$State6 = new WorkInfo$State("CANCELLED", 5);
        f8273n = workInfo$State6;
        f8274p = new WorkInfo$State[]{workInfo$State, workInfo$State2, workInfo$State3, workInfo$State4, workInfo$State5, workInfo$State6};
    }

    public static WorkInfo$State valueOf(String str) {
        return (WorkInfo$State) Enum.valueOf(WorkInfo$State.class, str);
    }

    public static WorkInfo$State[] values() {
        return (WorkInfo$State[]) f8274p.clone();
    }

    public boolean isFinished() {
        return this == f8270f || this == f8271j || this == f8273n;
    }
}
