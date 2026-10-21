package androidx.constraintlayout.core.widgets.analyzer;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class DependencyNode$Type {

    /* renamed from: b, reason: collision with root package name */
    public static final DependencyNode$Type f5244b;

    /* renamed from: e, reason: collision with root package name */
    public static final DependencyNode$Type f5245e;

    /* renamed from: f, reason: collision with root package name */
    public static final DependencyNode$Type f5246f;

    /* renamed from: j, reason: collision with root package name */
    public static final DependencyNode$Type f5247j;

    /* renamed from: m, reason: collision with root package name */
    public static final DependencyNode$Type f5248m;

    /* renamed from: n, reason: collision with root package name */
    public static final DependencyNode$Type f5249n;

    /* renamed from: p, reason: collision with root package name */
    public static final DependencyNode$Type f5250p;

    /* renamed from: q, reason: collision with root package name */
    public static final DependencyNode$Type f5251q;

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ DependencyNode$Type[] f5252r;

    static {
        DependencyNode$Type dependencyNode$Type = new DependencyNode$Type("UNKNOWN", 0);
        f5244b = dependencyNode$Type;
        DependencyNode$Type dependencyNode$Type2 = new DependencyNode$Type("HORIZONTAL_DIMENSION", 1);
        f5245e = dependencyNode$Type2;
        DependencyNode$Type dependencyNode$Type3 = new DependencyNode$Type("VERTICAL_DIMENSION", 2);
        f5246f = dependencyNode$Type3;
        DependencyNode$Type dependencyNode$Type4 = new DependencyNode$Type("LEFT", 3);
        f5247j = dependencyNode$Type4;
        DependencyNode$Type dependencyNode$Type5 = new DependencyNode$Type("RIGHT", 4);
        f5248m = dependencyNode$Type5;
        DependencyNode$Type dependencyNode$Type6 = new DependencyNode$Type("TOP", 5);
        f5249n = dependencyNode$Type6;
        DependencyNode$Type dependencyNode$Type7 = new DependencyNode$Type("BOTTOM", 6);
        f5250p = dependencyNode$Type7;
        DependencyNode$Type dependencyNode$Type8 = new DependencyNode$Type("BASELINE", 7);
        f5251q = dependencyNode$Type8;
        f5252r = new DependencyNode$Type[]{dependencyNode$Type, dependencyNode$Type2, dependencyNode$Type3, dependencyNode$Type4, dependencyNode$Type5, dependencyNode$Type6, dependencyNode$Type7, dependencyNode$Type8};
    }

    public static DependencyNode$Type valueOf(String str) {
        return (DependencyNode$Type) Enum.valueOf(DependencyNode$Type.class, str);
    }

    public static DependencyNode$Type[] values() {
        return (DependencyNode$Type[]) f5252r.clone();
    }
}
