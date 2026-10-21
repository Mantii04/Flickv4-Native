package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
final class zzj extends zzc {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ImagePicker f10296a;

    public /* synthetic */ zzj(ImagePicker imagePicker) {
        this.f10296a = imagePicker;
    }

    @Override // com.google.android.gms.cast.framework.media.zzd
    public final WebImage zze(MediaMetadata mediaMetadata, int i2) {
        return this.f10296a.onPickImage(mediaMetadata, i2);
    }

    @Override // com.google.android.gms.cast.framework.media.zzd
    public final WebImage zzf(MediaMetadata mediaMetadata, ImageHints imageHints) {
        return this.f10296a.onPickImage(mediaMetadata, imageHints);
    }

    @Override // com.google.android.gms.cast.framework.media.zzd
    public final IObjectWrapper zzg() {
        return ObjectWrapper.wrap(this.f10296a);
    }
}
