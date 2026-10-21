package androidx.constraintlayout.core.widgets;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ConstraintAnchor$Type {

    /* renamed from: b, reason: collision with root package name */
    public static final ConstraintAnchor$Type f5230b;

    /* renamed from: e, reason: collision with root package name */
    public static final ConstraintAnchor$Type f5231e;

    /* renamed from: f, reason: collision with root package name */
    public static final ConstraintAnchor$Type f5232f;

    /* renamed from: j, reason: collision with root package name */
    public static final ConstraintAnchor$Type f5233j;

    /* renamed from: m, reason: collision with root package name */
    public static final ConstraintAnchor$Type f5234m;

    /* renamed from: n, reason: collision with root package name */
    public static final ConstraintAnchor$Type f5235n;

    /* renamed from: p, reason: collision with root package name */
    public static final ConstraintAnchor$Type f5236p;

    /* renamed from: q, reason: collision with root package name */
    public static final ConstraintAnchor$Type f5237q;

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ ConstraintAnchor$Type[] f5238r;

    /* JADX INFO: Fake field, exist only in values array */
    ConstraintAnchor$Type EF9;

    static {
        ConstraintAnchor$Type constraintAnchor$Type = new ConstraintAnchor$Type("NONE", 0);
        ConstraintAnchor$Type constraintAnchor$Type2 = new ConstraintAnchor$Type("LEFT", 1);
        f5230b = constraintAnchor$Type2;
        ConstraintAnchor$Type constraintAnchor$Type3 = new ConstraintAnchor$Type("TOP", 2);
        f5231e = constraintAnchor$Type3;
        ConstraintAnchor$Type constraintAnchor$Type4 = new ConstraintAnchor$Type("RIGHT", 3);
        f5232f = constraintAnchor$Type4;
        ConstraintAnchor$Type constraintAnchor$Type5 = new ConstraintAnchor$Type("BOTTOM", 4);
        f5233j = constraintAnchor$Type5;
        ConstraintAnchor$Type constraintAnchor$Type6 = new ConstraintAnchor$Type("BASELINE", 5);
        f5234m = constraintAnchor$Type6;
        ConstraintAnchor$Type constraintAnchor$Type7 = new ConstraintAnchor$Type("CENTER", 6);
        f5235n = constraintAnchor$Type7;
        ConstraintAnchor$Type constraintAnchor$Type8 = new ConstraintAnchor$Type("CENTER_X", 7);
        f5236p = constraintAnchor$Type8;
        ConstraintAnchor$Type constraintAnchor$Type9 = new ConstraintAnchor$Type("CENTER_Y", 8);
        f5237q = constraintAnchor$Type9;
        f5238r = new ConstraintAnchor$Type[]{constraintAnchor$Type, constraintAnchor$Type2, constraintAnchor$Type3, constraintAnchor$Type4, constraintAnchor$Type5, constraintAnchor$Type6, constraintAnchor$Type7, constraintAnchor$Type8, constraintAnchor$Type9};
    }

    public static ConstraintAnchor$Type valueOf(String str) {
        return (ConstraintAnchor$Type) Enum.valueOf(ConstraintAnchor$Type.class, str);
    }

    public static ConstraintAnchor$Type[] values() {
        return (ConstraintAnchor$Type[]) f5238r.clone();
    }
}
