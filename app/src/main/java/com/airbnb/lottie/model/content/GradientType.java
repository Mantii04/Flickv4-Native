package com.airbnb.lottie.model.content;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class GradientType {

    /* renamed from: b, reason: collision with root package name */
    public static final GradientType f9029b;

    /* renamed from: e, reason: collision with root package name */
    public static final GradientType f9030e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ GradientType[] f9031f;

    static {
        GradientType gradientType = new GradientType("LINEAR", 0);
        f9029b = gradientType;
        GradientType gradientType2 = new GradientType("RADIAL", 1);
        f9030e = gradientType2;
        f9031f = new GradientType[]{gradientType, gradientType2};
    }

    public static GradientType valueOf(String str) {
        return (GradientType) Enum.valueOf(GradientType.class, str);
    }

    public static GradientType[] values() {
        return (GradientType[]) f9031f.clone();
    }
}
