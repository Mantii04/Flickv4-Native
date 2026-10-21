package androidx.lifecycle;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Lifecycle$State {

    /* renamed from: b, reason: collision with root package name */
    public static final Lifecycle$State f6967b;

    /* renamed from: e, reason: collision with root package name */
    public static final Lifecycle$State f6968e;

    /* renamed from: f, reason: collision with root package name */
    public static final Lifecycle$State f6969f;

    /* renamed from: j, reason: collision with root package name */
    public static final Lifecycle$State f6970j;

    /* renamed from: m, reason: collision with root package name */
    public static final Lifecycle$State f6971m;

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ Lifecycle$State[] f6972n;

    static {
        Lifecycle$State lifecycle$State = new Lifecycle$State("DESTROYED", 0);
        f6967b = lifecycle$State;
        Lifecycle$State lifecycle$State2 = new Lifecycle$State("INITIALIZED", 1);
        f6968e = lifecycle$State2;
        Lifecycle$State lifecycle$State3 = new Lifecycle$State("CREATED", 2);
        f6969f = lifecycle$State3;
        Lifecycle$State lifecycle$State4 = new Lifecycle$State("STARTED", 3);
        f6970j = lifecycle$State4;
        Lifecycle$State lifecycle$State5 = new Lifecycle$State("RESUMED", 4);
        f6971m = lifecycle$State5;
        f6972n = new Lifecycle$State[]{lifecycle$State, lifecycle$State2, lifecycle$State3, lifecycle$State4, lifecycle$State5};
    }

    public static Lifecycle$State valueOf(String str) {
        return (Lifecycle$State) Enum.valueOf(Lifecycle$State.class, str);
    }

    public static Lifecycle$State[] values() {
        return (Lifecycle$State[]) f6972n.clone();
    }

    public final boolean isAtLeast(Lifecycle$State state) {
        kotlin.jvm.internal.j.checkNotNullParameter(state, "state");
        return compareTo(state) >= 0;
    }
}
