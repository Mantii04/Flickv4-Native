package com.bumptech.glide.load.engine;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class DecodeJob$Stage {

    /* renamed from: b, reason: collision with root package name */
    public static final DecodeJob$Stage f9228b;

    /* renamed from: e, reason: collision with root package name */
    public static final DecodeJob$Stage f9229e;

    /* renamed from: f, reason: collision with root package name */
    public static final DecodeJob$Stage f9230f;

    /* renamed from: j, reason: collision with root package name */
    public static final DecodeJob$Stage f9231j;

    /* renamed from: m, reason: collision with root package name */
    public static final DecodeJob$Stage f9232m;

    /* renamed from: n, reason: collision with root package name */
    public static final DecodeJob$Stage f9233n;

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ DecodeJob$Stage[] f9234p;

    static {
        DecodeJob$Stage decodeJob$Stage = new DecodeJob$Stage("INITIALIZE", 0);
        f9228b = decodeJob$Stage;
        DecodeJob$Stage decodeJob$Stage2 = new DecodeJob$Stage("RESOURCE_CACHE", 1);
        f9229e = decodeJob$Stage2;
        DecodeJob$Stage decodeJob$Stage3 = new DecodeJob$Stage("DATA_CACHE", 2);
        f9230f = decodeJob$Stage3;
        DecodeJob$Stage decodeJob$Stage4 = new DecodeJob$Stage("SOURCE", 3);
        f9231j = decodeJob$Stage4;
        DecodeJob$Stage decodeJob$Stage5 = new DecodeJob$Stage("ENCODE", 4);
        f9232m = decodeJob$Stage5;
        DecodeJob$Stage decodeJob$Stage6 = new DecodeJob$Stage("FINISHED", 5);
        f9233n = decodeJob$Stage6;
        f9234p = new DecodeJob$Stage[]{decodeJob$Stage, decodeJob$Stage2, decodeJob$Stage3, decodeJob$Stage4, decodeJob$Stage5, decodeJob$Stage6};
    }

    public static DecodeJob$Stage valueOf(String str) {
        return (DecodeJob$Stage) Enum.valueOf(DecodeJob$Stage.class, str);
    }

    public static DecodeJob$Stage[] values() {
        return (DecodeJob$Stage[]) f9234p.clone();
    }
}
