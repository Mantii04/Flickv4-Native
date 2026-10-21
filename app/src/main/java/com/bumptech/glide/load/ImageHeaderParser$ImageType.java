package com.bumptech.glide.load;

import l2.AbstractC1221b;

/* loaded from: classes.dex */
public enum ImageHeaderParser$ImageType {
    GIF(true),
    JPEG(false),
    RAW(false),
    PNG_A(true),
    PNG(false),
    WEBP_A(true),
    WEBP(false),
    ANIMATED_WEBP(true),
    AVIF(true),
    ANIMATED_AVIF(true),
    UNKNOWN(false);


    /* renamed from: b, reason: collision with root package name */
    public final boolean f9193b;

    ImageHeaderParser$ImageType(boolean z6) {
        this.f9193b = z6;
    }

    public boolean hasAlpha() {
        return this.f9193b;
    }

    public boolean isWebp() {
        int i2 = AbstractC1221b.f18111a[ordinal()];
        return i2 == 1 || i2 == 2 || i2 == 3;
    }
}
