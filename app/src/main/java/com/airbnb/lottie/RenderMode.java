package com.airbnb.lottie;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class RenderMode {

    /* renamed from: b, reason: collision with root package name */
    public static final RenderMode f9024b;

    /* renamed from: e, reason: collision with root package name */
    public static final RenderMode f9025e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ RenderMode[] f9026f;

    static {
        RenderMode renderMode = new RenderMode("AUTOMATIC", 0);
        f9024b = renderMode;
        RenderMode renderMode2 = new RenderMode("HARDWARE", 1);
        f9025e = renderMode2;
        f9026f = new RenderMode[]{renderMode, renderMode2, new RenderMode("SOFTWARE", 2)};
    }

    public static RenderMode valueOf(String str) {
        return (RenderMode) Enum.valueOf(RenderMode.class, str);
    }

    public static RenderMode[] values() {
        return (RenderMode[]) f9026f.clone();
    }
}
