package com.google.android.gms.internal.cast;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes2.dex */
final class zzbw implements com.google.android.gms.cast.framework.media.internal.zza {
    final /* synthetic */ zzbx zza;

    public zzbw(zzbx zzbxVar) {
        this.zza = zzbxVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void zza(Bitmap bitmap) {
        ImageView imageView;
        if (bitmap != null) {
            imageView = this.zza.zza;
            imageView.setImageBitmap(bitmap);
        }
    }
}
