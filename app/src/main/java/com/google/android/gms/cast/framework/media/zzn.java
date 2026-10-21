package com.google.android.gms.cast.framework.media;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.images.WebImage;

/* loaded from: classes.dex */
final class zzn {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f10308a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f10309b;

    public zzn(WebImage webImage) {
        this.f10308a = webImage == null ? null : webImage.getUrl();
    }
}
