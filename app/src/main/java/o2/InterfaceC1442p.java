package o2;

import android.graphics.Bitmap;

/* renamed from: o2.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC1442p {
    Bitmap get(int i2, int i7, Bitmap.Config config);

    int getSize(Bitmap bitmap);

    String logBitmap(int i2, int i7, Bitmap.Config config);

    String logBitmap(Bitmap bitmap);

    Bitmap removeLast();
}
