package com.airbnb.lottie.model.layer;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Layer$MatteType {

    /* renamed from: b, reason: collision with root package name */
    public static final Layer$MatteType f9055b;

    /* renamed from: e, reason: collision with root package name */
    public static final Layer$MatteType f9056e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ Layer$MatteType[] f9057f;

    static {
        Layer$MatteType layer$MatteType = new Layer$MatteType("NONE", 0);
        f9055b = layer$MatteType;
        Layer$MatteType layer$MatteType2 = new Layer$MatteType("ADD", 1);
        Layer$MatteType layer$MatteType3 = new Layer$MatteType("INVERT", 2);
        f9056e = layer$MatteType3;
        f9057f = new Layer$MatteType[]{layer$MatteType, layer$MatteType2, layer$MatteType3, new Layer$MatteType("UNKNOWN", 3)};
    }

    public static Layer$MatteType valueOf(String str) {
        return (Layer$MatteType) Enum.valueOf(Layer$MatteType.class, str);
    }

    public static Layer$MatteType[] values() {
        return (Layer$MatteType[]) f9057f.clone();
    }
}
