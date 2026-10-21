package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.gms.cast.internal.Logger;

/* loaded from: classes.dex */
final class zzq implements zza {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzv f10093a;

    public zzq(zzv zzvVar) {
        this.f10093a = zzvVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void zza(Bitmap bitmap) {
        Logger logger = zzv.f10097v;
        Bitmap bitmap2 = null;
        if (bitmap != null) {
            int width = bitmap.getWidth();
            float f3 = width;
            int i2 = (int) (((9.0f * f3) / 16.0f) + 0.5f);
            float f7 = (i2 - r3) / 2.0f;
            RectF rectF = new RectF(0.0f, f7, f3, bitmap.getHeight() + f7);
            Bitmap.Config config = bitmap.getConfig();
            if (config == null) {
                config = Bitmap.Config.ARGB_8888;
            }
            Bitmap createBitmap = Bitmap.createBitmap(width, i2, config);
            new Canvas(createBitmap).drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
            bitmap2 = createBitmap;
        }
        this.f10093a.c(0, bitmap2);
    }
}
