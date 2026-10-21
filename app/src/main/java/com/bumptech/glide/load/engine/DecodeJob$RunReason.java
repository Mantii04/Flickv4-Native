package com.bumptech.glide.load.engine;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class DecodeJob$RunReason {

    /* renamed from: b, reason: collision with root package name */
    public static final DecodeJob$RunReason f9224b;

    /* renamed from: e, reason: collision with root package name */
    public static final DecodeJob$RunReason f9225e;

    /* renamed from: f, reason: collision with root package name */
    public static final DecodeJob$RunReason f9226f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ DecodeJob$RunReason[] f9227j;

    static {
        DecodeJob$RunReason decodeJob$RunReason = new DecodeJob$RunReason("INITIALIZE", 0);
        f9224b = decodeJob$RunReason;
        DecodeJob$RunReason decodeJob$RunReason2 = new DecodeJob$RunReason("SWITCH_TO_SOURCE_SERVICE", 1);
        f9225e = decodeJob$RunReason2;
        DecodeJob$RunReason decodeJob$RunReason3 = new DecodeJob$RunReason("DECODE_DATA", 2);
        f9226f = decodeJob$RunReason3;
        f9227j = new DecodeJob$RunReason[]{decodeJob$RunReason, decodeJob$RunReason2, decodeJob$RunReason3};
    }

    public static DecodeJob$RunReason valueOf(String str) {
        return (DecodeJob$RunReason) Enum.valueOf(DecodeJob$RunReason.class, str);
    }

    public static DecodeJob$RunReason[] values() {
        return (DecodeJob$RunReason[]) f9227j.clone();
    }
}
