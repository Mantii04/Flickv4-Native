package com.airbnb.lottie.model.layer;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Layer$LayerType {

    /* renamed from: b, reason: collision with root package name */
    public static final Layer$LayerType f9051b;

    /* renamed from: e, reason: collision with root package name */
    public static final Layer$LayerType f9052e;

    /* renamed from: f, reason: collision with root package name */
    public static final Layer$LayerType f9053f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ Layer$LayerType[] f9054j;

    static {
        Layer$LayerType layer$LayerType = new Layer$LayerType("PRE_COMP", 0);
        f9051b = layer$LayerType;
        Layer$LayerType layer$LayerType2 = new Layer$LayerType("SOLID", 1);
        Layer$LayerType layer$LayerType3 = new Layer$LayerType("IMAGE", 2);
        f9052e = layer$LayerType3;
        Layer$LayerType layer$LayerType4 = new Layer$LayerType("NULL", 3);
        Layer$LayerType layer$LayerType5 = new Layer$LayerType("SHAPE", 4);
        Layer$LayerType layer$LayerType6 = new Layer$LayerType("TEXT", 5);
        Layer$LayerType layer$LayerType7 = new Layer$LayerType("UNKNOWN", 6);
        f9053f = layer$LayerType7;
        f9054j = new Layer$LayerType[]{layer$LayerType, layer$LayerType2, layer$LayerType3, layer$LayerType4, layer$LayerType5, layer$LayerType6, layer$LayerType7};
    }

    public static Layer$LayerType valueOf(String str) {
        return (Layer$LayerType) Enum.valueOf(Layer$LayerType.class, str);
    }

    public static Layer$LayerType[] values() {
        return (Layer$LayerType[]) f9054j.clone();
    }
}
