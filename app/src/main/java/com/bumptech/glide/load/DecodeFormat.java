package com.bumptech.glide.load;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class DecodeFormat {

    /* renamed from: b, reason: collision with root package name */
    public static final DecodeFormat f9185b;

    /* renamed from: e, reason: collision with root package name */
    public static final DecodeFormat f9186e;

    /* renamed from: f, reason: collision with root package name */
    public static final DecodeFormat f9187f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ DecodeFormat[] f9188j;

    static {
        DecodeFormat decodeFormat = new DecodeFormat("PREFER_ARGB_8888", 0);
        f9185b = decodeFormat;
        DecodeFormat decodeFormat2 = new DecodeFormat("PREFER_RGB_565", 1);
        f9186e = decodeFormat2;
        f9188j = new DecodeFormat[]{decodeFormat, decodeFormat2};
        f9187f = decodeFormat;
    }

    public static DecodeFormat valueOf(String str) {
        return (DecodeFormat) Enum.valueOf(DecodeFormat.class, str);
    }

    public static DecodeFormat[] values() {
        return (DecodeFormat[]) f9188j.clone();
    }
}
