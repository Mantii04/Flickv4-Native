package com.bumptech.glide.load.resource.bitmap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class DownsampleStrategy$SampleSizeRounding {

    /* renamed from: b, reason: collision with root package name */
    public static final DownsampleStrategy$SampleSizeRounding f9311b;

    /* renamed from: e, reason: collision with root package name */
    public static final DownsampleStrategy$SampleSizeRounding f9312e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ DownsampleStrategy$SampleSizeRounding[] f9313f;

    static {
        DownsampleStrategy$SampleSizeRounding downsampleStrategy$SampleSizeRounding = new DownsampleStrategy$SampleSizeRounding("MEMORY", 0);
        f9311b = downsampleStrategy$SampleSizeRounding;
        DownsampleStrategy$SampleSizeRounding downsampleStrategy$SampleSizeRounding2 = new DownsampleStrategy$SampleSizeRounding("QUALITY", 1);
        f9312e = downsampleStrategy$SampleSizeRounding2;
        f9313f = new DownsampleStrategy$SampleSizeRounding[]{downsampleStrategy$SampleSizeRounding, downsampleStrategy$SampleSizeRounding2};
    }

    public static DownsampleStrategy$SampleSizeRounding valueOf(String str) {
        return (DownsampleStrategy$SampleSizeRounding) Enum.valueOf(DownsampleStrategy$SampleSizeRounding.class, str);
    }

    public static DownsampleStrategy$SampleSizeRounding[] values() {
        return (DownsampleStrategy$SampleSizeRounding[]) f9313f.clone();
    }
}
