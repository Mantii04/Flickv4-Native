package com.google.android.gms.cast.framework.media.widget;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.TextView;

/* loaded from: classes.dex */
final class zzh implements com.google.android.gms.cast.framework.media.internal.zza {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f10240a;

    public zzh(ExpandedControllerActivity expandedControllerActivity) {
        this.f10240a = expandedControllerActivity;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    @TargetApi(23)
    public final void zza(Bitmap bitmap) {
        if (bitmap != null) {
            ExpandedControllerActivity expandedControllerActivity = this.f10240a;
            TextView textView = expandedControllerActivity.f10173M;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = expandedControllerActivity.f10172L;
            if (imageView != null) {
                imageView.setVisibility(0);
                expandedControllerActivity.f10172L.setImageBitmap(bitmap);
            }
        }
    }
}
