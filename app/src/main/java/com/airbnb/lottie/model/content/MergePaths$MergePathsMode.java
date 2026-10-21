package com.airbnb.lottie.model.content;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class MergePaths$MergePathsMode {

    /* renamed from: b, reason: collision with root package name */
    public static final MergePaths$MergePathsMode f9037b;

    /* renamed from: e, reason: collision with root package name */
    public static final MergePaths$MergePathsMode f9038e;

    /* renamed from: f, reason: collision with root package name */
    public static final MergePaths$MergePathsMode f9039f;

    /* renamed from: j, reason: collision with root package name */
    public static final MergePaths$MergePathsMode f9040j;

    /* renamed from: m, reason: collision with root package name */
    public static final MergePaths$MergePathsMode f9041m;

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ MergePaths$MergePathsMode[] f9042n;

    static {
        MergePaths$MergePathsMode mergePaths$MergePathsMode = new MergePaths$MergePathsMode("MERGE", 0);
        f9037b = mergePaths$MergePathsMode;
        MergePaths$MergePathsMode mergePaths$MergePathsMode2 = new MergePaths$MergePathsMode("ADD", 1);
        f9038e = mergePaths$MergePathsMode2;
        MergePaths$MergePathsMode mergePaths$MergePathsMode3 = new MergePaths$MergePathsMode("SUBTRACT", 2);
        f9039f = mergePaths$MergePathsMode3;
        MergePaths$MergePathsMode mergePaths$MergePathsMode4 = new MergePaths$MergePathsMode("INTERSECT", 3);
        f9040j = mergePaths$MergePathsMode4;
        MergePaths$MergePathsMode mergePaths$MergePathsMode5 = new MergePaths$MergePathsMode("EXCLUDE_INTERSECTIONS", 4);
        f9041m = mergePaths$MergePathsMode5;
        f9042n = new MergePaths$MergePathsMode[]{mergePaths$MergePathsMode, mergePaths$MergePathsMode2, mergePaths$MergePathsMode3, mergePaths$MergePathsMode4, mergePaths$MergePathsMode5};
    }

    public static MergePaths$MergePathsMode forId(int i2) {
        MergePaths$MergePathsMode mergePaths$MergePathsMode = f9037b;
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? mergePaths$MergePathsMode : f9041m : f9040j : f9039f : f9038e : mergePaths$MergePathsMode;
    }

    public static MergePaths$MergePathsMode valueOf(String str) {
        return (MergePaths$MergePathsMode) Enum.valueOf(MergePaths$MergePathsMode.class, str);
    }

    public static MergePaths$MergePathsMode[] values() {
        return (MergePaths$MergePathsMode[]) f9042n.clone();
    }
}
