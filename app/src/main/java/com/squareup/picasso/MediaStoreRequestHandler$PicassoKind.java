package com.squareup.picasso;

import androidx.media3.exoplayer.RendererCapabilities;

/* loaded from: classes2.dex */
enum MediaStoreRequestHandler$PicassoKind {
    MICRO(3, 96, 96),
    MINI(1, 512, RendererCapabilities.DECODER_SUPPORT_MASK),
    FULL(2, -1, -1);


    /* renamed from: b, reason: collision with root package name */
    public final int f13402b;

    /* renamed from: e, reason: collision with root package name */
    public final int f13403e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13404f;

    MediaStoreRequestHandler$PicassoKind(int i2, int i7, int i8) {
        this.f13402b = i2;
        this.f13403e = i7;
        this.f13404f = i8;
    }
}
