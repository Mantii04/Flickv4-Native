package androidx.recyclerview.widget;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class RecyclerView$Adapter$StateRestorationPolicy {

    /* renamed from: b, reason: collision with root package name */
    public static final RecyclerView$Adapter$StateRestorationPolicy f8083b;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ RecyclerView$Adapter$StateRestorationPolicy[] f8084e;

    static {
        RecyclerView$Adapter$StateRestorationPolicy recyclerView$Adapter$StateRestorationPolicy = new RecyclerView$Adapter$StateRestorationPolicy("ALLOW", 0);
        f8083b = recyclerView$Adapter$StateRestorationPolicy;
        f8084e = new RecyclerView$Adapter$StateRestorationPolicy[]{recyclerView$Adapter$StateRestorationPolicy, new RecyclerView$Adapter$StateRestorationPolicy("PREVENT_WHEN_EMPTY", 1), new RecyclerView$Adapter$StateRestorationPolicy("PREVENT", 2)};
    }

    public static RecyclerView$Adapter$StateRestorationPolicy valueOf(String str) {
        return (RecyclerView$Adapter$StateRestorationPolicy) Enum.valueOf(RecyclerView$Adapter$StateRestorationPolicy.class, str);
    }

    public static RecyclerView$Adapter$StateRestorationPolicy[] values() {
        return (RecyclerView$Adapter$StateRestorationPolicy[]) f8084e.clone();
    }
}
