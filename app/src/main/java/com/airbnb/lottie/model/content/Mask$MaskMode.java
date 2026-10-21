package com.airbnb.lottie.model.content;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Mask$MaskMode {

    /* renamed from: b, reason: collision with root package name */
    public static final Mask$MaskMode f9032b;

    /* renamed from: e, reason: collision with root package name */
    public static final Mask$MaskMode f9033e;

    /* renamed from: f, reason: collision with root package name */
    public static final Mask$MaskMode f9034f;

    /* renamed from: j, reason: collision with root package name */
    public static final Mask$MaskMode f9035j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ Mask$MaskMode[] f9036m;

    static {
        Mask$MaskMode mask$MaskMode = new Mask$MaskMode("MASK_MODE_ADD", 0);
        f9032b = mask$MaskMode;
        Mask$MaskMode mask$MaskMode2 = new Mask$MaskMode("MASK_MODE_SUBTRACT", 1);
        f9033e = mask$MaskMode2;
        Mask$MaskMode mask$MaskMode3 = new Mask$MaskMode("MASK_MODE_INTERSECT", 2);
        f9034f = mask$MaskMode3;
        Mask$MaskMode mask$MaskMode4 = new Mask$MaskMode("MASK_MODE_NONE", 3);
        f9035j = mask$MaskMode4;
        f9036m = new Mask$MaskMode[]{mask$MaskMode, mask$MaskMode2, mask$MaskMode3, mask$MaskMode4};
    }

    public static Mask$MaskMode valueOf(String str) {
        return (Mask$MaskMode) Enum.valueOf(Mask$MaskMode.class, str);
    }

    public static Mask$MaskMode[] values() {
        return (Mask$MaskMode[]) f9036m.clone();
    }
}
