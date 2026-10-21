package com.bumptech.glide.load;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class PreferredColorSpace {

    /* renamed from: b, reason: collision with root package name */
    public static final PreferredColorSpace f9194b;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ PreferredColorSpace[] f9195e;

    /* JADX INFO: Fake field, exist only in values array */
    PreferredColorSpace EF2;

    static {
        PreferredColorSpace preferredColorSpace = new PreferredColorSpace("SRGB", 0);
        PreferredColorSpace preferredColorSpace2 = new PreferredColorSpace("DISPLAY_P3", 1);
        f9194b = preferredColorSpace2;
        f9195e = new PreferredColorSpace[]{preferredColorSpace, preferredColorSpace2};
    }

    public static PreferredColorSpace valueOf(String str) {
        return (PreferredColorSpace) Enum.valueOf(PreferredColorSpace.class, str);
    }

    public static PreferredColorSpace[] values() {
        return (PreferredColorSpace[]) f9195e.clone();
    }
}
