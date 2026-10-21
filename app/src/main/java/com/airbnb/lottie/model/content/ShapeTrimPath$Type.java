package com.airbnb.lottie.model.content;

import A.i;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ShapeTrimPath$Type {

    /* renamed from: b, reason: collision with root package name */
    public static final ShapeTrimPath$Type f9048b;

    /* renamed from: e, reason: collision with root package name */
    public static final ShapeTrimPath$Type f9049e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ ShapeTrimPath$Type[] f9050f;

    static {
        ShapeTrimPath$Type shapeTrimPath$Type = new ShapeTrimPath$Type("SIMULTANEOUSLY", 0);
        f9048b = shapeTrimPath$Type;
        ShapeTrimPath$Type shapeTrimPath$Type2 = new ShapeTrimPath$Type("INDIVIDUALLY", 1);
        f9049e = shapeTrimPath$Type2;
        f9050f = new ShapeTrimPath$Type[]{shapeTrimPath$Type, shapeTrimPath$Type2};
    }

    public static ShapeTrimPath$Type forId(int i2) {
        if (i2 == 1) {
            return f9048b;
        }
        if (i2 == 2) {
            return f9049e;
        }
        throw new IllegalArgumentException(i.f(i2, "Unknown trim path type "));
    }

    public static ShapeTrimPath$Type valueOf(String str) {
        return (ShapeTrimPath$Type) Enum.valueOf(ShapeTrimPath$Type.class, str);
    }

    public static ShapeTrimPath$Type[] values() {
        return (ShapeTrimPath$Type[]) f9050f.clone();
    }
}
