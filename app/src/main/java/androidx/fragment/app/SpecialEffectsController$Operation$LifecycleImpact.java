package androidx.fragment.app;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class SpecialEffectsController$Operation$LifecycleImpact {

    /* renamed from: b, reason: collision with root package name */
    public static final SpecialEffectsController$Operation$LifecycleImpact f6156b;

    /* renamed from: e, reason: collision with root package name */
    public static final SpecialEffectsController$Operation$LifecycleImpact f6157e;

    /* renamed from: f, reason: collision with root package name */
    public static final SpecialEffectsController$Operation$LifecycleImpact f6158f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ SpecialEffectsController$Operation$LifecycleImpact[] f6159j;

    static {
        SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact = new SpecialEffectsController$Operation$LifecycleImpact("NONE", 0);
        f6156b = specialEffectsController$Operation$LifecycleImpact;
        SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact2 = new SpecialEffectsController$Operation$LifecycleImpact("ADDING", 1);
        f6157e = specialEffectsController$Operation$LifecycleImpact2;
        SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact3 = new SpecialEffectsController$Operation$LifecycleImpact("REMOVING", 2);
        f6158f = specialEffectsController$Operation$LifecycleImpact3;
        f6159j = new SpecialEffectsController$Operation$LifecycleImpact[]{specialEffectsController$Operation$LifecycleImpact, specialEffectsController$Operation$LifecycleImpact2, specialEffectsController$Operation$LifecycleImpact3};
    }

    public static SpecialEffectsController$Operation$LifecycleImpact valueOf(String str) {
        return (SpecialEffectsController$Operation$LifecycleImpact) Enum.valueOf(SpecialEffectsController$Operation$LifecycleImpact.class, str);
    }

    public static SpecialEffectsController$Operation$LifecycleImpact[] values() {
        return (SpecialEffectsController$Operation$LifecycleImpact[]) f6159j.clone();
    }
}
