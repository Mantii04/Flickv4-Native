package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.internal.Asserts;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class zac implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageManager f10840b;

    public zac(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z6, CountDownLatch countDownLatch) {
        this.f10840b = imageManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Asserts.checkMainThread("OnBitmapLoadedRunnable must be executed in the main thread");
        ImageManager imageManager = this.f10840b;
        Object obj = ImageManager.f10835a;
        imageManager.getClass();
        throw null;
    }
}
