package o2;

import android.graphics.Bitmap;

/* renamed from: o2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC1430d {
    void clearMemory();

    Bitmap get(int i2, int i7, Bitmap.Config config);

    Bitmap getDirty(int i2, int i7, Bitmap.Config config);

    void put(Bitmap bitmap);

    void trimMemory(int i2);
}
