package com.google.android.youtube.player;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class YouTubeInitializationResult {

    /* renamed from: b, reason: collision with root package name */
    public static final YouTubeInitializationResult f12991b;

    /* renamed from: e, reason: collision with root package name */
    public static final YouTubeInitializationResult f12992e;

    /* renamed from: f, reason: collision with root package name */
    public static final YouTubeInitializationResult f12993f;

    /* renamed from: j, reason: collision with root package name */
    public static final YouTubeInitializationResult f12994j;

    /* renamed from: m, reason: collision with root package name */
    public static final YouTubeInitializationResult f12995m;

    /* renamed from: n, reason: collision with root package name */
    public static final YouTubeInitializationResult f12996n;

    /* renamed from: p, reason: collision with root package name */
    public static final YouTubeInitializationResult f12997p;

    /* renamed from: q, reason: collision with root package name */
    public static final YouTubeInitializationResult f12998q;

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ YouTubeInitializationResult[] f12999r;

    static {
        YouTubeInitializationResult youTubeInitializationResult = new YouTubeInitializationResult("SUCCESS", 0);
        f12991b = youTubeInitializationResult;
        YouTubeInitializationResult youTubeInitializationResult2 = new YouTubeInitializationResult("INTERNAL_ERROR", 1);
        f12992e = youTubeInitializationResult2;
        YouTubeInitializationResult youTubeInitializationResult3 = new YouTubeInitializationResult("UNKNOWN_ERROR", 2);
        f12993f = youTubeInitializationResult3;
        YouTubeInitializationResult youTubeInitializationResult4 = new YouTubeInitializationResult("SERVICE_MISSING", 3);
        f12994j = youTubeInitializationResult4;
        YouTubeInitializationResult youTubeInitializationResult5 = new YouTubeInitializationResult("SERVICE_VERSION_UPDATE_REQUIRED", 4);
        f12995m = youTubeInitializationResult5;
        YouTubeInitializationResult youTubeInitializationResult6 = new YouTubeInitializationResult("SERVICE_DISABLED", 5);
        f12996n = youTubeInitializationResult6;
        YouTubeInitializationResult youTubeInitializationResult7 = new YouTubeInitializationResult("SERVICE_INVALID", 6);
        f12997p = youTubeInitializationResult7;
        YouTubeInitializationResult youTubeInitializationResult8 = new YouTubeInitializationResult("ERROR_CONNECTING_TO_SERVICE", 7);
        f12998q = youTubeInitializationResult8;
        f12999r = new YouTubeInitializationResult[]{youTubeInitializationResult, youTubeInitializationResult2, youTubeInitializationResult3, youTubeInitializationResult4, youTubeInitializationResult5, youTubeInitializationResult6, youTubeInitializationResult7, youTubeInitializationResult8, new YouTubeInitializationResult("CLIENT_LIBRARY_UPDATE_REQUIRED", 8), new YouTubeInitializationResult("NETWORK_ERROR", 9), new YouTubeInitializationResult("DEVELOPER_KEY_INVALID", 10), new YouTubeInitializationResult("INVALID_APPLICATION_SIGNATURE", 11)};
    }

    public static YouTubeInitializationResult valueOf(String str) {
        return (YouTubeInitializationResult) Enum.valueOf(YouTubeInitializationResult.class, str);
    }

    public static YouTubeInitializationResult[] values() {
        return (YouTubeInitializationResult[]) f12999r.clone();
    }
}
