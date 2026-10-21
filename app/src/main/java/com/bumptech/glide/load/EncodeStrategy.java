package com.bumptech.glide.load;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class EncodeStrategy {

    /* renamed from: b, reason: collision with root package name */
    public static final EncodeStrategy f9189b;

    /* renamed from: e, reason: collision with root package name */
    public static final EncodeStrategy f9190e;

    /* renamed from: f, reason: collision with root package name */
    public static final EncodeStrategy f9191f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ EncodeStrategy[] f9192j;

    static {
        EncodeStrategy encodeStrategy = new EncodeStrategy("SOURCE", 0);
        f9189b = encodeStrategy;
        EncodeStrategy encodeStrategy2 = new EncodeStrategy("TRANSFORMED", 1);
        f9190e = encodeStrategy2;
        EncodeStrategy encodeStrategy3 = new EncodeStrategy("NONE", 2);
        f9191f = encodeStrategy3;
        f9192j = new EncodeStrategy[]{encodeStrategy, encodeStrategy2, encodeStrategy3};
    }

    public static EncodeStrategy valueOf(String str) {
        return (EncodeStrategy) Enum.valueOf(EncodeStrategy.class, str);
    }

    public static EncodeStrategy[] values() {
        return (EncodeStrategy[]) f9192j.clone();
    }
}
