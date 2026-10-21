package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;

/* loaded from: classes.dex */
public class ImagePicker {

    /* renamed from: a, reason: collision with root package name */
    public final zzd f9944a = new zzj(this);

    @Deprecated
    public WebImage onPickImage(MediaMetadata mediaMetadata, int i2) {
        if (mediaMetadata == null || !mediaMetadata.hasImages()) {
            return null;
        }
        return mediaMetadata.getImages().get(0);
    }

    public WebImage onPickImage(MediaMetadata mediaMetadata, ImageHints imageHints) {
        return onPickImage(mediaMetadata, imageHints.getType());
    }
}
