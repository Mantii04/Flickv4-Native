package androidx.constraintlayout.core.widgets;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ConstraintWidget$DimensionBehaviour {

    /* renamed from: b, reason: collision with root package name */
    public static final ConstraintWidget$DimensionBehaviour f5239b;

    /* renamed from: e, reason: collision with root package name */
    public static final ConstraintWidget$DimensionBehaviour f5240e;

    /* renamed from: f, reason: collision with root package name */
    public static final ConstraintWidget$DimensionBehaviour f5241f;

    /* renamed from: j, reason: collision with root package name */
    public static final ConstraintWidget$DimensionBehaviour f5242j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ ConstraintWidget$DimensionBehaviour[] f5243m;

    static {
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = new ConstraintWidget$DimensionBehaviour("FIXED", 0);
        f5239b = constraintWidget$DimensionBehaviour;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = new ConstraintWidget$DimensionBehaviour("WRAP_CONTENT", 1);
        f5240e = constraintWidget$DimensionBehaviour2;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = new ConstraintWidget$DimensionBehaviour("MATCH_CONSTRAINT", 2);
        f5241f = constraintWidget$DimensionBehaviour3;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = new ConstraintWidget$DimensionBehaviour("MATCH_PARENT", 3);
        f5242j = constraintWidget$DimensionBehaviour4;
        f5243m = new ConstraintWidget$DimensionBehaviour[]{constraintWidget$DimensionBehaviour, constraintWidget$DimensionBehaviour2, constraintWidget$DimensionBehaviour3, constraintWidget$DimensionBehaviour4};
    }

    public static ConstraintWidget$DimensionBehaviour valueOf(String str) {
        return (ConstraintWidget$DimensionBehaviour) Enum.valueOf(ConstraintWidget$DimensionBehaviour.class, str);
    }

    public static ConstraintWidget$DimensionBehaviour[] values() {
        return (ConstraintWidget$DimensionBehaviour[]) f5243m.clone();
    }
}
