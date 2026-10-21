package androidx.constraintlayout.core;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class SolverVariable$Type {

    /* renamed from: b, reason: collision with root package name */
    public static final SolverVariable$Type f5225b;

    /* renamed from: e, reason: collision with root package name */
    public static final SolverVariable$Type f5226e;

    /* renamed from: f, reason: collision with root package name */
    public static final SolverVariable$Type f5227f;

    /* renamed from: j, reason: collision with root package name */
    public static final SolverVariable$Type f5228j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ SolverVariable$Type[] f5229m;

    static {
        SolverVariable$Type solverVariable$Type = new SolverVariable$Type("UNRESTRICTED", 0);
        f5225b = solverVariable$Type;
        SolverVariable$Type solverVariable$Type2 = new SolverVariable$Type("CONSTANT", 1);
        SolverVariable$Type solverVariable$Type3 = new SolverVariable$Type("SLACK", 2);
        f5226e = solverVariable$Type3;
        SolverVariable$Type solverVariable$Type4 = new SolverVariable$Type("ERROR", 3);
        f5227f = solverVariable$Type4;
        SolverVariable$Type solverVariable$Type5 = new SolverVariable$Type("UNKNOWN", 4);
        f5228j = solverVariable$Type5;
        f5229m = new SolverVariable$Type[]{solverVariable$Type, solverVariable$Type2, solverVariable$Type3, solverVariable$Type4, solverVariable$Type5};
    }

    public static SolverVariable$Type valueOf(String str) {
        return (SolverVariable$Type) Enum.valueOf(SolverVariable$Type.class, str);
    }

    public static SolverVariable$Type[] values() {
        return (SolverVariable$Type[]) f5229m.clone();
    }
}
